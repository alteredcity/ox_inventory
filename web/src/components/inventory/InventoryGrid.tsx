import React, { useEffect, useMemo, useRef, useState } from 'react';
import { Inventory, Slot } from '../../typings';
import InventorySlot from './InventorySlot';
import { getCategory, getItemLabel, getTotalWeight, isSlotWithItem } from '../../helpers';
import { useAppSelector } from '../../store';
import type { SortMode } from '../../typings/ui';
import { setPrefs } from '../../store/ui';
import { useAppDispatch } from '../../store';
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

const SORT_MODES: { id: SortMode; label: string; icon: string }[] = [
  { id: 'slot', label: 'Ordre des emplacements', icon: 'fa-solid fa-table-cells' },
  { id: 'category', label: 'Trier par categorie', icon: 'fa-solid fa-layer-group' },
  { id: 'name', label: 'Trier par nom', icon: 'fa-solid fa-arrow-down-a-z' },
  { id: 'weight', label: 'Trier par poids', icon: 'fa-solid fa-weight-hanging' },
];

/** Texte cherchable d'un objet : libelle, nom interne, categorie et valeurs simples des metadonnees (serie, proprietaire...). */
const searchText = (item: Slot, categoryLabel: string) => {
  const meta = item.metadata
    ? Object.values(item.metadata)
        .filter((v) => typeof v === 'string' || typeof v === 'number')
        .join(' ')
    : '';

  return `${getItemLabel(item)} ${item.name || ''} ${categoryLabel} ${meta}`.toLowerCase();
};

const fmtKg = (grams: number) => (grams / 1000).toLocaleString('fr-FR', { maximumFractionDigits: 2 });

const InventoryGrid: React.FC<Props> = ({ inventory, variant, children }) => {
  const dispatch = useAppDispatch();
  const isBusy = useAppSelector((state) => state.inventory.isBusy);
  const categories = useAppSelector((state) => state.ui.categories);
  const natural = useAppSelector(selectIconTheme) === 'natural';
  const [tab, setTab] = useState('all');
  const [query, setQuery] = useState('');
  // Compteur de changements d'onglet : remonte la grille pour rejouer l'animation d'entree (pas a l'ouverture).
  const [tabChanges, setTabChanges] = useState(0);
  const { cols, rows } = useFit();
  const sort = useAppSelector((state) => state.ui.prefs.sort);
  const favorites = useAppSelector((state) => state.ui.prefs.favorites);
  const searchRef = useRef<HTMLInputElement>(null);
  const isPlayer = variant === 'player';
  const tabs = isPlayer ? categories : categories.slice(0, 1);

  // Objets recus depuis la derniere vue : repere discret sur le slot, retire apres quelques secondes.
  const seen = useRef<Map<number, string> | null>(null);
  const [fresh, setFresh] = useState<Set<number>>(new Set());

  useEffect(() => {
    if (!isPlayer) return;

    const now = new Map<number, string>();
    inventory.items.forEach((item) => {
      if (isSlotWithItem(item)) now.set(item.slot, `${item.name}:${item.count}`);
    });

    const before = seen.current;
    seen.current = now;
    if (!before) return;

    const added = new Set<number>();
    now.forEach((sig, slot) => {
      const prev = before.get(slot);
      if (prev === undefined) return added.add(slot);
      const [name, count] = [sig.split(':')[0], Number(sig.split(':')[1])];
      if (prev.split(':')[0] !== name || Number(prev.split(':')[1]) < count) added.add(slot);
    });
    if (added.size === 0) return;

    setFresh((old) => new Set([...old, ...added]));
    const timer = window.setTimeout(() => setFresh((old) => new Set([...old].filter((s) => !added.has(s)))), 6000);

    return () => window.clearTimeout(timer);
  }, [inventory.items, isPlayer]);

  // Raccourcis : Tab = categorie suivante, / = recherche
  useEffect(() => {
    if (!isPlayer) return;

    const onKey = (e: KeyboardEvent) => {
      const typing = (e.target as HTMLElement | null)?.tagName === 'INPUT';

      if (e.key === '/' && !typing) {
        e.preventDefault();
        searchRef.current?.focus();
      } else if (e.key === 'Tab' && !e.ctrlKey && !e.altKey) {
        e.preventDefault();
        if (typing) searchRef.current?.blur();
        const i = tabs.findIndex((t) => t.id === tab);
        const next = tabs[(i + (e.shiftKey ? tabs.length - 1 : 1)) % tabs.length];
        if (next) {
          setTab(next.id);
          setTabChanges((n) => n + 1);
        }
      }
    };

    window.addEventListener('keydown', onKey);
    return () => window.removeEventListener('keydown', onKey);
  }, [isPlayer, tabs, tab]);

  const counts = useMemo(() => {
    const map: Record<string, number> = {};
    inventory.items.forEach((item) => {
      if (!isSlotWithItem(item)) return;
      const c = getCategory(item) || 'misc';
      map[c] = (map[c] || 0) + 1;
    });
    return map;
  }, [inventory.items]);

  const weight = useMemo(
    () => (inventory.maxWeight !== undefined ? Math.floor(getTotalWeight(inventory.items) * 1000) / 1000 : 0),
    [inventory.maxWeight, inventory.items]
  );

  const sorted = isPlayer && sort !== 'slot';
  const filtering = tab !== 'all' || query.trim() !== '' || sorted;

  const visible = useMemo(() => {
    if (!filtering) return inventory.items;

    const q = query.trim().toLowerCase();
    const catLabel = (item: Slot) => categories.find((c) => c.id === getCategory(item))?.label || '';
    const list = inventory.items.filter(
      (item) =>
        isSlotWithItem(item) &&
        (tab === 'all' || getCategory(item) === tab) &&
        (q === '' || searchText(item, catLabel(item)).includes(q))
    );

    if (!sorted) return list;

    const catIndex = (item: Slot) => {
      const i = categories.findIndex((c) => c.id === getCategory(item));
      return i < 0 ? categories.length : i;
    };
    const fav = (item: Slot) => (item.name && favorites.includes(item.name) ? 0 : 1);
    const byName = (x: Slot, y: Slot) => getItemLabel(x).localeCompare(getItemLabel(y), 'fr');

    return [...list].sort((x, y) => {
      if (fav(x) !== fav(y)) return fav(x) - fav(y);
      if (sort === 'weight') return (y.weight || 0) * (y.count || 1) - (x.weight || 0) * (x.count || 1) || byName(x, y);
      if (sort === 'category') return catIndex(x) - catIndex(y) || byName(x, y);
      return byName(x, y);
    });
  }, [inventory.items, filtering, tab, query, sorted, sort, favorites, categories]);

  // Avec un filtre, la grille est completee par des cases vides non interactives (pas de slot reel).
  const filler = filtering ? Math.max(0, cols * rows - visible.length) : 0;
  const title = variant === 'player' ? 'Inventaire' : getPanelTitle(inventory);
  const empty = inventory.slots === 0;
  const ratio = inventory.maxWeight ? weight / inventory.maxWeight : 0;

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
      <div className={`bar${ratio >= 0.85 ? ' high' : ratio >= 0.6 ? ' mid' : ''}`}>
        <i style={{ width: `${inventory.maxWeight ? Math.min(100, (weight / inventory.maxWeight) * 100) : 0}%` }} />
      </div>
      <div className="tools">
        {tabs.map((t) => (
          <button
            key={t.id}
            className={`tab${tab === t.id ? ' on' : ''}${isPlayer && t.id !== 'all' && !counts[t.id] ? ' none' : ''}`}
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
            {isPlayer && t.id !== 'all' && tab !== t.id && counts[t.id] > 0 && <em className="cnt">{counts[t.id]}</em>}
          </button>
        ))}
        {isPlayer && (
          <button
            className={`tab sort${sorted ? ' on' : ''}`}
            title={SORT_MODES.find((m) => m.id === sort)?.label}
            aria-label={SORT_MODES.find((m) => m.id === sort)?.label}
            onClick={() => {
              const next = SORT_MODES[(SORT_MODES.findIndex((m) => m.id === sort) + 1) % SORT_MODES.length].id;
              dispatch(setPrefs({ sort: next }));
              setTabChanges((n) => n + 1);
            }}
          >
            <b key={sort} className="ico-wrap">
              <i className={`ico-fa ${SORT_MODES.find((m) => m.id === sort)?.icon}`} aria-hidden="true" />
            </b>
          </button>
        )}
        <input
          ref={searchRef}
          className="search"
          placeholder="Rechercher  ( / )"
          value={query}
          onChange={(e) => setQuery(e.target.value)}
        />
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
                fresh={fresh.has(item.slot)}
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
