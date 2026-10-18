// Constantes de la refonte UI (maquette-inventaire-v2). Tout ce qui est "reglable" est ici.

// Mise a l'echelle : 1 rem = min(innerWidth / DESIGN_W, innerHeight / DESIGN_H), plancher MIN_REM_PX.
// 120 x 67,5 unites = 1920 x 1080 a 16 px par rem.
export const DESIGN_W = 120;
export const DESIGN_H = 67.5;
export const MIN_REM_PX = 9;

export type LayoutMode = 'ultra' | 'wide' | 'mid' | 'narrow';

export const MODE_RATIOS = { ultra: 2.2, wide: 1.65, mid: 1.45 } as const;

// Raretes decoratives. La cle est celle lue dans metadata.rarity ou Items[name].rarity.
// 'common' et toute valeur inconnue : rendu neutre.
export const RARITIES: Record<string, { label: string; cssKey: string }> = {
  uncommon: { label: 'Peu commun', cssKey: 'uncommon' },
  rare: { label: 'Rare', cssKey: 'rare' },
  epic: { label: 'Epique', cssKey: 'epic' },
  legendary: { label: 'Legendaire', cssKey: 'legendary' },
};

// Alias acceptes pour la rareté (la maquette utilise "legend").
export const RARITY_ALIASES: Record<string, string> = { legend: 'legendary', veryrare: 'epic' };

// Onglets du panneau joueur. `id` = valeur du champ `category` de l'item (data/items.lua).
// Ajouter une categorie = ajouter une ligne ici, puis `category = '<id>'` sur les items.
export const CATEGORY_TABS: { id: string; label: string; icon: string }[] = [
  { id: 'all', label: 'Tout', icon: 'M4 4h6v6H4zM14 4h6v6h-6zM4 14h6v6H4zM14 14h6v6h-6z' },
  { id: 'weapon', label: 'Armes', icon: 'M3 9h13l2-2h3v4h-3l-1 2h-5l-1 4H7l1-4H3z' },
  { id: 'food', label: 'Nourriture', icon: 'M7 3v8M5 3v5a2 2 0 0 0 4 0V3M7 11v10M16 3c-2 1-3 4-3 7h3v11' },
  { id: 'medical', label: 'Sante', icon: 'M9 3h6v6h6v6h-6v6H9v-6H3V9h6z' },
  { id: 'drugs', label: 'Drogues', icon: 'M8 4a4 4 0 0 1 4 4v8a4 4 0 0 1-8 0V8a4 4 0 0 1 4-4zM4 12h8M15 8l5 5-4 4-5-5z' },
  { id: 'tech', label: 'Tech', icon: 'M7 3h10v18H7zM11 18h2' },
  { id: 'tools', label: 'Equipement', icon: 'M14 6a4 4 0 0 0 5 5l-9 9a2 2 0 0 1-3-3l9-9a4 4 0 0 0-2-2z' },
  { id: 'material', label: 'Materiaux', icon: 'M12 3l8 4v10l-8 4-8-4V7zM12 12l8-5M12 12v9M12 12L4 7' },
  { id: 'clothing', label: 'Vetements', icon: 'M9 3l-6 4 3 4 2-1v11h8V10l2 1 3-4-6-4a3 3 0 0 1-6 0z' },
  { id: 'papers', label: 'Papiers', icon: 'M6 3h9l4 4v14H6zM14 3v5h5M9 13h6M9 17h6' },
  { id: 'misc', label: 'Divers', icon: 'M5 12h.01M12 12h.01M19 12h.01' },
];

// Titre du panneau de droite d'apres le type de l'inventaire (cote Lua : modules/inventory/server.lua).
export const RIGHT_PANEL_TITLES: Record<string, string> = {
  drop: 'Sol',
  newdrop: 'Sol',
  temp: 'Sol',
  stash: 'Coffre',
  container: 'Coffre',
  trunk: 'Vehicule',
  glovebox: 'Vehicule',
  shop: 'Boutique',
  crafting: 'Craft',
  policeevidence: 'Preuves',
  dumpster: 'Poubelle',
  license: 'Licences',
};

// Repli quand le type est inconnu : prefixe de l'id ('drop-123', 'trunk-ABC123'...).
export const RIGHT_PANEL_ID_PREFIXES: [string, string][] = [
  ['drop', 'Sol'],
  ['trunk', 'Vehicule'],
  ['glove', 'Vehicule'],
  ['shop', 'Boutique'],
  ['craft', 'Craft'],
];

export const HOTBAR_SLOTS = 5;

// Slots d'equipement affiches par defaut, lies aux slots d'inventaire 101+ (itemclothes). Remplaces par
// l'event NUI `setEquipment` (voir web/UI_CONTRACT.md).
export const DEFAULT_EQUIPMENT = [
  { id: 'head', slot: 101, label: 'Chapeau', side: 'left' },
  { id: 'mask', slot: 102, label: 'Masque', side: 'left' },
  { id: 'glasses', slot: 103, label: 'Lunettes', side: 'left' },
  { id: 'ears', slot: 104, label: 'Oreilles', side: 'left' },
  { id: 'watch', slot: 109, label: 'Montre', side: 'left' },
  { id: 'bracelet', slot: 108, label: 'Bracelet', side: 'left' },
  { id: 'top', slot: 106, label: 'Haut', side: 'right' },
  { id: 'vest', slot: 107, label: 'Gilet', side: 'right' },
  { id: 'bag', slot: 110, label: 'Sac', side: 'right' },
  { id: 'chain', slot: 105, label: 'Chaine', side: 'right' },
  { id: 'legs', slot: 111, label: 'Pantalon', side: 'right' },
  { id: 'shoes', slot: 112, label: 'Chaussures', side: 'right' },
  { id: 'gloves', slot: 113, label: 'Gants', side: 'right' },
] as const;

// Pastilles de couleur d'accent proposees dans les reglages.
export const THEME_COLORS = ['#ff7a2b', '#3ddc84', '#ff4fd8', '#ff4d4d', '#4da3ff', '#f2f2f2'];

export const PREFS_KEY = 'ox_inventory:ui-prefs';
