// Donnees fictives du mode navigateur (`bun run start`, puis http://localhost:5173/?res=1920x1080).
// Utilisees uniquement par debugData (inactif en jeu et dans le build de production).

const svg = (emoji: string) =>
  `data:image/svg+xml;utf8,${encodeURIComponent(
    `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64"><text x="32" y="46" font-size="40" text-anchor="middle">${emoji}</text></svg>`
  )}`;

type Def = { label: string; emoji?: string; category?: string; rarity?: string; weight: number; stack?: boolean };

const defs: Record<string, Def> = {
  phone: { label: 'Telephone', emoji: '\u{1F4F1}', weight: 200, stack: false },
  water: { label: 'Eau', emoji: '\u{1F4A7}', category: 'food', weight: 500 },
  sandwich: { label: 'Sandwich', emoji: '\u{1F96A}', category: 'food', rarity: 'uncommon', weight: 200 },
  apple: { label: 'Pomme', emoji: '\u{1F34E}', category: 'food', weight: 100 },
  beer: { label: 'Biere', emoji: '\u{1F37A}', category: 'food', weight: 500 },
  WEAPON_SNSPISTOL: {
    label: 'Pistolet SNS',
    emoji: '\u{1F52B}',
    category: 'weapon',
    rarity: 'rare',
    weight: 1000,
    stack: false,
  },
  WEAPON_KNIFE: { label: 'Couteau', emoji: '\u{1F52A}', category: 'weapon', weight: 300, stack: false },
  diamond: { label: 'Diamant brut', emoji: '\u{1F48E}', rarity: 'epic', weight: 300 },
  gold_bar: { label: 'Lingot', emoji: '\u{1FA99}', rarity: 'legendary', weight: 1000 },
  leather_jacket: {
    label: 'Veste cuir',
    emoji: '\u{1F9E5}',
    category: 'clothing',
    rarity: 'rare',
    weight: 1200,
    stack: false,
  },
  jeans: { label: 'Jean', emoji: '\u{1F456}', category: 'clothing', weight: 600, stack: false },
  cap: { label: 'Casquette', emoji: '\u{1F9E2}', category: 'clothing', rarity: 'uncommon', weight: 200, stack: false },
  battery: { label: 'Batterie', emoji: '\u{1F50B}', weight: 200 },
  // Pas d'image volontairement : verifie le repli (placeholder, une seule tentative)
  mystery: { label: 'Objet sans image', weight: 100 },
};

const items: Record<string, unknown> = {};

for (const [name, d] of Object.entries(defs)) {
  items[name] = {
    name,
    label: d.label,
    stack: d.stack ?? true,
    usable: true,
    close: true,
    count: 0,
    description: `Description de **${d.label}**.`,
    category: d.category,
    rarity: d.rarity,
    image: d.emoji ? svg(d.emoji) : 'https://invalid.invalid/missing.webp',
  };
}

const slot = (n: number, name: string, count: number, extra: Record<string, unknown> = {}) => ({
  slot: n,
  name,
  count,
  weight: (defs[name]?.weight ?? 100) * count,
  metadata: {},
  ...extra,
});

const player = [
  slot(1, 'phone', 1),
  slot(2, 'water', 3, { metadata: { durability: 90 } }),
  slot(3, 'sandwich', 2, { metadata: { durability: 60 } }),
  slot(4, 'diamond', 5),
  slot(5, 'WEAPON_SNSPISTOL', 1, { metadata: { durability: 75, serial: 'ABC123' } }),
  slot(6, 'gold_bar', 1),
  slot(7, 'apple', 5, { metadata: { durability: 40 } }),
  slot(8, 'leather_jacket', 1),
  slot(9, 'jeans', 1),
  slot(10, 'cap', 1),
  slot(11, 'beer', 2),
  slot(12, 'battery', 1),
  slot(13, 'mystery', 1),
  slot(14, 'WEAPON_KNIFE', 1, { metadata: { rarity: 'epic' } }),
  slot(15, 'water', 1, {
    metadata: { rarity: 'legendary', label: 'Eau legendaire', description: 'Rarete surchargee par metadata.' },
  }),
];

export const mockEvents: { action: string; data: unknown }[] = [
  { action: 'setInventoryVisible', data: true },
  {
    action: 'init',
    data: {
      locale: {},
      items,
      imagepath: 'images',
      leftInventory: {
        id: 1,
        type: 'player',
        slots: 50,
        label: 'Dan Mayers',
        maxWeight: 50000,
        items: player,
      },
    },
  },
  {
    action: 'setupInventory',
    data: {
      leftInventory: { id: 1, type: 'player', slots: 50, label: 'Dan Mayers', maxWeight: 50000, items: player },
      rightInventory: {
        id: 'stash-test',
        type: 'stash',
        slots: 50,
        label: 'Coffre test',
        maxWeight: 100000,
        items: [slot(1, 'battery', 4), slot(2, 'beer', 6), slot(3, 'apple', 10), slot(50, 'diamond', 1)],
      },
    },
  },
  {
    action: 'setEquipment',
    data: [
      {
        id: 'head',
        label: 'Chapeau',
        side: 'left',
        item: { name: 'cap', label: 'Casquette', imageurl: svg('\u{1F9E2}'), rarity: 'uncommon' },
      },
      { id: 'mask', label: 'Masque', side: 'left' },
      { id: 'glasses', label: 'Lunettes', side: 'left' },
      { id: 'ears', label: 'Oreilles', side: 'left' },
      { id: 'watch', label: 'Montre', side: 'left' },
      { id: 'bracelet', label: 'Bracelet', side: 'left' },
      {
        id: 'top',
        label: 'Haut',
        side: 'right',
        item: { name: 'leather_jacket', imageurl: svg('\u{1F9E5}'), rarity: 'rare', durability: 80 },
      },
      { id: 'vest', label: 'Gilet', side: 'right' },
      { id: 'bag', label: 'Sac', side: 'right' },
      { id: 'chain', label: 'Chaine', side: 'right' },
      { id: 'legs', label: 'Pantalon', side: 'right', item: { name: 'jeans', imageurl: svg('\u{1F456}') } },
      { id: 'shoes', label: 'Chaussures', side: 'right' },
    ],
  },
];
