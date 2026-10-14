import React, { useState } from 'react';
import { getItemLabel, getRarity, isSlotWithItem } from '../../helpers';
import useNuiEvent from '../../hooks/useNuiEvent';
import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';
import { HOTBAR_SLOTS } from '../../config/ui';
import SlideUp from '../utils/transitions/SlideUp';
import ItemIcon from './ItemIcon';

// Hotbar affichee quelques secondes hors inventaire (event NUI `toggleHotbar`) : lecture seule.
const InventoryHotbar: React.FC = () => {
  const [hotbarVisible, setHotbarVisible] = useState(false);
  const items = useAppSelector(selectLeftInventory).items.slice(0, HOTBAR_SLOTS);

  //stupid fix for timeout
  const [handle, setHandle] = useState<ReturnType<typeof setTimeout>>();
  useNuiEvent('toggleHotbar', () => {
    if (hotbarVisible) {
      setHotbarVisible(false);
    } else {
      if (handle) clearTimeout(handle);
      setHotbarVisible(true);
      setHandle(setTimeout(() => setHotbarVisible(false), 3000));
    }
  });

  return (
    <SlideUp in={hotbarVisible}>
      <div className="hotbar-container">
        <div className="hot floating">
          {items.map((item) => (
            <div
              className={`slot compact${isSlotWithItem(item) ? '' : ' empty'}`}
              data-r={isSlotWithItem(item) ? getRarity(item) : undefined}
              key={`hotbar-${item.slot}`}
              title={isSlotWithItem(item) ? getItemLabel(item) : undefined}
            >
              <span className="k">{item.slot}</span>
              {isSlotWithItem(item) && (
                <div className="item-slot-wrapper">
                  <ItemIcon item={item} eager />
                  {item.count ? <span className="q">{item.count.toLocaleString('fr-FR')}x</span> : null}
                  {item.durability !== undefined && (
                    <span className="dur">
                      <i style={{ width: `${Math.min(100, Math.max(0, item.durability))}%` }} />
                    </span>
                  )}
                </div>
              )}
            </div>
          ))}
        </div>
      </div>
    </SlideUp>
  );
};

export default InventoryHotbar;
