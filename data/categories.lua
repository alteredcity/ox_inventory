-- Categories d'objets : onglets du panneau joueur et libelle dans la description d'un objet.
-- Fichier lu par client.lua au demarrage : un restart d'ox_inventory suffit, pas de recompilation.
--
-- Ajouter ou modifier une categorie :
--   1. une ligne ici
--   2. `category = '<id>'` sur les items concernes dans data/items.lua
--
-- id    : valeur du champ `category` de l'item ('all' = onglet sans filtre, a garder en premier)
-- label : texte affiche (onglet actif, infobulle, description de l'objet)
-- icon  : (theme 'basic') classes Font Awesome du kit charge dans web/index.html, ex. 'fa-solid fa-gun'
--         (le duotone, 'fa-duotone fa-solid fa-gun', n'est dispo que si le kit l'inclut)
-- natural : (theme 'natural') { couleur principale, couleur secondaire } du duotone, en hexa
--
-- theme : 'basic'   = icones monochromes (couleur du texte), telles que definies par `icon`
--         'natural' = icones duotone en couleurs naturelles (le style `fa-duotone` est ajoute
--                     automatiquement si `icon` n'est que `fa-solid`)
return {
	theme = 'natural',
	categories = {
		{ id = 'all', label = 'Tout', icon = 'fa-solid fa-grid-2', natural = { '#94a3b8', '#475569' } },
		{ id = 'weapon', label = 'Armes', icon = 'fa-duotone fa-solid fa-gun', natural = { '#9ca3af', '#4b5563' } },
		{ id = 'food', label = 'Nourriture', icon = 'fa-solid fa-utensils', natural = { '#f08a24', '#8a5a2b' } },
		{ id = 'medical', label = 'Sante', icon = 'fa-solid fa-kit-medical', natural = { '#ef4444', '#f3f4f6' } },
		{ id = 'drugs', label = 'Drogues', icon = 'fa-solid fa-cannabis', natural = { '#4ade80', '#166534' } },
		{ id = 'tech', label = 'Tech', icon = 'fa-solid fa-microchip', natural = { '#38bdf8', '#1e3a8a' } },
		{ id = 'tools', label = 'Equipement', icon = 'fa-solid fa-screwdriver-wrench', natural = { '#f59e0b', '#78716c' } },
		{ id = 'material', label = 'Materiaux', icon = 'fa-solid fa-cubes', natural = { '#b08968', '#6f4e37' } },
		{ id = 'clothing', label = 'Vetements', icon = 'fa-solid fa-shirt', natural = { '#818cf8', '#3730a3' } },
		{ id = 'papers', label = 'Papiers', icon = 'fa-solid fa-file-lines', natural = { '#e7d9b4', '#a8905a' } },
		{ id = 'misc', label = 'Divers', icon = 'fa-solid fa-ellipsis', natural = { '#a1a1aa', '#52525b' } },
	},
}
