import { CaseReducer, PayloadAction } from '@reduxjs/toolkit';
import { getSlotAt, getTargetInventory, itemDurability, setSlotAt } from '../helpers';
import { Inventory, InventoryType, Slot, SlotWithItem, State } from '../typings';

export const moveSlotsReducer: CaseReducer<
  State,
  PayloadAction<{
    fromSlot: SlotWithItem;
    fromType: Inventory['type'];
    toSlot: Slot;
    toType: Inventory['type'];
    count: number;
  }>
> = (state, action) => {
  const { fromSlot, fromType, toSlot, toType, count } = action.payload;
  const { sourceInventory, targetInventory } = getTargetInventory(state, fromType, toType);
  const pieceWeight = fromSlot.weight / fromSlot.count;
  const curTime = Math.floor(Date.now() / 1000);
  const fromItem = getSlotAt(sourceInventory, fromSlot.slot) as SlotWithItem;

  setSlotAt(targetInventory, toSlot.slot, {
    ...fromItem,
    count: count,
    weight: pieceWeight * count,
    slot: toSlot.slot,
    durability: itemDurability(fromItem.metadata, curTime),
  });

  if (fromType === InventoryType.SHOP || fromType === InventoryType.CRAFTING) return;

  setSlotAt(
    sourceInventory,
    fromSlot.slot,
    fromSlot.count - count > 0
      ? {
          ...fromItem,
          count: fromSlot.count - count,
          weight: pieceWeight * (fromSlot.count - count),
        }
      : {
          slot: fromSlot.slot,
        }
  );
};
