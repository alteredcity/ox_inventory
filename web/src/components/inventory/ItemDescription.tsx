import React from 'react';
import { useAppSelector } from '../../store';
import { Items } from '../../store/items';
import { formatWeight, getCategory, getItemLabel, getRarity, isSlotWithItem } from '../../helpers';
import { getMetadataRows } from '../../helpers/slotInfo';
import { CATEGORY_TABS, RARITIES } from '../../config/ui';
import Markdown from '../utils/Markdown';
import ItemIcon from './ItemIcon';

// Panneau "description" sous la grille du joueur : affiche l'item survole (aucun clic requis).
const ItemDescription: React.FC = () => {
  const selected = useAppSelector((state) => state.ui.hovered);
  const left = useAppSelector((state) => state.inventory.leftInventory);
  const right = useAppSelector((state) => state.inventory.rightInventory);
  const additional = useAppSelector((state) => state.inventory.additionalMetadata);

  const inventory = selected ? (selected.inventory === left.type ? left : right) : undefined;
  const item = selected && inventory ? inventory.items[selected.slot - 1] : undefined;

  if (!item || !isSlotWithItem(item)) {
    return (
      <div className="desc">
        <div className="big" />
        <div>
          <p>Survolez un objet pour afficher sa description.</p>
        </div>
      </div>
    );
  }

  const rarity = getRarity(item);
  const category = getCategory(item);
  const description = item.metadata?.description || Items[item.name]?.description;
  const parts = [
    item.weight > 0 ? formatWeight(item.weight) : null,
    item.durability !== undefined ? `etat ${Math.trunc(item.durability)}%` : null,
    category ? CATEGORY_TABS.find((t) => t.id === category)?.label || category : null,
  ].filter(Boolean);

  const rows = getMetadataRows(item, additional);

  return (
    <div className="desc">
      <div className="big" data-r={rarity}>
        <ItemIcon item={item} eager />
      </div>
      <div className="desc-text">
        <h3>
          {getItemLabel(item)}
          {rarity && <span className={`tag r-${rarity}`}>{RARITIES[rarity].label}</span>}
        </h3>
        {parts.length > 0 && <p>{parts.join(' · ')}</p>}
        {description && <Markdown content={description} className="desc-markdown" />}
        {rows.length > 0 && (
          <dl className="meta">
            {rows.map((row) => (
              <div key={row.label}>
                <dt>{row.label}</dt>
                <dd>{row.value}</dd>
              </div>
            ))}
          </dl>
        )}
      </div>
    </div>
  );
};

export default ItemDescription;
