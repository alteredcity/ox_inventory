// Categories par defaut (mode navigateur et repli). En jeu, la liste vient de data/categories.lua
// (envoyee par client.lua via l'event NUI `setCategories`) : c'est ce fichier-la qu'on edite.
export type CategoryTab = { id: string; label: string; icon: string };

export const CATEGORY_TABS: CategoryTab[] = [
  { id: 'all', label: 'Tout', icon: 'fa-solid fa-grid-2' },
  { id: 'weapon', label: 'Armes', icon: 'fa-duotone fa-solid fa-gun' },
  { id: 'food', label: 'Nourriture', icon: 'fa-solid fa-utensils' },
  { id: 'medical', label: 'Sante', icon: 'fa-solid fa-kit-medical' },
  { id: 'drugs', label: 'Drogues', icon: 'fa-solid fa-cannabis' },
  { id: 'tech', label: 'Tech', icon: 'fa-solid fa-microchip' },
  { id: 'tools', label: 'Equipement', icon: 'fa-solid fa-screwdriver-wrench' },
  { id: 'material', label: 'Materiaux', icon: 'fa-solid fa-cubes' },
  { id: 'clothing', label: 'Vetements', icon: 'fa-solid fa-shirt' },
  { id: 'papers', label: 'Papiers', icon: 'fa-solid fa-file-lines' },
  { id: 'misc', label: 'Divers', icon: 'fa-solid fa-ellipsis' },
];
