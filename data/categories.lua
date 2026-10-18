-- Categories d'objets : onglets du panneau joueur et libelle dans la description d'un objet.
-- Fichier lu par client.lua au demarrage : un restart d'ox_inventory suffit, pas de recompilation.
--
-- Ajouter ou modifier une categorie :
--   1. une ligne ici
--   2. `category = '<id>'` sur les items concernes dans data/items.lua
--
-- id    : valeur du champ `category` de l'item ('all' = onglet sans filtre, a garder en premier)
-- label : texte affiche (onglet actif, infobulle, description de l'objet)
-- icon  : classes Font Awesome du kit charge dans web/index.html, ex. 'fa-solid fa-gun'
--         (le duotone, 'fa-duotone fa-solid fa-gun', n'est dispo que si le kit l'inclut)
return {
	{ id = 'all', label = 'Tout', icon = 'fa-solid fa-grid-2' },
	{ id = 'weapon', label = 'Armes', icon = 'fa-duotone fa-solid fa-gun' },
	{ id = 'food', label = 'Nourriture', icon = 'fa-solid fa-utensils' },
	{ id = 'medical', label = 'Sante', icon = 'fa-solid fa-kit-medical' },
	{ id = 'drugs', label = 'Drogues', icon = 'fa-solid fa-cannabis' },
	{ id = 'tech', label = 'Tech', icon = 'fa-solid fa-microchip' },
	{ id = 'tools', label = 'Equipement', icon = 'fa-solid fa-screwdriver-wrench' },
	{ id = 'material', label = 'Materiaux', icon = 'fa-solid fa-cubes' },
	{ id = 'clothing', label = 'Vetements', icon = 'fa-solid fa-shirt' },
	{ id = 'papers', label = 'Papiers', icon = 'fa-solid fa-file-lines' },
	{ id = 'misc', label = 'Divers', icon = 'fa-solid fa-ellipsis' },
}
