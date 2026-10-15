import InventoryComponent from './components/inventory';
import useNuiEvent from './hooks/useNuiEvent';
import { Items } from './store/items';
import { Locale } from './store/locale';
import { setImagePath } from './store/imagepath';
import { setupInventory } from './store/inventory';
import { Inventory } from './typings';
import { useAppDispatch } from './store';
import { debugData } from './utils/debugData';
import DragPreview from './components/utils/DragPreview';
import { fetchNui } from './utils/fetchNui';
import { useDragDropManager } from 'react-dnd';
import KeyPress from './components/utils/KeyPress';
import { mockEvents } from './utils/mockData';
import { useAppSelector } from './store';
import { applyPrefs } from './utils/prefs';
import { applyFit, setCompactFit } from './utils/fit';
import { useEffect, useRef } from 'react';

debugData(mockEvents, 300);

const App: React.FC = () => {
  const dispatch = useAppDispatch();
  const manager = useDragDropManager();

  useNuiEvent<{
    locale: { [key: string]: string };
    items: typeof Items;
    leftInventory: Inventory;
    imagepath: string;
  }>('init', ({ locale, items, leftInventory, imagepath }) => {
    for (const name in locale) Locale[name] = locale[name];
    for (const name in items) Items[name] = items[name];

    setImagePath(imagepath);
    dispatch(setupInventory({ leftInventory }));
  });

  const prefs = useAppSelector((state) => state.ui.prefs);

  const lastCompact = useRef(prefs.compact);

  useEffect(() => {
    const root = document.documentElement;
    let timer: ReturnType<typeof setTimeout> | undefined;

    // Changement de mode compact : l'echelle (rem) et l'espacement sont transitionnes au lieu de sauter.
    if (lastCompact.current !== prefs.compact) {
      lastCompact.current = prefs.compact;
      root.dataset.fitAnim = 'true';
      timer = setTimeout(() => delete root.dataset.fitAnim, 400);
    }

    applyPrefs(prefs);
    setCompactFit(prefs.compact);
    applyFit();

    return () => clearTimeout(timer);
  }, [prefs]);

  useEffect(() => {
    applyFit();
    window.addEventListener('resize', applyFit);

    return () => window.removeEventListener('resize', applyFit);
  }, []);

  fetchNui('uiLoaded', {});

  useNuiEvent('closeInventory', () => {
    manager.dispatch({ type: 'dnd-core/END_DRAG' });
  });

  return (
    <div className="app-wrapper">
      <InventoryComponent />
      <DragPreview />
      <KeyPress />
    </div>
  );
};

addEventListener('dragstart', function (event) {
  event.preventDefault();
});

export default App;
