import { isEnvBrowser } from './misc';
import { applyFit, setFitOverride } from './fit';

// Mode navigateur uniquement : `?res=1920x1080` simule une resolution (la page est mise a l'echelle
// pour tenir dans la fenetre, comme la barre d'outils de la maquette). Sans effet en jeu.
export const initDevStage = (root: HTMLElement) => {
  if (!isEnvBrowser()) return;

  const match = /^(\d{3,5})x(\d{3,5})$/.exec(new URLSearchParams(window.location.search).get('res') || '');

  if (!match) return;

  const w = Number(match[1]);
  const h = Number(match[2]);

  setFitOverride({ w, h });

  const place = () => {
    const k = Math.min(window.innerWidth / w, window.innerHeight / h);

    root.style.position = 'absolute';
    root.style.left = '0';
    root.style.top = '0';
    root.style.width = `${w}px`;
    root.style.height = `${h}px`;
    root.style.transformOrigin = 'top left';
    root.style.transform = `scale(${k})`;
    applyFit();
  };

  place();
  window.addEventListener('resize', place);
};
