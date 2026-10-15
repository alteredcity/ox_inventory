import { Slot } from './slot';

export enum InventoryType {
  PLAYER = 'player',
  SHOP = 'shop',
  CONTAINER = 'container',
  CRAFTING = 'crafting',
}

export type Inventory = {
  id: string;
  type: string;
  slots: number;
  items: Slot[];
  /** Slots d'equipement (vetements, numeros 101+), hors grille. Joueur uniquement. */
  equipment?: Record<number, Slot>;
  maxWeight?: number;
  label?: string;
  groups?: Record<string, number>;
};
