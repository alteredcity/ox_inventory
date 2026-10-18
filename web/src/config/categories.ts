// Categories d'objets : onglets du panneau joueur et libelle dans la description d'un objet.
//
// Pour ajouter ou modifier une categorie :
//   1. une ligne ici ({ id, label, icon })
//   2. `category = '<id>'` sur les items concernes dans data/items.lua
//   3. `npm run build` dans web/
//
// - id    : valeur du champ `category` de l'item (l'entree 'all' = onglet sans filtre, a garder en premier)
// - label : texte affiche (onglet actif, infobulle, description de l'objet)
// - icon  : classes Font Awesome du kit charge dans web/index.html, ex. 'fa-solid fa-gun'.
//           Le duotone ('fa-duotone fa-solid fa-gun') n'est dispo que si le kit l'inclut.
// - svg   : optionnel, trace SVG (viewBox 24) affiche si le kit Font Awesome ne charge pas.
export type CategoryTab = { id: string; label: string; icon: string; svg?: string };

export const CATEGORY_TABS: CategoryTab[] = [
  { id: 'all', label: 'Tout', icon: 'fa-solid fa-grid-2', svg: 'M4 4h6v6H4zM14 4h6v6h-6zM4 14h6v6H4zM14 14h6v6h-6z' },
  { id: 'weapon', label: 'Armes', icon: 'fa-solid fa-gun', svg: 'M3 9h13l2-2h3v4h-3l-1 2h-5l-1 4H7l1-4H3z' },
  { id: 'food', label: 'Nourriture', icon: 'fa-solid fa-utensils', svg: 'M7 3v8M5 3v5a2 2 0 0 0 4 0V3M7 11v10M16 3c-2 1-3 4-3 7h3v11' },
  { id: 'medical', label: 'Sante', icon: 'fa-solid fa-kit-medical', svg: 'M9 3h6v6h6v6h-6v6H9v-6H3V9h6z' },
  { id: 'drugs', label: 'Drogues', icon: 'fa-solid fa-cannabis', svg: 'M8 4a4 4 0 0 1 4 4v8a4 4 0 0 1-8 0V8a4 4 0 0 1 4-4zM4 12h8M15 8l5 5-4 4-5-5z' },
  { id: 'tech', label: 'Tech', icon: 'fa-solid fa-microchip', svg: 'M7 3h10v18H7zM11 18h2' },
  { id: 'tools', label: 'Equipement', icon: 'fa-solid fa-screwdriver-wrench', svg: 'M14 6a4 4 0 0 0 5 5l-9 9a2 2 0 0 1-3-3l9-9a4 4 0 0 0-2-2z' },
  { id: 'material', label: 'Materiaux', icon: 'fa-solid fa-cubes', svg: 'M12 3l8 4v10l-8 4-8-4V7zM12 12l8-5M12 12v9M12 12L4 7' },
  { id: 'clothing', label: 'Vetements', icon: 'fa-solid fa-shirt', svg: 'M9 3l-6 4 3 4 2-1v11h8V10l2 1 3-4-6-4a3 3 0 0 1-6 0z' },
  { id: 'papers', label: 'Papiers', icon: 'fa-solid fa-file-lines', svg: 'M6 3h9l4 4v14H6zM14 3v5h5M9 13h6M9 17h6' },
  { id: 'misc', label: 'Divers', icon: 'fa-solid fa-ellipsis', svg: 'M5 12h.01M12 12h.01M19 12h.01' },
];
