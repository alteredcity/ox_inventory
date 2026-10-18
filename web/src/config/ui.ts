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
export const CATEGORY_TABS: { id: string; label: string }[] = [
  { id: 'all', label: 'Tout' },
  { id: 'weapon', label: 'Armes' },
  { id: 'food', label: 'Nourriture' },
  { id: 'medical', label: 'Sante' },
  { id: 'drugs', label: 'Drogues' },
  { id: 'tech', label: 'Tech' },
  { id: 'tools', label: 'Equipement' },
  { id: 'material', label: 'Materiaux' },
  { id: 'clothing', label: 'Vetements' },
  { id: 'papers', label: 'Papiers' },
  { id: 'misc', label: 'Divers' },
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
