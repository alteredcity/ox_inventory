// Contrats de donnees de l'UI refondue. Documentes dans web/UI_CONTRACT.md.

/** Item affiche dans un slot d'equipement. Tous les champs sont decoratifs. */
export type EquipmentItem = {
  name: string;
  label?: string;
  /** URL absolue ou nui:// ; prioritaire sur l'image de l'item. */
  imageurl?: string;
  rarity?: string;
  /** Durabilite 0-100. */
  durability?: number;
};

export type EquipmentSlot = {
  id: string;
  /** Numero du slot d'inventaire lie (101+). Sans valeur, la case est purement decorative. */
  slot?: number;
  label: string;
  /** Texte court / emoji affiche quand le slot est vide (optionnel). */
  icon?: string;
  /** Colonne du mannequin ; sans valeur, la liste est coupee en deux. */
  side?: 'left' | 'right';
  item?: EquipmentItem | null;
};

export type Prefs = {
  accent: string;
  /** 0 a 16, en dixiemes de rem. */
  radius: number;
  compact: boolean;
  /** Affiche les notifications d'ajout/retrait d'objets (bas de l'ecran). */
  itemNotify: boolean;
};

export type SelectedSlot = { inventory: string; slot: number } | null;
