import React, { useMemo } from 'react';
import { useAppSelector } from '../../store';
import { DEFAULT_EQUIPMENT } from '../../config/ui';
import { EquipmentSlot } from '../../typings/ui';
import { isEnvBrowser } from '../../utils/misc';
import { Slot } from '../../typings';
import ItemIcon from './ItemIcon';
import { getRarity } from '../../helpers';

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
  const slot = toSlot(eq);

  return (
    <div
      className={`eq${slot ? ' full' : ''}`}
      data-r={slot ? getRarity(slot) : undefined}
      title={eq.item?.label || eq.label}
    >
      {slot ? <ItemIcon item={slot} /> : eq.icon ? <span className="eq-icon">{eq.icon}</span> : null}
      <small>{eq.label}</small>
      {slot && eq.item?.durability !== undefined && (
        <span className="dur">
          <i style={{ width: `${Math.min(100, Math.max(0, eq.item.durability))}%` }} />
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
