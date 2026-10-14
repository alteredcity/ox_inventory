import { DESIGN_H, DESIGN_W, LayoutMode, MIN_REM_PX, MODE_RATIOS } from '../config/ui';

export type Fit = { u: number; mode: LayoutMode; cols: number; rows: number };

// Taille simulee en mode navigateur (?res=LxH), voir utils/devStage.ts. null en jeu.
let overrideSize: { w: number; h: number } | null = null;

export const setFitOverride = (size: { w: number; h: number } | null) => {
  overrideSize = size;
};

export const computeFit = (w: number, h: number): Fit => {
  const u = Math.max(MIN_REM_PX, Math.min(w / DESIGN_W, h / DESIGN_H));
  const ar = w / h;
  const mode: LayoutMode =
    ar >= MODE_RATIOS.ultra ? 'ultra' : ar >= MODE_RATIOS.wide ? 'wide' : ar >= MODE_RATIOS.mid ? 'mid' : 'narrow';

  return { u, mode, cols: 5, rows: mode === 'narrow' ? 4 : 5 };
};

// Applique la mise a l'echelle : rem sur <html>, mode et nombre de colonnes en attributs / variables CSS.
const applyFitRaw = () => {
  const w = overrideSize?.w ?? window.innerWidth;
  const h = overrideSize?.h ?? window.innerHeight;

  if (!w || !h) return;

  const fit = computeFit(w, h);
  const root = document.documentElement;

  root.style.fontSize = `${fit.u}px`;
  root.dataset.mode = fit.mode;
  root.style.setProperty('--cols', String(fit.cols));
  root.style.setProperty('--rows', String(fit.rows));
};

let lastFit: Fit | null = null;
const listeners = new Set<() => void>();

// Version qui memorise le dernier resultat et previent les composants (useFit).
export const applyFit = () => {
  applyFitRaw();
  const w = overrideSize?.w ?? window.innerWidth;
  const h = overrideSize?.h ?? window.innerHeight;

  if (w && h) lastFit = computeFit(w, h);
  listeners.forEach((fn) => fn());
};

export const getFit = (): Fit => lastFit ?? computeFit(window.innerWidth || 1920, window.innerHeight || 1080);

export const subscribeFit = (fn: () => void) => {
  listeners.add(fn);

  return () => {
    listeners.delete(fn);
  };
};
