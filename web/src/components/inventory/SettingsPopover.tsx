import React from 'react';
import { useAppDispatch, useAppSelector } from '../../store';
import { selectIconTheme, selectPrefs, setPrefs } from '../../store/ui';
import { THEME_COLORS } from '../../config/ui';
import { DEFAULT_PREFS } from '../../utils/prefs';

// Personnalisation par joueur : couleur d'accent, arrondi, mode compact (localStorage, voir utils/prefs.ts).
const SettingsPopover: React.FC = () => {
  const dispatch = useAppDispatch();
  const prefs = useAppSelector(selectPrefs);
  const iconTheme = useAppSelector(selectIconTheme);

  return (
    <div className="settings" role="dialog" aria-label="Reglages">
      <div className="set-group">
        <span>Disposition</span>
        <div className="seg" role="radiogroup" aria-label="Disposition">
          <button
            className={prefs.layout === 'mannequin' ? 'on' : ''}
            role="radio"
            aria-checked={prefs.layout === 'mannequin'}
            onClick={() => dispatch(setPrefs({ layout: 'mannequin' }))}
          >
            Avec mannequin
          </button>
          <button
            className={prefs.layout === 'simple' ? 'on' : ''}
            role="radio"
            aria-checked={prefs.layout === 'simple'}
            onClick={() => dispatch(setPrefs({ layout: 'simple' }))}
          >
            Simple
          </button>
        </div>
      </div>
      <div className="set-group">
        <span>Icones</span>
        <div className="seg" role="radiogroup" aria-label="Icones">
          <button
            className={iconTheme === 'basic' ? 'on' : ''}
            role="radio"
            aria-checked={iconTheme === 'basic'}
            onClick={() => dispatch(setPrefs({ iconTheme: 'basic' }))}
          >
            GTA
          </button>
          <button
            className={iconTheme === 'natural' ? 'on' : ''}
            role="radio"
            aria-checked={iconTheme === 'natural'}
            onClick={() => dispatch(setPrefs({ iconTheme: 'natural' }))}
          >
            Realiste
          </button>
        </div>
      </div>
      <div className="set-group">
        <span>Theme</span>
        <div className="swatches">
          {THEME_COLORS.map((color) => (
            <button
              key={color}
              className={`swatch${prefs.accent.toLowerCase() === color ? ' on' : ''}`}
              style={{ background: color }}
              title={color}
              aria-label={color}
              onClick={() => dispatch(setPrefs({ accent: color }))}
            />
          ))}
          <input
            type="color"
            title="Couleur personnalisee"
            value={prefs.accent}
            onChange={(e) => dispatch(setPrefs({ accent: e.target.value }))}
          />
        </div>
      </div>
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
        <span>Infos en bas</span>
        <input
          type="checkbox"
          checked={prefs.infoBottom}
          onChange={(e) => dispatch(setPrefs({ infoBottom: e.target.checked }))}
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
      <button className="btn" onClick={() => dispatch(setPrefs({ ...DEFAULT_PREFS, favorites: prefs.favorites }))}>
        Reinitialiser
      </button>
    </div>
  );
};

export default SettingsPopover;
