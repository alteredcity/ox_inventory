import { PREFS_KEY } from '../config/ui';
import { Prefs } from '../typings/ui';

export const DEFAULT_PREFS: Prefs = { accent: '#4da3ff', radius: 8, compact: false };

// localStorage peut etre indisponible ou vide (fenetre privee, donnees effacees) : toujours avec repli.
export const loadPrefs = (): Prefs => {
  try {
    const raw = window.localStorage.getItem(PREFS_KEY);

    if (!raw) return { ...DEFAULT_PREFS };

    const data = JSON.parse(raw);
    const radius = Number(data?.radius);

    return {
      accent:
        typeof data?.accent === 'string' && /^#[0-9a-fA-F]{6}$/.test(data.accent) ? data.accent : DEFAULT_PREFS.accent,
      radius: Number.isFinite(radius) ? Math.min(16, Math.max(0, radius)) : DEFAULT_PREFS.radius,
      compact: data?.compact === true,
    };
  } catch {
    return { ...DEFAULT_PREFS };
  }
};

export const savePrefs = (prefs: Prefs) => {
  try {
    window.localStorage.setItem(PREFS_KEY, JSON.stringify(prefs));
  } catch {
    // ignore : les preferences restent valables pour la session
  }
};

export const applyPrefs = (prefs: Prefs) => {
  const root = document.documentElement;

  root.style.setProperty('--accent', prefs.accent);
  root.style.setProperty('--radius', `${prefs.radius / 10}rem`);
  root.style.setProperty('--gap', prefs.compact ? '.4rem' : '.8rem');
};
