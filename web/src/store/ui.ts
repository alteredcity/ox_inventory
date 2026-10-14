import { createSlice, PayloadAction } from '@reduxjs/toolkit';
import type { RootState } from '.';
import { EquipmentSlot, Prefs, SelectedSlot } from '../typings/ui';
import { loadPrefs, savePrefs } from '../utils/prefs';

interface UiState {
  selected: SelectedSlot;
  hovered: SelectedSlot;
  equipment: EquipmentSlot[] | null;
  prefs: Prefs;
  settingsOpen: boolean;
}

const initialState: UiState = {
  selected: null,
  hovered: null,
  equipment: null,
  prefs: loadPrefs(),
  settingsOpen: false,
};

export const uiSlice = createSlice({
  name: 'ui',
  initialState,
  reducers: {
    selectSlot(state, action: PayloadAction<SelectedSlot>) {
      state.selected = action.payload;
    },
    hoverSlot(state, action: PayloadAction<SelectedSlot>) {
      state.hovered = action.payload;
    },
    setEquipment(state, action: PayloadAction<EquipmentSlot[] | null>) {
      state.equipment = Array.isArray(action.payload) ? action.payload : null;
    },
    setPrefs(state, action: PayloadAction<Partial<Prefs>>) {
      state.prefs = { ...state.prefs, ...action.payload };
      savePrefs(state.prefs);
    },
    toggleSettings(state, action: PayloadAction<boolean | undefined>) {
      state.settingsOpen = action.payload ?? !state.settingsOpen;
    },
  },
});

export const { selectSlot, hoverSlot, setEquipment, setPrefs, toggleSettings } = uiSlice.actions;
export const selectSelected = (state: RootState) => state.ui.selected;
export const selectPrefs = (state: RootState) => state.ui.prefs;

export default uiSlice.reducer;
