import React, { useMemo } from 'react';
import { useDrag, useDrop } from 'react-dnd';
import { useAppDispatch, useAppSelector } from '../../store';
import { DEFAULT_EQUIPMENT } from '../../config/ui';
import { EquipmentSlot } from '../../typings/ui';
import { isEnvBrowser } from '../../utils/misc';
import { DragSource, InventoryType, Slot } from '../../typings';
import { onDrop } from '../../dnd/onDrop';
import { closeTooltip } from '../../store/tooltip';
import { hoverSlot, selectSlot } from '../../store/ui';
import ItemIcon from './ItemIcon';
import { getItemLabel, getItemUrl, getRarity, isSlotWithItem } from '../../helpers';

// Icones des slots vides : embarquees dans la ressource (le convar inventory:imagepath peut pointer vers un hote externe).
const equipIconUrl = (id: string) =>
  isEnvBrowser()
    ? `images/equip_${id}.png`
    : `nui://${(window as any).GetParentResourceName?.() ?? 'ox_inventory'}/web/images/equip_${id}.png`;

const toSlot = (eq: EquipmentSlot): Slot | null =>
  eq.item
    ? {
        slot: 0,
        name: eq.item.name,
        count: 1,
        weight: 0,
        metadata: { label: eq.item.label, imageurl: eq.item.imageurl, rarity: eq.item.rarity },
      }
    : null;

const EquipmentCell: React.FC<{ eq: EquipmentSlot }> = ({ eq }) => {
  const dispatch = useAppDispatch();
  const linked = useAppSelector((state) => (eq.slot ? state.inventory.leftInventory.equipment?.[eq.slot] : undefined));
  const real = linked && isSlotWithItem(linked) ? linked : null;
  const slot = real ?? toSlot(eq);

  const [{ isDragging }, drag] = useDrag<DragSource, void, { isDragging: boolean }>(
    () => ({
      type: 'SLOT',
      collect: (monitor) => ({ isDragging: monitor.isDragging() }),
      canDrag: () => !!real,
      item: () =>
        real
          ? {
              inventory: InventoryType.PLAYER,
              item: { name: real.name, slot: real.slot },
              image: `url("${getItemUrl(real) || 'none'}")`,
            }
          : null,
    }),
    [real]
  );

  const [{ isOver }, drop] = useDrop<DragSource, void, { isOver: boolean }>(
    () => ({
      accept: 'SLOT',
      collect: (monitor) => ({ isOver: monitor.isOver() && monitor.canDrop() }),
      canDrop: (source) =>
        !!eq.slot &&
        source.inventory !== InventoryType.SHOP &&
        source.inventory !== InventoryType.CRAFTING &&
        (source.inventory !== InventoryType.PLAYER || source.item.slot !== eq.slot),
      drop: (source) => {
        dispatch(closeTooltip());
        onDrop(source, { inventory: InventoryType.PLAYER, item: { slot: eq.slot as number } });
      },
    }),
    [eq.slot]
  );

  const connectRef = (element: HTMLDivElement | null) => {
    if (element) drag(drop(element));
  };

  const classes = ['eq'];
  if (slot) classes.push('full');
  if (isOver) classes.push('over');
  if (isDragging) classes.push('dragging');

  return (
    <div
      ref={connectRef}
      className={classes.join(' ')}
      data-r={slot ? getRarity(slot) : undefined}
      title={real ? getItemLabel(real) : eq.item?.label || eq.label}
      onClick={() => real && dispatch(selectSlot({ inventory: InventoryType.PLAYER, slot: real.slot }))}
      onMouseEnter={() => real && dispatch(hoverSlot({ inventory: InventoryType.PLAYER, slot: real.slot }))}
      onMouseLeave={() => real && dispatch(hoverSlot(null))}
    >
      {slot ? (
        <ItemIcon item={slot} />
      ) : eq.icon ? (
        <span className="eq-icon">{eq.icon}</span>
      ) : (
        <img
          className="eq-ph"
          src={equipIconUrl(eq.id)}
          alt=""
          draggable={false}
          onError={(e) => (e.currentTarget.style.display = 'none')}
        />
      )}
      <small>{eq.label}</small>
      {slot && (real?.durability ?? eq.item?.durability) !== undefined && (
        <span className="dur">
          <i style={{ width: `${Math.min(100, Math.max(0, (real?.durability ?? eq.item?.durability) as number))}%` }} />
        </span>
      )}
    </div>
  );
};

// Mannequin : colonnes de slots d'equipement generiques autour de l'apercu du personnage.
// Contrat de donnees : web/UI_CONTRACT.md (event NUI `setEquipment`).
const Mannequin: React.FC = () => {
  const provided = useAppSelector((state) => state.ui.equipment);

  const { left, right } = useMemo(() => {
    const list: EquipmentSlot[] = provided ?? DEFAULT_EQUIPMENT.map((e) => ({ ...e }));
    const half = Math.ceil(list.length / 2);
    const withSide = list.some((e) => e.side);

    return {
      left: withSide ? list.filter((e) => e.side === 'left') : list.slice(0, half),
      right: withSide ? list.filter((e) => e.side !== 'left') : list.slice(half),
    };
  }, [provided]);

  return (
    <div className="mannequin">
      <div className="col">
        {left.map((eq) => (
          <EquipmentCell key={eq.id} eq={eq} />
        ))}
      </div>
      <div className="ped">
        {isEnvBrowser() ? (
          <>
            Apercu du ped
            <br />
            (rendu en direct
            <br />
            derriere l'UI)
          </>
        ) : null}
      </div>
      <div className="col">
        {right.map((eq) => (
          <EquipmentCell key={eq.id} eq={eq} />
        ))}
      </div>
    </div>
  );
};

export default Mannequin;
