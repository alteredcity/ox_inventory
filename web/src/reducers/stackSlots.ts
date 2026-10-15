import { CaseReducer, PayloadAction } from '@reduxjs/toolkit';
import { getSlotAt, getTargetInventory, setSlotAt } from '../helpers';
import { Inventory, InventoryType, SlotWithItem, State } from '../typings';

export const stackSlotsReducer: CaseReducer<
  State,
  PayloadAction<{
    fromSlot: SlotWithItem;
    fromType: Inventory['type'];
    toSlot: SlotWithItem;
    toType: Inventory['type'];
    count: number;
  }>
> = (state, action) => {
  const { fromSlot, fromType, toSlot, toType, count } = action.payload;

  const { sourceInventory, targetInventory } = getTargetInventory(state, fromType, toType);

  const pieceWeight = fromSlot.weight / fromSlot.count;

  setSlotAt(targetInventory, toSlot.slot, {
    ...getSlotAt(targetInventory, toSlot.slot),
    slot: toSlot.slot,
    count: toSlot.count + count,
    weight: pieceWeight * (toSlot.count + count),
  });

  if (fromType === InventoryType.SHOP || fromType === InventoryType.CRAFTING) return;

  setSlotAt(
    sourceInventory,
    fromSlot.slot,
    fromSlot.count - count > 0
      ? {
          ...getSlotAt(sourceInventory, fromSlot.slot),
          slot: fromSlot.slot,
          count: fromSlot.count - count,
          weight: pieceWeight * (fromSlot.count - count),
        }
      : {
          slot: fromSlot.slot,
        }
  );
};
