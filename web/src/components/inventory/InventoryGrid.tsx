import React, { useMemo, useState } from 'react';
import { Inventory, Slot } from '../../typings';
import InventorySlot from './InventorySlot';
import { getCategory, getItemLabel, getTotalWeight, isSlotWithItem } from '../../helpers';
import { useAppSelector } from '../../store';
import { useFit } from '../../hooks/useFit';
import { RIGHT_PANEL_ID_PREFIXES, RIGHT_PANEL_TITLES } from '../../config/ui';
import { selectIconTheme } from '../../store/ui';

type Props = {
  inventory: Inventory;
  /** 'player' : titre "Inventaire" et onglets de categorie ; 'other' : titre derive du type, recherche seule. */
  variant: 'player' | 'other';
  children?: React.ReactNode;
};

export const getPanelTitle = (inventory: Inventory) => {
  const byType = RIGHT_PANEL_TITLES[inventory.type];

  if (byType) return byType;

  const id = String(inventory.id || '').toLowerCase();
  const byId = RIGHT_PANEL_ID_PREFIXES.find(([prefix]) => id.startsWith(prefix));

  return byId ? byId[1] : inventory.label || inventory.type || '';
};

const fmtKg = (grams: number) => (grams / 1000).toLocaleString('fr-FR', { maximumFractionDigits: 2 });

const InventoryGrid: React.FC<Props> = ({ inventory, variant, children }) => {
  const isBusy = useAppSelector((state) => state.inventory.isBusy);
  const categories = useAppSelector((state) => state.ui.categories);
  const natural = useAppSelector(selectIconTheme) === 'natural';
  const [tab, setTab] = useState('all');
  const [query, setQuery] = useState('');
  // Compteur de changements d'onglet : remonte la grille pour rejouer l'animation d'entree (pas a l'ouverture).
  const [tabChanges, setTabChanges] = useState(0);
  const { cols, rows } = useFit();

  const weight = useMemo(
    () => (inventory.maxWeight !== undefined ? Math.floor(getTotalWeight(inventory.items) * 1000) / 1000 : 0),
    [inventory.maxWeight, inventory.items]
  );

  const filtering = tab !== 'all' || query.trim() !== '';

  const visible = useMemo(() => {
    if (!filtering) return inventory.items;

    const q = query.trim().toLowerCase();

    return inventory.items.filter(
      (item) =>
        isSlotWithItem(item) &&
        (tab === 'all' || getCategory(item) === tab) &&
        (q === '' || getItemLabel(item).toLowerCase().includes(q))
    );
  }, [inventory.items, filtering, tab, query]);

  // Avec un filtre, la grille est completee par des cases vides non interactives (pas de slot reel).
  const filler = filtering ? Math.max(0, cols * rows - visible.length) : 0;
  const title = variant === 'player' ? 'Inventaire' : getPanelTitle(inventory);
  const empty = inventory.slots === 0;

  return (
    <section className="panel" style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
      <div className="head">
        <h2>{title}</h2>
        {inventory.maxWeight ? (
          <span className="weight">
            {fmtKg(weight)} / {fmtKg(inventory.maxWeight)} kg
          </span>
        ) : variant === 'other' && inventory.label ? (
          <span className="weight">{inventory.label}</span>
        ) : null}
      </div>
      <div className="bar">
        <i style={{ width: `${inventory.maxWeight ? Math.min(100, (weight / inventory.maxWeight) * 100) : 0}%` }} />
      </div>
      <div className="tools">
        {(variant === 'player' ? categories : categories.slice(0, 1)).map((t) => (
          <button
            key={t.id}
            className={`tab${tab === t.id ? ' on' : ''}`}
            title={t.label}
            aria-label={t.label}
            onClick={() => {
              if (t.id === tab) return;
              setTab(t.id);
              setTabChanges((n) => n + 1);
            }}
          >
            {/* Le kit FA remplace <i> par un <svg> hors de React : on remonte l'element a chaque changement de theme (key). */}
            <b key={natural ? 'natural' : 'basic'} className="ico-wrap">
              <i
                className={`ico-fa ${natural && t.primary && !t.icon.includes('fa-duotone') ? t.icon.replace('fa-solid', 'fa-duotone fa-solid') : t.icon}`}
                style={
                  natural && t.primary
                    ? ({ '--fa-primary-color': t.primary, '--fa-secondary-color': t.secondary, '--fa-secondary-opacity': 0.85 } as React.CSSProperties)
                    : undefined
                }
                aria-hidden="true"
              />
            </b>
            {tab === t.id && <span>{t.label}</span>}
          </button>
        ))}
        <input className="search" placeholder="Rechercher" value={query} onChange={(e) => setQuery(e.target.value)} />
      </div>
      <div className="gridwrap">
        {empty ? (
          <p className="nothing">Aucun inventaire a proximite</p>
        ) : (
          <div key={tabChanges} className={`grid${tabChanges ? ' tab-anim' : ''}`}>
            {visible.map((item: Slot) => (
              <InventorySlot
                key={`${inventory.type}-${inventory.id}-${item.slot}`}
                item={item}
                inventoryType={inventory.type}
                inventoryGroups={inventory.groups}
                inventoryId={inventory.id}
              />
            ))}
            {Array.from({ length: filler }, (_, i) => (
              <div key={`filler-${i}`} className="slot empty" />
            ))}
          </div>
        )}
      </div>
      {children}
    </section>
  );
};

export default InventoryGrid;
