import { useSyncExternalStore } from 'react';
import { Fit, getFit, subscribeFit } from '../utils/fit';

let cached: Fit | null = null;

// Snapshot stable : le meme objet tant que mode / colonnes / lignes ne changent pas.
const snapshot = () => {
  const next = getFit();

  if (cached && cached.mode === next.mode && cached.cols === next.cols && cached.rows === next.rows) return cached;

  cached = next;

  return cached;
};

export const useFit = () => useSyncExternalStore(subscribeFit, snapshot);
