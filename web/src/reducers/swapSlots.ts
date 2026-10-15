import { CaseReducer, PayloadAction } from '@reduxjs/toolkit';
import { getSlotAt, getTargetInventory, itemDurability, setSlotAt } from '../helpers';
import { Inventory, SlotWithItem, State } from '../typings';

export const swapSlotsReducer: CaseReducer<
  State,
  PayloadAction<{
    fromSlot: SlotWithItem;
    fromType: Inventory['type'];
    toSlot: SlotWithItem;
    toType: Inventory['type'];
  }>
> = (state, action) => {
  const { fromSlot, fromType, toSlot, toType } = action.payload;
  const { sourceInventory, targetInventory } = getTargetInventory(state, fromType, toType);
  const curTime = Math.floor(Date.now() / 1000);

  const fromItem = getSlotAt(sourceInventory, fromSlot.slot);
  const toItem = getSlotAt(targetInventory, toSlot.slot);

  setSlotAt(sourceInventory, fromSlot.slot, {
    ...toItem,
    slot: fromSlot.slot,
    durability: itemDurability(toSlot.metadata, curTime),
  });
  setSlotAt(targetInventory, toSlot.slot, {
    ...fromItem,
    slot: toSlot.slot,
    durability: itemDurability(fromSlot.metadata, curTime),
  });
};
