export type ItemData = {
  name: string;
  label: string;
  stack: boolean;
  usable: boolean;
  close: boolean;
  count: number;
  description?: string;
  buttons?: string[];
  ammoName?: string;
  image?: string;
  // Champs decoratifs optionnels fournis par data/items.lua (voir web/UI_CONTRACT.md)
  category?: string;
  rarity?: string;
};
