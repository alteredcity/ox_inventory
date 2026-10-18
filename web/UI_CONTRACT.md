# Contrat de donnees de l'UI (refonte maquette-inventaire-v2)

L'UI affiche ces donnees, elle ne les decide pas. Aucun lien avec un systeme de vetements.

## Item (data/items.lua)

Champs optionnels, transmis a l'UI par `client.lua` (bloc `ItemData`) :

| Champ      | Role                                                                                          |
| ---------- | --------------------------------------------------------------------------------------------- |
| `category` | Onglet du panneau joueur : `weapon`, `food`, `medical`, `drugs`, `tech`, `tools`, `material`, `clothing`, `papers`, `misc` (extensible, voir `src/config/ui.ts`) |
| `rarity`   | Rarete decorative : `uncommon`, `rare`, `epic`, `legendary` ; absent ou `common` = neutre     |

- `metadata.rarity` d'un slot surcharge `rarity` de l'item.
- Les armes sans `category` sont rangees dans `weapon` si leur nom commence par `WEAPON_`.
- Images : `metadata.imageurl`, puis `metadata.image`, puis `client.image` (resolu avec `inventory:imagepath`), puis `<imagepath>/<nom>.png`. Une seule tentative de chargement par URL, puis placeholder.
- Durabilite : barre fine en bas de case, lue depuis `metadata.durability` (conversion existante `itemDurability`).

## Slots d'equipement du mannequin (event NUI `setEquipment`)

`SendNUIMessage({ action = 'setEquipment', data = { ... } })`, liste ordonnee. Sans cet event, la liste par defaut de `src/config/ui.ts` s'affiche (slots vides). `data = nil` revient a la liste par defaut.

```lua
{
  { id = 'head', label = 'Chapeau', side = 'left',   -- id unique, libelle, colonne ('left' | 'right')
    icon = 'C',                                      -- optionnel, affiche quand le slot est vide
    item = { name = 'cap', label = 'Casquette',      -- optionnel : slot vide si absent / nil
             imageurl = 'https://...', rarity = 'rare', durability = 80 } },
}
```

Champ `slot` (optionnel) : numero du slot d'inventaire lie (101+, `inventory:equipmentslots`, 13 par defaut). Une case liee lit l'item reel dans `leftInventory.items` (slot >= 101), est draggable/droppable et passe par `ox_inventory:swapItems` : le serveur (hook itemclothes) reste l'arbitre, un rejet restaure l'etat. Sans `slot`, la case est decorative (`item` seul). `setEquipment` n'est donc plus necessaire : la liste par defaut est deja liee (101 chapeau, 102 masque, 103 lunettes, 104 oreilles, 105 chaine, 106 haut, 107 gilet, 108 bracelet, 109 montre, 110 sac, 111 pantalon, 112 chaussures, 113 gants).

`left.items` doit etre envoye en tableau sequentiel (le client Lua le compacte via `getInventoryList`) pour ne pas produire un objet JSON creux.

Si aucun element n'a de `side`, la liste est coupee en deux moities.

## Panneau de droite

Titre derive de `inventory.type` (puis du prefixe de `inventory.id`) : `drop`/`newdrop` Sol, `stash`/`container` Coffre, `trunk`/`glovebox` Vehicule, `shop` Boutique, `crafting` Craft. Table dans `src/config/ui.ts`.

## Preferences joueur

Couleur d'accent, arrondi, mode compact, notifications d'objets (affichage seulement, le serveur envoie toujours) : `localStorage` (cle `ox_inventory:ui-prefs`), avec valeurs par defaut si indisponible. Repli KVP seulement si la persistance echoue en jeu.

## Mode test hors jeu

Dans `web/` : `bun run start`, puis ouvrir `http://localhost:5173/?res=1920x1080` (toute resolution `LxH` ; sans `res`, taille de la fenetre). Donnees fictives : `src/utils/mockData.ts`. Actif uniquement en mode navigateur de dev.
