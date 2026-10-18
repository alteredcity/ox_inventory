import React, { useMemo, useState } from 'react';
import { Inventory, Slot } from '../../typings';
import InventorySlot from './InventorySlot';
import { getCategory, getItemLabel, getTotalWeight, isSlotWithItem } from '../../helpers';
import { useAppSelector } from '../../store';
import { useFit } from '../../hooks/useFit';
import { RIGHT_PANEL_ID_PREFIXES, RIGHT_PANEL_TITLES } from '../../config/ui';
import { CATEGORY_TABS } from '../../config/categories';

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
        {(variant === 'player' ? CATEGORY_TABS : CATEGORY_TABS.slice(0, 1)).map((t) => (
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
            {t.svg && (
              <svg className="ico-fallback" viewBox="0 0 24 24" aria-hidden="true">
                <path d={t.svg} />
              </svg>
            )}
            <i className={`ico-fa ${t.icon}`} aria-hidden="true" />
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
