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
  { id: 'clothing', label: 'Vetements' },
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

// Slots d'equipement affiches par defaut (vides). Remplaces par l'event NUI `setEquipment`
// (voir web/UI_CONTRACT.md). Aucun lien avec un systeme de vetements.
export const DEFAULT_EQUIPMENT = [
  { id: 'head', label: 'Chapeau', side: 'left' },
  { id: 'mask', label: 'Masque', side: 'left' },
  { id: 'glasses', label: 'Lunettes', side: 'left' },
  { id: 'ears', label: 'Oreilles', side: 'left' },
  { id: 'watch', label: 'Montre', side: 'left' },
  { id: 'bracelet', label: 'Bracelet', side: 'left' },
  { id: 'top', label: 'Haut', side: 'right' },
  { id: 'vest', label: 'Gilet', side: 'right' },
  { id: 'bag', label: 'Sac', side: 'right' },
  { id: 'chain', label: 'Chaine', side: 'right' },
  { id: 'legs', label: 'Pantalon', side: 'right' },
  { id: 'shoes', label: 'Chaussures', side: 'right' },
] as const;

export const PREFS_KEY = 'ox_inventory:ui-prefs';
