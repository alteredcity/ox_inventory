import { SlotWithItem } from '../typings';
import { Items } from '../store/items';
import { Locale } from '../store/locale';

// Informations d'etat derivees des donnees deja fournies a l'UI (durability, metadata). L'UI affiche, elle ne decide pas.

export type SlotBadge = { id: string; glyph: string; title: string; tone?: 'warn' | 'bad' };

export const LOW_DURABILITY = 25;

export const getSlotBadges = (item: SlotWithItem): SlotBadge[] => {
  const badges: SlotBadge[] = [];
  const meta = item.metadata;

  if (item.durability !== undefined) {
    if (item.durability <= 0) badges.push({ id: 'dur', glyph: '!', title: 'Hors service', tone: 'bad' });
    else if (item.durability <= LOW_DURABILITY)
      badges.push({ id: 'dur', glyph: '!', title: 'Etat faible', tone: 'warn' });
  }

  if (typeof meta?.ammo === 'number')
    badges.push({ id: 'ammo', glyph: String(meta.ammo), title: `Munitions : ${meta.ammo}` });
  if (Array.isArray(meta?.components) && meta.components.length > 0)
    badges.push({ id: 'mod', glyph: '+', title: `Accessoires : ${meta.components.length}` });
  if (meta?.container) badges.push({ id: 'box', glyph: '[]', title: 'Conteneur' });

  return badges;
};

export type MetaRow = { label: string; value: string };

// Cles metadata deja affichees ailleurs (titre, image, rarete...) ou internes : jamais listees en "autres".
const HIDDEN_KEYS = new Set([
  'label',
  'imageurl',
  'image',
  'rarity',
  'description',
  'durability',
  'ammo',
  'serial',
  'components',
  'weapontint',
  'type',
  'container',
  'degrade',
  'specialAmmo',
]);

const MAX_EXTRA_ROWS = 6;
const MAX_VALUE_LENGTH = 40;

const prettyKey = (key: string) => key.replace(/[_-]+/g, ' ').replace(/^\w/, (c) => c.toUpperCase());

// Lignes structurees pour le panneau de description. `additional` = cles declarees par le serveur (displayMetadata).
export const getMetadataRows = (
  item: SlotWithItem,
  additional: Array<{ metadata: string; value: string }>
): MetaRow[] => {
  const meta = item.metadata ?? {};
  const rows: MetaRow[] = [];
  const shown = new Set<string>();

  if (meta.type) rows.push({ label: 'Type', value: String(meta.type) });
  if (item.durability !== undefined)
    rows.push({ label: Locale.ui_durability || 'Durabilite', value: `${Math.trunc(item.durability)}%` });
  if (meta.ammo !== undefined) rows.push({ label: Locale.ui_ammo || 'Munitions', value: String(meta.ammo) });

  const ammoName = Items[item.name]?.ammoName;
  if (ammoName) rows.push({ label: Locale.ammo_type || 'Type de munition', value: Items[ammoName]?.label || ammoName });
  if (meta.serial) rows.push({ label: Locale.ui_serial || 'Serie', value: String(meta.serial) });

  if (Array.isArray(meta.components) && meta.components.length > 0)
    rows.push({
      label: Locale.ui_components || 'Accessoires',
      value: meta.components.map((c: string) => Items[c]?.label || c).join(', '),
    });
  if (meta.weapontint !== undefined) rows.push({ label: Locale.ui_tint || 'Teinte', value: String(meta.weapontint) });

  for (const entry of additional) {
    const value = meta[entry.metadata];

    shown.add(entry.metadata);
    if (value !== undefined && value !== null && value !== '') rows.push({ label: entry.value, value: String(value) });
  }

  let extra = 0;

  for (const [key, value] of Object.entries(meta)) {
    if (extra >= MAX_EXTRA_ROWS) break;
    if (HIDDEN_KEYS.has(key) || shown.has(key)) continue;
    if (typeof value !== 'string' && typeof value !== 'number') continue;

    const text = String(value);

    if (!text || text.length > MAX_VALUE_LENGTH) continue;
    rows.push({ label: prettyKey(key), value: text });
    extra++;
  }

  return rows;
};
