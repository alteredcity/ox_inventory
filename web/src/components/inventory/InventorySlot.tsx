import React, { useCallback, useRef } from 'react';
import { DragSource, Inventory, InventoryType, Slot, SlotWithItem } from '../../typings';
import { useDrag, useDragDropManager, useDrop } from 'react-dnd';
import { useAppDispatch, useAppSelector } from '../../store';
import { onDrop } from '../../dnd/onDrop';
import { onBuy } from '../../dnd/onBuy';
import { Items } from '../../store/items';
import {
  canCraftItem,
  canPurchaseItem,
  formatWeight,
  getItemLabel,
  getItemUrl,
  getRarity,
  isSlotWithItem,
} from '../../helpers';
import { onUse } from '../../dnd/onUse';
import { Locale } from '../../store/locale';
import { onCraft } from '../../dnd/onCraft';
import useNuiEvent from '../../hooks/useNuiEvent';
import { ItemsPayload } from '../../reducers/refreshSlots';
import { closeTooltip, openTooltip } from '../../store/tooltip';
import { openContextMenu } from '../../store/contextMenu';
import { hoverSlot, selectSlot } from '../../store/ui';
import { HOTBAR_SLOTS } from '../../config/ui';
import { useMergeRefs } from '@floating-ui/react';
import ItemIcon from './ItemIcon';

interface SlotProps {
  inventoryId: Inventory['id'];
  inventoryType: Inventory['type'];
  inventoryGroups: Inventory['groups'];
  item: Slot;
  /** Numero de touche affiche en haut a gauche (hotbar). */
  hotkey?: number;
  /** Variante compacte : ni nom ni poids (hotbar du panneau central). */
  compact?: boolean;
}

const InventorySlot: React.ForwardRefRenderFunction<HTMLDivElement, SlotProps> = (
  { item, inventoryId, inventoryType, inventoryGroups, hotkey, compact },
  ref
) => {
  const manager = useDragDropManager();
  const dispatch = useAppDispatch();
  const timerRef = useRef<number | null>(null);
  const selected = useAppSelector(
    (state) => state.ui.selected?.inventory === inventoryType && state.ui.selected?.slot === item.slot
  );

  const canDrag = useCallback(() => {
    return canPurchaseItem(item, { type: inventoryType, groups: inventoryGroups }) && canCraftItem(item, inventoryType);
  }, [item, inventoryType, inventoryGroups]);

  const [{ isDragging }, drag] = useDrag<DragSource, void, { isDragging: boolean }>(
    () => ({
      type: 'SLOT',
      collect: (monitor) => ({
        isDragging: monitor.isDragging(),
      }),
      item: () =>
        isSlotWithItem(item, inventoryType !== InventoryType.SHOP)
          ? {
              inventory: inventoryType,
              item: {
                name: item.name,
                slot: item.slot,
              },
              image: item?.name && `url("${getItemUrl(item) || 'none'}")`,
            }
          : null,
      canDrag,
    }),
    [inventoryType, item]
  );

  const [{ isOver }, drop] = useDrop<DragSource, void, { isOver: boolean }>(
    () => ({
      accept: 'SLOT',
      collect: (monitor) => ({
        isOver: monitor.isOver(),
      }),
      drop: (source) => {
        dispatch(closeTooltip());
        switch (source.inventory) {
          case InventoryType.SHOP:
            onBuy(source, { inventory: inventoryType, item: { slot: item.slot } });
            break;
          case InventoryType.CRAFTING:
            onCraft(source, { inventory: inventoryType, item: { slot: item.slot } });
            break;
          default:
            onDrop(source, { inventory: inventoryType, item: { slot: item.slot } });
            break;
        }
      },
      canDrop: (source) =>
        (source.item.slot !== item.slot || source.inventory !== inventoryType) &&
        inventoryType !== InventoryType.SHOP &&
        inventoryType !== InventoryType.CRAFTING,
    }),
    [inventoryType, item]
  );

  useNuiEvent('refreshSlots', (data: { items?: ItemsPayload | ItemsPayload[] }) => {
    if (!isDragging && !data.items) return;
    if (!Array.isArray(data.items)) return;

    const itemSlot = data.items.find(
      (dataItem) => dataItem.item.slot === item.slot && dataItem.inventory === inventoryId
    );

    if (!itemSlot) return;

    manager.dispatch({ type: 'dnd-core/END_DRAG' });
  });

  const connectRef = (element: HTMLDivElement | null) => {
    if (!element) return;
    drag(drop(element));
  };

  const handleContext = (event: React.MouseEvent<HTMLDivElement>) => {
    event.preventDefault();
    if (inventoryType !== 'player' || !isSlotWithItem(item)) return;

    dispatch(openContextMenu({ item, coords: { x: event.clientX, y: event.clientY } }));
  };

  const handleClick = (event: React.MouseEvent<HTMLDivElement>) => {
    dispatch(closeTooltip());
    if (timerRef.current) clearTimeout(timerRef.current);
    if (isSlotWithItem(item)) dispatch(selectSlot({ inventory: inventoryType, slot: item.slot }));
    if (event.ctrlKey && isSlotWithItem(item) && inventoryType !== 'shop' && inventoryType !== 'crafting') {
      onDrop({ item: item, inventory: inventoryType });
    } else if (event.altKey && isSlotWithItem(item) && inventoryType === 'player') {
      onUse(item);
    }
  };

  const refs = useMergeRefs([connectRef, ref]);
  const hasItem = isSlotWithItem(item);
  const unavailable =
    !canPurchaseItem(item, { type: inventoryType, groups: inventoryGroups }) || !canCraftItem(item, inventoryType);
  const rarity = hasItem ? getRarity(item) : undefined;
  const key = hotkey ?? (inventoryType === InventoryType.PLAYER && item.slot <= HOTBAR_SLOTS ? item.slot : undefined);
  const classes = ['slot'];

  if (!hasItem) classes.push('empty');
  if (selected && hasItem) classes.push('sel');
  if (isOver) classes.push('over');
  if (isDragging) classes.push('dragging');
  if (unavailable) classes.push('unavailable');
  if (compact) classes.push('compact');
  if (key !== undefined) classes.push('hotkey');

  return (
    <div ref={refs} onContextMenu={handleContext} onClick={handleClick} className={classes.join(' ')} data-r={rarity}>
      {key !== undefined && <span className="k">{key}</span>}
      {hasItem && (
        <div
          className="item-slot-wrapper"
          onMouseEnter={() => {
            dispatch(hoverSlot({ inventory: inventoryType, slot: item.slot }));
            timerRef.current = window.setTimeout(() => {
              dispatch(openTooltip({ item, inventoryType }));
            }, 500) as unknown as number;
          }}
          onMouseLeave={() => {
            dispatch(hoverSlot(null));
            dispatch(closeTooltip());
            if (timerRef.current) {
              clearTimeout(timerRef.current);
              timerRef.current = null;
            }
          }}
        >
          {!compact && <span className="name">{getItemLabel(item)}</span>}
          <ItemIcon item={item} />
          {item.count ? <span className="q">{item.count.toLocaleString('fr-FR')}x</span> : null}
          {inventoryType === 'shop' && item.price !== undefined && item.price > 0 ? (
            <span className="w price">
              {item.currency && item.currency !== 'money' && item.currency !== 'black_money' ? (
                <>
                  {Items[item.currency] && (
                    <img className="cur" src={getItemUrl(item.currency)} alt="" draggable={false} />
                  )}
                  {item.price.toLocaleString('fr-FR')}
                </>
              ) : (
                <span style={{ color: item.currency === 'black_money' ? '#E74C3C' : '#2ECC71' }}>
                  {Locale.$ || '$'}
                  {item.price.toLocaleString('fr-FR')}
                </span>
              )}
            </span>
          ) : (
            !compact && item.weight > 0 && <span className="w">{formatWeight(item.weight)}</span>
          )}
          {inventoryType !== 'shop' && item.durability !== undefined && (
            <span className="dur">
              <i style={{ width: `${Math.min(100, Math.max(0, item.durability))}%` }} />
            </span>
          )}
        </div>
      )}
    </div>
  );
};

export default React.memo(React.forwardRef(InventorySlot));
