import React from 'react';
import { useAppDispatch, useAppSelector } from '../../store';
import { selectPrefs, setPrefs } from '../../store/ui';
import { DEFAULT_PREFS } from '../../utils/prefs';

// Personnalisation par joueur : couleur d'accent, arrondi, mode compact (localStorage, voir utils/prefs.ts).
const SettingsPopover: React.FC = () => {
  const dispatch = useAppDispatch();
  const prefs = useAppSelector(selectPrefs);

  return (
    <div className="settings" role="dialog" aria-label="Reglages">
      <label>
        <span>Couleur d'accent</span>
        <input type="color" value={prefs.accent} onChange={(e) => dispatch(setPrefs({ accent: e.target.value }))} />
      </label>
      <label>
        <span>Arrondi</span>
        <input
          type="range"
          min={0}
          max={16}
          value={prefs.radius}
          onChange={(e) => dispatch(setPrefs({ radius: Number(e.target.value) }))}
        />
      </label>
      <label>
        <span>Mode compact</span>
        <input
          type="checkbox"
          checked={prefs.compact}
          onChange={(e) => dispatch(setPrefs({ compact: e.target.checked }))}
        />
      </label>
      <label>
        <span>Notifications d'objets</span>
        <input
          type="checkbox"
          checked={prefs.itemNotify}
          onChange={(e) => dispatch(setPrefs({ itemNotify: e.target.checked }))}
        />
      </label>
      <button className="btn" onClick={() => dispatch(setPrefs(DEFAULT_PREFS))}>
        Reinitialiser
      </button>
    </div>
  );
};

export default SettingsPopover;
