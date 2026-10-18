import { createSlice, PayloadAction } from '@reduxjs/toolkit';
import type { RootState } from '.';
import { EquipmentSlot, Prefs, SelectedSlot } from '../typings/ui';
import { loadPrefs, savePrefs } from '../utils/prefs';
import { CATEGORY_TABS, CategoryTab } from '../config/categories';

interface UiState {
  selected: SelectedSlot;
  hovered: SelectedSlot;
  equipment: EquipmentSlot[] | null;
  prefs: Prefs;
  settingsOpen: boolean;
  /** Categories (onglets) : defaut de config/categories.ts, remplace par data/categories.lua via `setCategories`. */
  categories: CategoryTab[];
  /** Theme d'icones par defaut du serveur (data/categories.lua), surcharge par prefs.iconTheme. */
  serverIconTheme: 'basic' | 'natural';
}

const initialState: UiState = {
  selected: null,
  hovered: null,
  equipment: null,
  prefs: loadPrefs(),
  settingsOpen: false,
  categories: CATEGORY_TABS,
  serverIconTheme: 'natural',
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
    setCategories(state, action: PayloadAction<CategoryTab[] | null>) {
      const list = Array.isArray(action.payload) ? action.payload.filter((c) => c && c.id && c.label) : [];
      state.categories = list.length > 0 ? list : CATEGORY_TABS;
    },
    setIconTheme(state, action: PayloadAction<string | null>) {
      state.serverIconTheme = action.payload === 'basic' ? 'basic' : 'natural';
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

export const { selectSlot, hoverSlot, setEquipment, setCategories, setIconTheme, setPrefs, toggleSettings } = uiSlice.actions;
export const selectSelected = (state: RootState) => state.ui.selected;
export const selectCategories = (state: RootState) => state.ui.categories;
export const selectIconTheme = (state: RootState) => state.ui.prefs.iconTheme ?? state.ui.serverIconTheme;
export const selectPrefs = (state: RootState) => state.ui.prefs;

export default uiSlice.reducer;
