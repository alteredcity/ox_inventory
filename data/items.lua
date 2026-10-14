-- PAS BESOIN DE COMMIT MON COEUR, TU CHANGES LES POIDS ET TU ENREGISTRES, C'EST TOUT JE T'AIME ♥

-- Bouton réutilisable pour renommer un objet (ajoute `buttons = { RenameButton }` sur les items concernés)
-- Logique complète (dialog + persistance) dans ls_utils, voir client/item_rename.lua et server/item_rename.lua
local RenameButton = {
	label = 'Renommer',
	action = function(slot)
		exports.ls_utils:renameItem(slot)
	end
}

return {
	----------------------------------------

	--Test

	--[[['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},]]

	----------------------------------------

	--Tablets

	["ypad"] = {
		label   = "Ypad",
		weight  = 500,
		stack   = false,
		consume = 0,
		client  = {
			export = "alt_tablets.UseItem",
			image  = 'tech/ypad.webp',
		},
	},
	["cosmic_tab"] = {
		label   = "Cosmic Ytab",
		weight  = 500,
		stack   = false,
		consume = 0,
		client  = {
			export = "alt_tablets.UseItem",
			image  = 'tech/cosmic_tab.webp',
		},
	},
	["tablet"] = {
		label   = "Tablette (ADMIN)",
		weight  = 500,
		stack   = false,
		consume = 0,
		client  = {
			export = "alt_tablets.UseItem",
			image  = 'tech/tablet.webp',
		},
	},

	--Phone

	["phone"] = {
		label = "Téléphone (ADMIN ONLY)",
		weight = 100,
		stack = false,
		rarity = "legendary",
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/phone.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["yphone"] = {
		label = "YPhone",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/yphone_black.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["yphone_natural"] = {
		label = "YPhone Natural",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/yphone_natural.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["yphone_black"] = {
		label = "YPhone Black",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/yphone_black.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["yphone_white"] = {
		label = "YPhone White",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/yphone_white.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["yphone_blue"] = {
		label = "Yphone Blue",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/yphone_blue.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["yflipphone"] = {
		label = "YFlip",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			image = 'tech/yflip_graphite.webp',
			export = "yseries.UsePhoneItem",
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["yflip_mint"] = {
		label = "YFlip Mint",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/yflip_mint.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["yflip_gold"] = {
		label = "YFlip Gold",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/yflip_gold.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["yflip_graphite"] = {
		label = "YFlip Graphite",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/yflip_graphite.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["yflip_lavender"] = {
		label = "YFlip Lavender",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/yflip_lavender.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["y24_black"] = {
		label = "Y24 Black",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/y24_black.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["y24_silver"] = {
		label = "Y24 Silver",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/y24_silver.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["y24_violet"] = {
		label = "Y24 Violet",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/y24_violet.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["y24_yellow"] = {
		label = "Y24 Yellow",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/y24_yellow.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["yfold_black"] = {
		label = "YFold Black",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/yfold_black.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},
	["yphone_fold_black"] = {
		label = "YPhone Fold Black",
		weight = 100,
		stack = false,
		consume = 0,
		client = {
			export = "yseries.UsePhoneItem",
			image = 'tech/yphone_fold_black.webp',
			remove = function()
				TriggerEvent("yseries:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yseries:phone-item-added")
			end
		}
	},

	["yboomer_black"] = {
		label = "Boomer Phone",
		weight = 100,
		stack = false,
		consume = 0,
		description = "Tant qu'il vous plait, c'est un bon téléphone, je présume...",
		client = {
			export = "yboomer-phone.UsePhoneItem",
			image = 'tech/broken_phone.webp',
			remove = function()
				TriggerEvent("yboomer:client:phone-item-removed")
			end,
			add = function()
				TriggerEvent("yboomer:client:phone-item-added")
			end
		}
	},

	----------------------------------------

	--Hopital

	['ergotrate'] = {
		label = "Ergotrate",
		description = "Vous croyez que je connais tous les médicaments ?",
		weight = 10,
		client = {
			image = 'medical/ergotrate.webp'
		}

	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		close = true,
		description =
		'Peut être utilisé directement dans l\'inventaire, arrête les saignements des blessures et augmente la santé.',
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			image = 'medical/firstaid_bandage.webp'
			--usetime = 2500,
		},
	},

	["codeine"] = {
		label = "Codéine",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'medical/codeine.webp'
		}
	},

	['bloodsample'] = {
		label = "Échantillon sanguin",
		client = {
			image = 'medical/bloodsample_1.webp'
		}
	},

	['ifak'] = {
		label = 'trousse de secours',
		weight = 200,
		close = true,
		description = 'Peut être utilisé directement dans l\'inventaire, contient une trousse de premiers secours',
		client = {
			image = 'medical/ifak.webp'
		}
	},

	['painkillers'] = {
		label = 'Antidouleurs',
		weight = 0,
		close = true,
		description = 'Peut être utilisé directement dans l\'inventaire pour réduire la douleur et le stress',
		client = {
			image = 'medical/painkillers.webp'
		}
	},

	['temporary_tourniquet'] = {
		label = 'Garrot Temporaire',
		weight = 10,
		close = true,
		description =
		'Un garrot temporaire qui peut être utilisé directement dans l\'inventaire pour arrêter le saignement',
		client = {
			image = 'medical/tourniquet.webp'
		}
	},

	['pager'] = {
		label = 'Bipeur',
		weight = 10,
		close = true,
		description = 'Utilisé pour informer le personnel médical à l\'hôpital de l\'arrivée d\'un patient',
		client = {
			image = 'tech/pager.webp'
		}
	},

	['tourniquet'] = {
		label = 'Garrot',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/tourniquet.webp'
		}
	},

	['field_dressing'] = {
		label = 'Pansement de Terrain',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/field_dressing.webp'
		}
	},

	['elastic_bandage'] = {
		label = 'Bandage Élastique',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'clothing/elastic_bandage.webp'
		}
	},

	['quick_clot'] = {
		label = 'Hémostatique Rapide',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/quick_clot.webp'
		}
	},

	['packing_bandage'] = {
		label = 'Bandage Compressif',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/packing_bandage.webp'
		}
	},

	['sewing_kit'] = {
		label = 'Kit de Couture',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/sewing_kit.webp'
		}
	},

	['epinephrine'] = {
		label = 'Épinéphrine',
		weight = 10,
		close = true,
		description =
		'L\'épinéphrine, également connue sous le nom d\'adrénaline, augmente le pouls du corps et supprime la douleur.',
		client = {
			image = 'general/epinephrine.webp'
		}
	},

	['morphine'] = {
		label = 'Morphine',
		weight = 10,
		close = true,
		description = 'La morphine diminue le pouls du corps et supprime la douleur',
		client = {
			image = 'medical/morphine.webp'
		}

	},

	['blood250ml'] = {
		label = 'Poche de Sang 250ml',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/bloodbag_1.webp'
		}
	},

	['blood500ml'] = {
		label = 'Poche de Sang 500ml',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/bloodbag.webp'
		}
	},

	['saline250ml'] = {
		label = 'Solution Saline 250ml',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/saline250ml.webp'
		}
	},

	['saline500ml'] = {
		label = 'Solution Saline 500ml',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/salinebag.webp'
		}
	},

	--revivekit et medikit même item ?
	['revivekit'] = {
		label = 'Kit de Réanimation d\'Urgence',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/emergency_revive_kit.webp'
		}
	},

	["medikit"] = {
		label = "Medikit",
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'medical/medikit.webp'
		}
	},

	['stretcher'] = {
		label = 'Civière',
		weight = 1000,
		close = true,
		description = 'Une civière médicale pour transporter les patients blessés',
		client = {
			image = 'medical/stretcher.webp'
		}
	},

	['wheelchair'] = {
		label = 'Fauteuil Roulant',
		weight = 1000,
		close = true,
		description = '',
		client = {
			image = 'medical/wheelchair.webp'
		}
	},

	['crutch'] = {
		label = 'Béquille',
		weight = 1000,
		close = true,
		description = '',
		client = {
			image = 'medical/crutch.webp'
		}
	},

	['bodybag'] = {
		label = 'Sac Mortuaire',
		weight = 1000,
		close = true,
		description = 'Un sac pour mettre les corps des morts',
		client = {
			image = 'police/bodybag.webp'
		}
	},

	['ecg'] = {
		label = 'ECG',
		weight = 200,
		close = true,
		description =
		'L\'électrocardiographie est une méthode d\'examen électrophysiologique du cœur où l\'activité électrique du cœur est enregistrée par des électrodes connectées à un appareil ECG.',
		client = {
			image = 'medical/ecg.webp'
		}
	},

	['tylenol'] = {
		label = 'Tylenol',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/tylenol.webp'
		}
	},

	['peptobismol'] = {
		label = 'Pepto-Bismol',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/peptobismol.webp'
		}
	},

	['loperamide'] = {
		label = 'Loperamide',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/loperamide.webp'
		}

	},

	['aspirin'] = {
		label = 'Aspirine',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/aspirin.webp'
		}
	},

	['ibuprofen'] = {
		label = 'Ibuprofen',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/ibuprofen.webp'
		}
	},

	['dramamine'] = {
		label = 'Dramamine',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/dramamine_1.webp'
		}
	},

	['covidvaccine'] = {
		label = 'Vaccin COVID',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/covidvaccine.webp'
		}
	},

	['doxycycline'] = {
		label = 'Doxycycline',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/doxycycline.webp'
		}
	},

	['azithromycin'] = {
		label = 'Azithromycin',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/azithromycin_1.webp'
		}
	},

	['acyclovir'] = {
		label = 'Acyclovir',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'drugs/acyclovir.webp'
		}
	},

	----------------------------------------

	--Cartes et document

	['debitcard_personal'] = {
		label = 'Carte de Débit Personnelle',
		stack = false,
		weight = 10,
		consume = 0,
		client = {
			image = 'memberships/debitcard_personal.webp',
			export = "tgg-banking.UseCardOnAtm"
		}
	},

	['debitcard_shared'] = {
		label = 'Carte de Débit Partagée',
		stack = false,
		weight = 10,
		consume = 0,
		client = {
			image = 'memberships/debitcard_shared.webp',
			export = "tgg-banking.UseCardOnAtm"
		}
	},

	['debitcard_business'] = {
		label = 'Carte de Débit Professionnelle',
		stack = false,
		weight = 10,
		consume = 0,
		client = {
			image = 'memberships/debitcard_business.webp',
			export = "tgg-banking.UseCardOnAtm"
		}
	},

	["driver_license"] = {
		label = "Permis de conduire",
		weight = 0,
		stack = false,
		close = false,
		client = {
			image = 'general/driver_license.webp'
		}
	},

	['rentalpapers'] = {
		label = "Contrat de location de véhicule",
		weight = 0,
		stack = false,
		close = false,
		description = "Contrat de location de véhicule",
		client = {
			image = 'documents/rentalpapers.webp'
		},
	},

	["pearlscard"] = {
		label = "Carte de membre Complex Fat",
		stack = true,
		close = true,
		client = {
			image = 'memberships/gym_membership.webp'
		}
	},

	["cooler_bag"] = {
		label = "Glacière de pêche",
		weight = 2000, -- poids à vide (le contenu s'ajoute)
		stack = false, -- obligatoire pour un conteneur (id unique)
		close = false, -- ne ferme pas l'inventaire en l'ouvrant
		client = {
			image = 'activities/cooler_bag.webp'
		}
		-- Propriétés de conteneur + préfixe "freezer_" enregistrés côté
		-- alt_fishing (setContainerProperties + hook createItem).
	},

	['lawyerpass'] = {
		label = 'Licence d\'avocat',
		weight = 0,
		stack = false,
		close = true,

		client = {
			image = 'general/lawyerpass.webp'
		}
	},

	["security_card_04"] = {
		label = "Carte noire",
		description = "Une simple carte sur laquelle on peut apercevoir un texte s'effacer jour après jour....",
		degrade = 10080,
		decay = true,
		client = {
			image = 'memberships/security_card_04.webp'
		}
	},
	----------------------------------------

	--Casino

	['casino_chips'] = {
		label = "Jeton",
		client = {
			image = 'activities/casino_chips.webp'
		}
	},

	----------------------------------------

	--Matériaux

	['powder'] = {
		label = 'Poudre révélatrice',

		weight = 50,
		stack = true,
		client = {
			image = 'containers/powder.webp'
		}
	},

	["ammonium_nitrate"] = {
		label = "Nitrate d'ammonium",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/ammoniumnitrate.webp'
		}
	},

	["hydrogen"] = {
		label = "Hydrogène",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'illegal/hydrogen.webp'
		}
	},

	["pseudoefedrine"] = {
		label = "Pseudoefedrine",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'medical/pseudophederine.webp'
		}
	},

	["red_sulfur"] = {
		label = "Souffre rouge",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/red_sulfur.webp'
		}
	},

	["oxygen"] = {
		label = "Oxygène",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'medical/oxygen.webp'
		}
	},

	["sodium_hydroxide"] = {
		label = "Hydroxide de sodium",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'chemical/sodium_hydroxide.webp'
		}
	},

	['potassium_nitrate'] = {
		label = "Nitrate de potassium",
		stack = true,
		weight = 75,
		client = {
			image = 'chemical/potassium_nitrate.webp'
		}
	},

	['coal'] = {
		label = "Charbon",
		stack = true,
		weight = 5,
		client = {
			image = 'mining/coal.webp'
		}
	},

	['sulfur'] = {
		label = "Souffre",
		stack = true,
		weight = 5,
		client = {
			image = 'mining/sulfur.webp'
		}
	},

	["carbon"] = {
		label = "Carbone",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'mining/carbon.webp'
		}
	},

	["muriatic_acid"] = {
		label = "Acide muriatique",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/muriatic_acid.webp'
		}
	},

	["nitrogen"] = {
		label = "Nitrogène",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'materials/nitrogen.webp'
		}
	},

	["liquid_sulfur"] = {
		label = "Souffre liquide",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/liquid_sulfur.webp'
		}
	},

	["stone"] = {
		label = "Pierre",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'materials/stone.webp'
		}
	},

	["washed_stone"] = {
		label = "Pierre lavée",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'mining/washedstones.webp'
		}
	},

	["diamond"] = {
		label = "Diamant",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'general/diamond.webp'
		}
	},

	-- ["copper"] = {
	-- 	label = "Cuivre",
	-- 	weight = 1,
	-- 	stack = true,
	-- 	close = true,
	-- 	client = {
	-- 		image = 'mining/copperore_1.webp'
	-- 	}
	-- },

	["iron"] = {
		label = "Fer",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'mining/ironnugget.webp'
		}
	},

	['ironplate'] = {
		label = 'Plaque de fer',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'mining/ironplate.webp'
		}
	},

	["gold"] = {
		label = "Or",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'mining/gold_nugget.webp'
		}
	},

	["aluminum"] = {
		label = "Aluminium",
		stack = true,
		close = true,
		weight = 100,
		client = {
			image = 'materials/aluminium.webp'
		}
	},

	["brass"] = {
		label = "Laiton",
		stack = true,
		close = true,
		weight = 100,
		client = {
			image = 'materials/brass.webp'
		}
	},

	["steel"] = {
		label = "Acier",
		stack = true,
		close = true,
		weight = 100,
		client = {
			image = 'materials/steel_1.webp'
		}
	},

	["wood"] = {
		label = "Bois",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'materials/wood.webp'
		}
	},

	["packaged_plank"] = {
		label = "Planche de bois",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'materials/packaged_plank.webp'
		}
	},

	["cutted_wood"] = {
		label = "Bois Coupé",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'materials/cutted_wood.webp'
		}
	},

	["rubber"] = {
		label = "Caoutchouc",
		stack = true,
		close = true,
		weight = 50,
		client = {
			image = 'materials/rubber.webp'
		}
	},

	["plastic"] = {
		label = "Plastique",
		stack = true,
		close = true,
		weight = 50,
		client = {
			image = 'materials/plastic_1.webp'
		}
	},

	["wool"] = {
		label = "Laine",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'materials/wool.webp'
		}
	},

	["glassplate"] = {
		label = "Vitre",
		stack = true,
		close = true,
		weight = 100,
		client = {
			image = 'materials/glassplate.webp'
		}
	},

	["essence"] = {
		label = "Essence",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'chemical/essence.webp'
		}
	},

	["gazbottle"] = {
		label = "Bouteille de gaz",
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'containers/gazbottle.webp'
		}
	},

	["petrol"] = {
		label = "Pétrole",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'mechanic/petrol.webp'
		}
	},

	["petrol_raffin"] = {
		label = "Pétrole raffiné",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'mechanic/petrol_raffin.webp'
		}
	},

	----------------------------------------

	--Drogues

	['drugbags'] = {
		label = "Sachet vide",
		weight = 10,
		client = {
			image = 'containers/drugbags.webp'
		}
	},

	["drug_ecstasy"] = {
		label = "Ecstasy",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/Ecstasy.webp'
		}
	},

	["drug_lean"] = {
		label = "Lean",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/drug_lean.webp'
		}
	},

	["drug_lsd"] = {
		label = "LSD",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/drug_lsd_2.webp'
		}
	},

	["badlsdtab"] = {
		label = "Carton de LSD",
		close = true,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'lsd', 'badlsdtab')
				end
			},
		},
		client = {
			image = 'drugs/badlsdtab.webp'
		}
	},

	["lysergic_acid"] = {
		label = "Acide lysergique",
		weight = 2,
		client = {
			image = 'chemical/lysergic-acid.webp'
		}
	},

	["lsd_crystal"] = {
		label = "Cristal de LSD",
		weight = 10,
		client = {
			image = 'drugs/lsd_crystal.webp'
		}
	},

	["blank_blotter"] = {
		label = "Buvard vierge",
		client = {
			image = 'illegal/blank_blotter.webp'
		}
	},

	["lsdtab"] = {
		label = "Carton de LSD",
		close = true,
		client = {
			anim = { dict = 'mp_suicide', clip = 'pill', flag = 49 },
			usetime = 2000,
			image = 'drugs/lsdtab_1.webp'
		},
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'lsd', 'lsdtab')
				end
			},
		},
	},

	["drug_meth"] = {
		label = "Meth",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/drug_meth.webp'
		}
	},

	["opium"] = {
		label = "Opium",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/opium.webp'
		}
	},

	["cocaine"] = {
		label = "Cocaine",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/cocaine2.webp'
		}
	},

	["weed_cbd"] = {
		label = "Weed CBD",
		stack = true,
		close = true,
		weight = 1,
		client = {
			image = 'drugs/weed_cbd.webp'
		}
	},

	["green_gelato_cannabis"] = {
		label = "Green Gelato Cannabis",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'food/weed_gelato.webp'
		}
	},

	["marijuana"] = {
		label = "Marijuana",
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'drugs/marijuana3.webp'
		}
	},

	["cannabis"] = {
		label = "Cannabis",
		weight = 3,
		stack = true,
		close = true,
		client = {
			image = 'drugs/cannabis.webp'
		}
	},

	['empty-battery'] = {
		label = "Batterie vide",
		weight = 700,
		client = {
			image = 'mechanic/empty-battery.webp'
		}
	},

	['chemical_kit'] = {
		label = "Kit de chimie",
		weight = 1000,
		client = {
			image = 'chemical/chemical_kit.webp'
		}
	},

	["cocaine_uncut"] = {
		label = "Pâte à coca",
		stack = true,
		close = true,

		weight = 80,
		client = {
			image = 'drugs/cocaine_uncut.webp'
		}
	},

	["cocaine_cut"] = {
		label = "Cocaïne préparée",
		stack = true,
		close = true,
		weight = 10,
		client = {
			image = 'drugs/cocaine_cut.webp'
		}
	},

	["meth_grey"] = {
		label = "Pochon de meth",
		weight = 5,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'meth', 'meth_grey')
				end
			},
		},
		client = {
			image = 'drugs/meth_grey_1.webp'
		}
	},

	["meth_green"] = {
		label = "Pochon de meth",
		weight = 5,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'meth', 'meth_green')
				end
			},
		},
		client = {
			image = 'drugs/meth_green_1.webp'
		}
	},

	["meth_blue"] = {
		label = "Pochon de meth",
		weight = 5,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'meth', 'meth_blue')
				end
			},
		},
		client = {
			image = 'drugs/meth_blue_1.webp'
		}
	},

	["coke10g"] = {
		label = "Pochon de coke",
		weight = 10,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'coke', 'coke10g')
				end
			},
		},
		client = {
			image = 'drugs/coke10g.webp'
		}
	},

	["weed_hybrid"] = {
		label = "Pochon de cbd",
		weight = 5,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'weed', 'weed_hybrid')
				end
			},
		},
		client = {
			image = 'drugs/weed_hybrid.webp'
		}
	},

	["weed-baggie1g"] = {
		label = "Pochon de cbd",
		stack = true,
		close = true,
		weight = 1,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'weed', 'weed-baggie1g')
				end
			},
		},
		client = {
			image = 'drugs/weed-baggie.webp'
		}
	},

	["weed-baggie5g"] = {
		label = "Pochon de cbd",
		stack = true,
		close = true,
		weight = 5,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'weed', 'weed-baggie5g')
				end
			},
		},
		client = {
			image = 'drugs/weed-baggie.webp'
		}
	},

	["weed-baggie10g"] = {
		label = "Pochon de cbd",
		stack = true,
		close = true,
		weight = 10,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'weed', 'weed-baggie10g')
				end
			},
		},
		client = {
			image = 'drugs/weed-baggie.webp'
		}
	},

	["weed-baggie20g"] = {
		label = "Pochon de cbd",
		stack = true,
		close = true,
		weight = 20,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'weed', 'weed-baggie20g')
				end
			},
		},
		client = {
			image = 'drugs/weed-baggie.webp'
		}
	},

	["weed_pochon_sativa_1g"] = {
		label = "Pochon de weed",
		stack = true,
		close = true,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'weed', 'weed_pochon_sativa_20')
				end
			},
		},
		client = {
			image = 'drugs/weed_pochon_sativa_20.webp'
		}
	},

	["weed_pochon_sativa_5g"] = {
		label = "Pochon de weed",
		stack = true,
		close = true,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'weed', 'weed_pochon_sativa_20')
				end
			},
		},
		client = {
			image = 'drugs/weed_pochon_sativa_20.webp'
		}
	},

	["weed_pochon_sativa_3g"] = {
		label = "Pochon de weed",
		stack = true,
		close = true,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'weed', 'weed_pochon_sativa_20')
				end
			},
		},
		client = {
			image = 'drugs/weed_pochon_sativa_20.webp'
		}
	},

	["weed_pochon_sativa_10g"] = {
		label = "Pochon de weed",
		stack = true,
		close = true,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'weed', 'weed_pochon_sativa_20')
				end
			},
		},
		client = {
			image = 'drugs/weed_pochon_sativa_20.webp'
		}
	},

	["weed_pochon_sativa_20"] = {
		label = "Pochon de weed",
		stack = true,
		close = true,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'weed', 'weed_pochon_sativa_20')
				end
			},
		},
		client = {
			image = 'drugs/weed_pochon_sativa_20.webp'
		}
	},

	["weed_pochon_indica_1g"] = {
		label = "Pochon de weed",
		stack = true,
		close = true,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'weed', 'weed_pochon_indica_20')
				end
			},
		},
		client = {
			image = 'drugs/weed_pochon_indica_20.webp'
		}
	},

	["weed_pochon_indica_5g"] = {
		label = "Pochon de weed",
		stack = true,
		close = true,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'weed', 'weed_pochon_indica_20')
				end
			},
		},
		client = {
			image = 'drugs/weed_pochon_indica_20.webp'
		}
	},

	["weed_pochon_indica_3g"] = {
		label = "Pochon de weed",
		stack = true,
		close = true,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'weed', 'weed_pochon_indica_20')
				end
			},
		},
		client = {
			image = 'drugs/weed_pochon_indica_20.webp'
		}
	},

	["weed_pochon_indica_10g"] = {
		label = "Pochon de weed",
		stack = true,
		close = true,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'weed', 'weed_pochon_indica_20')
				end
			},
		},
		client = {
			image = 'drugs/weed_pochon_indica_20.webp'
		}
	},

	["weed_pochon_indica_20"] = {
		label = "Pochon de weed",
		stack = true,
		close = true,
		buttons = {
			{
				label = 'Vendre',
				action = function(slot)
					TriggerEvent('alt_selldrugs:sell', 'weed', 'weed_pochon_indica_20')
				end
			},
		},
		client = {
			image = 'drugs/weed_pochon_indica_20.webp'
		}
	},

	["ls-papers"] = {
		label = "Feuille à rouler",
		stack = true,
		close = true,
		weight = 10,
		client = {
			image = 'smokes/ls-papers.webp'
		}
	},

	["joint"] = {
		label = "Joint CBD Pre-roll",
		stack = true,
		close = true,
		weight = 3,
		client = {
			image = 'drugs/joint_normal.webp'
		}
	},

	["weed_gelato"] = {
		label = "Gummies HHC",
		weight = 8,
		--degrade =7200,
		stack = true,
		close = true,
		client = {
			image = 'food/weed_gelato.webp'
		}
	},

	["sativa_joint"] = {
		label = "Joint Sativa Pre-roll",
		stack = true,
		close = true,
		weight = 3,
		client = {
			image = 'drugs/sativa_joint.webp'
		}
	},

	["weed_pooch1"] = {
		label = "Weed Sativa",
		stack = true,
		close = true,
		weight = 1,
		client = {
			image = 'drugs/weed_sativa.webp'
		}
	},

	["weed_leaf"] = {
		label = "Weed indica",
		stack = true,
		close = true,
		weight = 1,
		client = {
			image = 'drugs/weed_indica.webp'
		}
	},

	["coca_leaf"] = {
		label = "Feuille de coca",
		stack = true,
		close = true,
		weight = 1,
		client = {
			image = 'drugs/coca_leaf.webp'
		}
	},

	["joint_skunk"] = {
		label = "Joint Indica Pre-roll",
		stack = true,
		close = true,
		weight = 3,
		client = {
			image = 'drugs/joint_skunk.webp'
		}
	},

	["cakegreen"] = {
		label = "Space Cake",
		stack = false,
		close = true,
		client = {
			image = 'food/cakegreen.webp'
		}

	},

	["weedabsinthe"] = {
		label = "Absinthe",
		--degrade =10080,
		stack = false,
		close = true,
		client = {
			image = 'drinks/cannabis-absinthe.webp'
		}
	},

	["thuyone"] = {
		label = "Thuyone",
		stack = true,
		close = true,
		weight = 5,
		client = {
			image = 'ingredients/thuyone.webp'
		}
	},

	["anis"] = {
		label = "Anis",
		stack = true,
		close = true,
		weight = 8,
		client = {
			image = 'ingredients/anis.webp'
		}
	},

	["peacewater2"] = {
		label = "Boisson énergisante CBD",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/peacewater.webp'
		}
	},

	["taurine"] = {
		label = "Taurine",
		weihtght = 90,
		--degrade =20160,
		stack = true,
		close = true,
		client = {
			image = 'chemical/taurine.webp'
		}
	},

	----------------------------------------

	--Vêtement
	-- ['bracelet'] = {
	-- 	label = 'Bracelet',
	-- 	description = "",
	-- 	weight = 15,
	-- 	stack = true,
	-- 	client = {
	-- 		image = 'clothing/bracelet.webp'
	-- 	}
	-- },

	-- ['earings'] = {
	-- 	label = 'Paire de boucles d\'oreilles',
	-- 	description = "",
	-- 	weight = 5,
	-- 	stack = true,
	-- 	client = {
	-- 		image = 'jewelry/earings.webp'
	-- 	}
	-- },

	['gold_bracelet'] = {
		label = 'Bracelet en or',

		weight = 25,
		stack = true,
		client = {
			image = 'jewelry/gold_bracelet.webp'
		}
	},

	['gold_watch'] = {
		label = 'Montre en or',
		weight = 75,
		stack = true,
		client = {
			image = 'jewelry/gold_watch.webp'
		}
	},

	['loot_bag'] = {
		label = 'Grand sac',

		weight = 50,
		stack = true,
		client = {
			image = 'containers/loot_bag.webp'
		}
	},

	['necklace'] = {
		label = 'Collier',
		weight = 15,
		stack = true,
		client = {
			image = 'jewelry/necklace.webp'
		}
	},

	["clothe"] = {
		label = "Vêtement",
		weight = 125,
		stack = true,
		close = true,
		client = {
			image = 'clothing/clothe.webp'
		}
	},

	["fabric"] = {
		label = "Tissu",
		weight = 125,
		stack = true,
		close = true,
		client = {
			image = 'materials/fabric.webp'
		}
	},

	['fakeshirt'] = {
		label = 'Contrefaçon',
		weight = 125,
		stack = true,
		close = false,
		client = {
			image = 'clothing/fakeshirt.webp'
		}
	},

	['panties'] = {
		label = 'Culotte',
		weight = 10,
		consume = 0,
		client = {
			image = 'clothing/panties.webp',
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['armour'] = {
		label = 'Gilet pareballe',
		weight = 3000,
		stack = false,
		client = {
			image = 'weapons/armour.webp',
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	-- ['watch'] = {
	-- 	label = "Montre",
	-- 	weight = 70,
	-- 	client = {
	-- 		image = 'jewelry/watch2.webp'
	-- 	}
	-- },

	['shoebox'] = {
		label = 'Boîte à chaussures',

		weight = 350,
		stack = true,
		client = {
			image = 'containers/shoebox.webp'
		}
	},

	----------------------------------------

	--Mécano

	['nitrous'] = {
		label = "Nitro",
		close = true,
		client = {
			image = 'mechanic/nitrous.webp'
		}
	},

	['scrapmetal'] = {
		label = 'Morceau de métal',
		weight = 80,
		client = {
			image = 'materials/metalscrap.webp'
		}
	},

	['body_repair_kit'] = {
		label = "Kit de carroserie",
		weight = 775,
		client = {
			image = 'mechanic/body_repair_kit.webp'
		}
	},

	['mechanickit'] = {
		label = "Kit de réparation",
		weight = 775,
		client = {
			image = 'mechanic/mechanickit.webp'
		}
	},

	["brake_parts_a"] = {
		label = "Reprog. freins niveau 1",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/brake_parts_a.webp',
			export = 'alt_mecano.modUpdate',
			level = 0,
			modType = '12',
			modName = 'modBrakes'
		}
	},

	["brake_parts_b"] = {
		label = "Reprog. freins niveau 2",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/brake_parts_b.webp',
			export = 'alt_mecano.modUpdate',
			level = 1,
			modType = '12',
			modName = 'modBrakes'
		}
	},

	["brake_parts_c"] = {
		label = "Reprog. freins niveau 3",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/brake_parts_c.webp',
			export = 'alt_mecano.modUpdate',
			level = 2,
			modType = '12',
			modName = 'modBrakes'
		}
	},

	["engine_parts_a"] = {
		label = "Reprog. moteur niveau 1",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/engine_parts_a.webp',
			export = 'alt_mecano.modUpdate',
			level = 0,
			modType = '11',
			modName = 'modEngine'
		}
	},

	["engine_parts_b"] = {
		label = "Reprog. moteur niveau 2",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/engine_parts_b.webp',
			export = 'alt_mecano.modUpdate',
			level = 1,
			modType = '11',
			modName = 'modEngine'
		}
	},

	["engine_parts_c"] = {
		label = "Reprog. moteur niveau 3",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/engine_parts_c.webp',
			export = 'alt_mecano.modUpdate',
			level = 2,
			modType = '11',
			modName = 'modEngine'
		}
	},

	["engine_parts_d"] = {
		label = "Reprog. moteur niveau 4",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/engine_parts_d.webp',
			export = 'alt_mecano.modUpdate',
			level = 3,
			modType = '11',
			modName = 'modEngine'
		}
	},

	["engine_parts_x"] = {
		label = "Reprog. moteur niveau 5",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/engine_parts_x.webp',
			export = 'alt_mecano.modUpdate',
			level = 4,
			modType = '11',
			modName = 'modEngine'
		}
	},

	["transmission_parts_a"] = {
		label = "Reprog. transmission niveau 1",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/transmission_parts_a.webp',
			export = 'alt_mecano.modUpdate',
			level = 0,
			modType = '13',
			modName = 'modTransmission'
		}
	},

	["transmission_parts_b"] = {
		label = "Reprog. transmission niveau 2",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/transmission_parts_b.webp',
			export = 'alt_mecano.modUpdate',
			level = 1,
			modType = '13',
			modName = 'modTransmission'
		}
	},

	["transmission_parts_c"] = {
		label = "Reprog. transmission niveau 3",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/transmission_parts_c.webp',
			export = 'alt_mecano.modUpdate',
			level = 2,
			modType = '13',
			modName = 'modTransmission'
		}
	},

	["suspension1"] = {
		label = "Suspensions niveau 1",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/suspension1.webp',
			export = 'alt_mecano.modUpdate',
			level = 0,
			modType = '15',
			modName = 'modSuspension'
		}
	},

	["suspension2"] = {
		label = "Suspensions niveau 2",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/suspension2.webp',
			export = 'alt_mecano.modUpdate',
			level = 1,
			modType = '15',
			modName = 'modSuspension'
		}
	},

	["suspension3"] = {
		label = "Suspensions niveau 3",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/suspension3.webp',
			export = 'alt_mecano.modUpdate',
			level = 2,
			modType = '15',
			modName = 'modSuspension'
		}
	},

	["suspension4"] = {
		label = "Suspensions niveau 4",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/suspension4.webp',
			export = 'alt_mecano.modUpdate',
			level = 3,
			modType = '15',
			modName = 'modSuspension'
		}
	},

	["turbo"] = {
		label = "Turbo",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'mechanic/mechanic_turbo.webp',
			export = 'alt_mecano.modTurboUpdate',
			modType = '18',
			modName = 'modTurbo'
		}
	},

	["carotool"] = {
		label = "Outils",
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'mechanic/carotool.webp'
		}
	},

	["fixkit"] = {
		label = "Kit de réparation",
		weight = 3,
		stack = true,
		close = true,
		client = {
			image = 'mechanic/fixkit.webp'
		}
	},

	["fixtool"] = {
		label = "Outils de réparation",
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'mechanic/fixtool.webp'
		}
	},

	["blowpipe"] = {
		label = "Chalumeau",
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'tools/blowpipe.webp'
		}
	},

	["carokit"] = {
		label = "Kit carrosserie",
		weight = 3,
		stack = true,
		close = true,
		client = {
			image = 'mechanic/carokit.webp'
		}
	},

	----------------------------------------

	--Cigarettes

	["redw"] = {
		label = "Paquet de cigarettes Redwood",
		weight = 35,
		stack = false,
		close = true,
		client = {
			image = 'smokes/redwoods.webp'
		}
	},

	["redwcig"] = {
		label = "Cigarette Redwood",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'smokes/cig.webp'
		}
	},

	["lighter"] = {
		label = "Briquet",
		weight = 20,
		stack = true,
		close = true,
		client = {
			image = 'misc/lighter.webp'
		}
	},

	["liquid"] = {
		label = "Liquide pour cigarette électronique",
		weight = 115,
		stack = true,
		close = true,
		client = {
			image = 'tech/liquid.webp'
		}
	},

	["cubancigar"] = {
		label = "Cigare cubain",
		weight = 15,
		stack = true,
		close = true,
		client = {
			image = 'smokes/cubancigar.webp'
		}
	},

	["davidoffcigar"] = {
		label = "Cigare Davidoff",
		weight = 15,
		stack = true,
		close = true,
		client = {
			image = 'smokes/davidoffcigar.webp'
		}
	},

	----------------------------------------

	--Divers

	['watercan'] = {
		label = 'Arrosoir',
		weight = 250,
		stack = true,
		close = true,
		client = {
			image = 'farming/watercan.webp'
		}
	},

	['fertilizer'] = {
		label = 'Engrais',
		weight = 250,
		stack = true,
		close = true,
		client = {
			image = 'farming/fertilizer.webp'
		}
	},

	["uvlight"] = {
		label = "Lampe UV",
		stack = true,
		close = true,
		weight = 20,
		client = {
			image = 'tools/uvlight.webp'
		}
	},

	["sieve"] = {
		label = "Tamis",
		stack = true,
		close = true,
		weight = 750,
		client = {
			image = 'tools/gold-pan.webp'
		}
	},

	['alcotester'] = {
		label = 'Éthylotest',
		stack = false,
		close = true,
		client = {
			image = 'tech/alcootest_1_1.webp'
		}

	},

	["condom"] = {
		label = "Préservatif",
		weight = 10,
		--degrade =44640,
		stack = true,
		close = true,
		description = "Sortez couvert !",
		client = {
			image = 'erp/condom.webp'
		}

	},

	['house_locator'] = {
		label = 'Localisateur',
		weight = 250,
		stack = true,
		client = {
			image = 'tech/house_locator.webp'
		}
	},

	['notepad'] = {
		label = 'Bloc-notes',
		weight = 60,
		stack = true,
		client = {
			image = 'documents/notepad.webp'
		}
	},

	['pencil'] = {
		label = 'Crayon',
		weight = 5,
		stack = true,
		client = {
			image = 'misc/pencil.webp'
		}
	},

	["handcuffs"] = {
		label = "Menottes",
		stack = true,
		close = true,
		weight = 120,
		client = {
			image = 'police/handcuffs_1.webp'
		}
	},

	['shampoo'] = {
		label = 'Shampoing',
		weight = 250,
		stack = true,
		client = {
			image = 'misc/shampoo.webp'
		}
	},

	['soap'] = {
		label = 'Savon',
		weight = 150,
		stack = true,
		client = {
			image = 'misc/soap.webp'
		}
	},

	['toothpaste2'] = {
		label = 'Dentifrice',
		weight = 120,
		stack = true,
		close = true,
		client = {
			image = 'medical/toothpaste2.webp'
		}

	},

	['skull'] = {
		label = 'Crâne artistique',
		weight = 95,
		stack = true,
		client = {
			image = 'pawnshop/skull.webp'
		}
	},

	['hack_laptop'] = {
		label = 'Ordinateur pirate',

		weight = 3500,
		stack = true,
		client = {
			image = 'illegal/hack_laptop.webp'
		}
	},

	['laptop'] = {
		label = 'Ordinateur portable',

		weight = 3500,
		stack = true,
		client = {
			image = 'tech/laptop.webp'
		}
	},

	['printer'] = {
		label = 'Imprimante',

		weight = 8500,
		stack = true,
		client = {
			image = 'tech/printer.webp'
		}
	},

	['npc_phone'] = {
		label = 'Téléphone',

		weight = 200,
		stack = true,
		client = {
			image = 'tech/npc_phone.webp'
		}

	},

	['monitor'] = {
		label = 'Écran',

		weight = 2750,
		stack = true,
		client = {
			image = 'tech/monitor.webp'
		}
	},

	['television'] = {
		label = 'Télévision',

		weight = 35000,
		stack = true,
		client = {
			image = 'tech/television.webp'
		}
	},

	['flat_television'] = {
		label = 'Écran plat',

		weight = 15000,
		stack = true,
		client = {
			image = 'tech/flat_television.webp'
		}
	},

	['radio_alarm'] = {
		label = 'Radio réveil',

		weight = 200,
		stack = true,
		client = {
			image = 'tech/radio_alarm.webp'
		}
	},

	['fan'] = {
		label = 'Ventilateur',

		weight = 2500,
		stack = true,
		client = {
			image = 'props/fan.webp'
		}
	},

	['dj_deck'] = {
		label = 'Platine DJ',

		weight = 8000,
		stack = true,
		client = {
			image = 'tech/dj_deck.webp'
		}
	},

	['console'] = {
		label = 'Console',

		weight = 3250,
		stack = true,
		client = {
			image = 'pawnshop/console_1_1.webp'
		}
	},

	['boombox'] = {
		label = 'Boombox',
		description = "Un bon modèle rétro comme on en fait plus !",
		weight = 2000,
		stack = true,
		client = {
			image = 'pawnshop/boombox_1_1.webp'
		}
	},

	['coffemachine'] = {
		label = 'Cafetière',

		weight = 2500,
		stack = true,
		client = {
			image = 'props/coffemachine.webp'
		}
	},

	['tapeplayer'] = {
		label = 'Chaîne hifi',

		weight = 4500,
		stack = true,
		client = {
			image = 'tech/tapeplayer.webp'
		}
	},

	['hairdryer'] = {
		label = 'Sèche-cheveux',

		weight = 500,
		stack = true,
		client = {
			image = 'tools/hairdryer.webp'
		}
	},

	['j_phone'] = {
		label = 'Téléphone',

		weight = 200,
		stack = true,
		client = {
			image = 'tech/j_phone.webp'
		}
	},

	['sculpture'] = {
		label = 'Sculpture',

		weight = 55,
		stack = true,
		client = {
			image = 'props/sculpture.webp'
		}
	},

	['toiletry'] = {
		label = 'Produit de beauté',

		weight = 150,
		stack = true,
		client = {
			image = 'misc/toiletry.webp'
		}
	},

	['pogo'] = {
		label = 'Œuvre d\'art',

		weight = 155,
		stack = true,
		client = {
			image = 'props/pogo.webp'
		}
	},


	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			image = 'clothing/parachute.webp',
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['lockpick'] = {
		label = 'Crochet',
		weight = 160,
		client = {
			export = 'qs-vehiclekeys.useLockpick',
			image = 'tools/lockpick_2.webp'
		}
	},

	['money'] = {
		label = 'Argent liquide',
		client = {
			image = 'money/money.webp'
		}
	},

	['black_money'] = {
		label = "Argent liquide",
		client = {
			image = 'money/black_money.webp'
		}
	},

	["radio"] = {
		label = "Radio",
		weight = 100,
		stack = false,
		close = true,
		consume = 0,
		client = {
			image = 'tech/radio_1.webp',
		},
		server = {
			export = 'stRadio.use_radio',
		},
	},

	['umbrella'] = {
		label = "Parapluie",
		weight = 835,
		client = {
			image = 'misc/umbrella_1.webp'
		}
	},

	['fossil'] = {
		label = "Fossile",
		weight = 80,
		client = {
			image = 'activities/fossil.webp'
		}
	},
	['paperbag'] = {
		label = 'Sac en papier',
		weight = 1,
		stack = false,
		close = false,
		consume = 0,
		client = {
			image = 'containers/paperbag.webp'
		}
	},

	['box'] = {
		label = "Boîte en carton",
		weight = 245,
		client = {
			image = 'containers/box_1.webp'
		}
	},

	['plasticbag'] = {
		label = "Sac Plastique",
		weight = 15,
		client = {
			image = 'drugs/plasticbag.webp',
			export = 'ls_shops.openPlasticBag'
		}
	},

	['book'] = { -- book2, romantic_book, cookbook
		label = "Livre",
		weight = 450,
		client = {
			image = 'books/book.webp'
		}
	},

	['plastic_bottle'] = {
		label = "Bouteille en plastique",
		weight = 45,
		client = {
			image = 'garbage/plastic_bottle.webp'
		}
	},

	['trash_paper'] = {
		label = "Déchet",
		weight = 80,
		client = {
			image = 'garbage/trash_paper_1.webp'
		}
	},

	['garbage'] = {
		label = 'Ordure',
		client = {
			image = 'garbage/garbagebag.webp'
		}
	},

	["james_fishingrod"] = {
		label = "Canne à pêche",
		stack = false,
		close = true,
		weight = 450,
		durability = 100,
		client = {
			image = 'activities/james_fishingrod.webp'
		}
	},

	["keyhouse"] = {
		label = "Clé de maison",
		client = {
			image = 'keys/keyhouse.webp'
		}
	},

	["labkey"] = {
		label = "Clé de chambre",
		stack = true,
		close = true,
		client = {
			image = 'keys/labkey.webp'
		}
	},

	["vehiclekeys"] = {
		label = "Clé de voiture",
		weight = 15,
		stack = false,
		close = false,
		consume = 0,
		client = {
			image = 'keys/vehiclekeys.webp',
		},
	},

	['adminvehiclekey'] = {
		label = 'Clé admin',
		weight = 0,
		stack = false,
		close = true,
		description = 'Une clé squelette quoi. Pour les véhicules.',
		client = {
			image = 'keys/skeleton_key.webp'
		}
	},

	['plate'] = {
		label = 'Plaque d\'immatriculation',
		weight = 250,
		stack = true,
		close = false,
		consume = 0,
		client = {
			image = 'mechanic/license_plate.webp'
		},
	},

	['carlockpick'] = {
		label = 'Crochet pour voiture',
		weight = 100,
		stack = true,
		close = true,

		client = {
			image = 'tools/lockpick_2.webp'
		},
	},

	['screwdriver'] = {
		label = 'Tournevis',
		weight = 500,
		stack = true,
		close = true,
		description = 'Handy for swapping plates',
		client = {
			image = 'mechanic/screwdriver.webp'
		}
	},

	['vehiclegps'] = {
		label = 'Tracker GPS',
		weight = 500,
		stack = true,
		close = true,
		description = 'Installe un traqueur GPS sur un véhicule',
		client = {
			image = 'mechanic/tracker.webp'
		}
	},

	['vehicletracker'] = {
		label = 'Traqueur de véhicule',
		weight = 500,
		stack = true,
		close = true,
		description = 'Permet de localise un véhicule traqué',
		client = {
			image = 'tech/gps_tracker.webp'
		}
	},

	['caradvancedlockpick'] = {
		label = 'Crochet avancé',
		weight = 100,
		stack = true,
		close = false,

		client = {
			image = 'tools/lockpick_2.webp'
		},
	},

	["gps"] = {
		label = "GPS",
		client = {
			image = 'tech/gps.webp',
			add = function(total)
				if total > 0 then
					TriggerEvent('alt_vehicule:hasGPS', true)
				end
			end,

			remove = function(total)
				if total < 1 then
					TriggerEvent('alt_vehicule:hasGPS', false)
				end
			end
		}
	},

	["moneycase"] = {
		label = "Malette d'argent",
		stack = true,
		weight = 1000,
		client = {
			image = 'containers/moneycase.webp'
		}
	},

	['lightning_unicorn'] = {
		label = "Lightning Unicorn",
		weight = 250,
		--degrade =14400,
		close = true,
		description = "Conçu avec de la vraie magie de licorne !",
		client = {
			anim = 'drinking',
			usetime = 2000,
			image = 'drinks/lightning_unicorn.webp'
		}
	},

	----------------------------------------

	--Illégal
	['laundry_coin'] = {
		label = "Jeton de laverie",
		weight = 2,
		stack = true,
		close = false,
		client = {
			image = 'money/laundry_coin.webp'
		}
	},

	['heist_usb_black'] = {
		label = "Clé USB",
		description = 'Contient le programme "laundryblackout.exe"',
		stack = false,
		close = false,
		client = {
			image = 'tech/heist_usb_black.webp'
		}
	},

	['goldbar'] = {
		label = "Lingot d'or",
		client = {
			image = 'mining/goldbar.webp'
		}
	},

	----------------------------------------
	--à Trier

	["cement"] = {
		label = "Ciment",
		weight = 5000,
		stack = true,
		close = true,
		consume = 0,
		client = {
			image = 'materials/cement.webp'
		}
	},

	["expensive_sneakers"] = {
		label = "Baskets de luxe",
		weight = 1000,
		stack = true,
		close = true,
		client = {
			image = 'pawnshop/expensive_sneakers_1_1.webp'
		}
	},

	["expensive_bag"] = {
		label = "Sac de luxe",
		weight = 1000,
		stack = true,
		close = true,
		client = {
			image = 'containers/expensive_bag.webp'
		}
	},

	-- ["laptop"] = {
	--     label = "Laptop",
	--     weight = 1000,
	--     stack = true,
	--     close = true,
	-- },

	-- ["copper"] = {
	--     label = "Copper ingot",
	--     weight = 1000,
	--     stack = true,
	--     close = true,
	-- },

	["stolen_weapon_case"] = {
		label = "Valise d'armes volée",
		weight = 2000,
		stack = true,
		close = true,
		consume = 0,
		server = {
			export = 'kq_smash_n_grab2.LootItem',

		},
		client = {
			image = 'weapons/stolen_weapon_case.webp'
		}
	},

	["stolen_bag"] = {
		label = "Sac volé",
		weight = 2000,
		stack = true,
		close = true,
		consume = 0,
		client = {
			image = 'containers/stolen_bag.webp'
		},
		server = {
			export = 'kq_smash_n_grab2.LootItem',
		},
	},

	['ys_sim_card'] = {
		label = 'Carte SIM',
		stack = false,
		weight = 10,
		consume = 0,
		client = {
			image = 'tech/sim_card.webp'
		}
	},

	["hat"] = {
		label = "Chapeau",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["mask"] = {
		label = "Masque",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["glasses"] = {
		label = "Lunettes",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["earrings"] = {
		label = "Accessoire d'oreilles",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["chain"] = {
		label = "Chaine",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["bracelet"] = {
		label = "Bracelet",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["watch"] = {
		label = "Montre",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["bag"] = {
		label = "Sac",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["torso"] = {
		label = "Haut",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["pants"] = {
		label = "Pantalon",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["shoes"] = {
		label = "Chaussures",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["bproof"] = {
		label = "Gilet pareballe",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["decals"] = {
		label = "Décalque",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["alive_chicken"] = {
		label = "Poulet vivant",
		weight = 1,
		stack = true,
		close = true,
	},

	["slaughtered_chicken"] = {
		label = "Poulet abattu",
		weight = 1,
		stack = true,
		close = true,
	},

	["packaged_chicken"] = {
		label = "Filet de poulet",
		weight = 1,
		stack = true,
		close = true,
	},

	["water"] = {
		label = "Eau",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'food/water_bottle2.webp'
		}
	},

	["bread"] = {
		label = "Pain",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'food/bread.webp'
		}
	},

	["fish"] = {
		label = "Poisson",
		weight = 1,
		stack = true,
		close = true,
	},

	['police_stormram'] = {
		label = 'Bélier d\'intervention',
		weight = 18000,
		stack = false,
		close = true,
		description = 'Outil pour forcer l\'entrée des propriétés',
		client = {
			export = 'nolag_properties.PoliceRaidDoor',
			image = 'police/police_stormram.webp'
		},
	},

	['housing_key'] = {
		label = 'Clé de propriété',
		weight = 50,
		stack = false,
		close = true,
		description = 'Une clé pour une serrure de propriété',
		consume = 0,
		client = {
			image = 'keys/keyfold.webp'
		}

	},

	['key_wax'] = {
		label = 'Cire à empreinte de clé',
		description =
		'Utilisez ceci pour prendre l\'empreinte de clés. L\'empreinte est le processus de création d\'une copie de clé en la pressant dans la cire.',
		weight = 10,
		consume = 0,
		unique = true,
		client = {
			image = 'key_wax.png',
		}
	},

	['key_wax_used'] = {
		label = 'Cire à empreinte utilisée',
		description =
		'Utilisez ceci pour prendre l\'empreinte de clés. L\'empreinte est le processus de création d\'une copie de clé en la pressant dans la cire.',
		weight = 10,
		consume = 0,
		unique = true,
		client = {
			export = 'nolag_properties.getBittingCode',
			image = 'key_wax.png',
		}
	},

	['drawpaper'] = {
		label = 'Post-it',
		weight = 100,
		stack = false,
		close = true,
		degrade = 5, -- se dégrade en 5 minutes (aligné sur la fenêtre d'invalidation du code coffre)
		decay = true, -- disparaît automatiquement quand la durabilité atteint 0
		client = {
			image = 'documents/drawpaper.webp'
		}
	},

	['bottle_cap'] = {
		label = 'Capsule',
		weight = 0,
		stack = true,
		close = true,
		client = {
			image = 'money/bottle_cap.webp'
		}

	},
	['cardboard_bed'] = {
		label = 'Lit carton',
		weight = 1,
		stack = false,
		close = true,
		client = {
			image = 'props/cardboard_bed.webp'
		}

	},
	['hobo_gloves'] = {
		label = 'Gants de Hobo',
		weight = 1,
		stack = false,
		close = true,
		client = {
			image = 'clothing/hobo_gloves.webp'
		}
	},
	['hobo_tent'] = {
		label = 'Tente de Hobo',
		weight = 10000,
		stack = false,
		close = true,
		client = {
			image = 'camping/hobo_tent.webp'
		}
	},
	['begging_sign'] = {
		label = 'Pour mangé sivouplé',
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'misc/begging_sign.webp'
		}
	},
	['medical_care_package'] = {
		label = 'Kit Médical de Secours',
		weight = 10000,
		stack = false,
		close = true,
		client = {
			image = 'medical/medical_care_package.webp'
		}
	},
	['rat_treats'] = {
		label = 'Friandises pour Rats',
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'animals/rat_treats.webp'
		}
	},
	['racoon_treats'] = {
		label = 'Friandises pour Ratons-Laveurs',
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'animals/racoon_treats.webp'
		}
	},
	['rat_bait'] = {
		label = 'Appât à Rats',
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'animals/rat_bait.webp'
		}
	},
	['hobo_crown'] = {
		label = 'Couronne de Hobo',
		weight = 500,
		stack = false,
		close = true,
		client = {
			image = 'clothing/hobo_crown.webp'
		}
	},
	['sleeping_bag'] = {
		label = 'Sac de Couchage',
		weight = 2000,
		stack = false,
		close = true,
		client = {
			image = 'camping/sleeping_bag.webp'
		}
	},
	['hobo_bottle'] = {
		label = 'Eau croupie',
		weight = 500,
		stack = false,
		close = true,
		description = 'Une bouteille d\'eau croupie, ça sent vraiment mauvais...',
		client = {
			image = 'props/p_cs_bottle_01.webp'
		}
	},
	['ration_pack'] = {
		label = 'Pack de Rations',
		weight = 1500,
		stack = false,
		close = true,
		client = {
			image = 'food/ration_pack.webp'
		}
	},
	['wooden_junk'] = {
		label = 'Débris de bois',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'materials/wooden_junk.webp'
		}
	},
	['copper_junk'] = {
		label = 'Débris de cuivre',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/copper_junk.webp'
		}
	},
	['scrap_junk'] = {
		label = 'Ferraille',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/scrap_junk.webp'
		}
	},
	['cloth_junk'] = {
		label = 'Chiffons',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/cloth_junk.webp'
		}
	},
	['plastic_junk'] = {
		label = 'Débris plastique',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/plastic_junk.webp'
		}
	},
	['electronic_junk'] = {
		label = 'Déchets électroniques',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'tech/electronic_junk.webp'
		}
	},
	['broken_phone'] = {
		label = 'Téléphone cassé',
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = 'tech/broken_phone.webp'
		}
	},
	['food_waste'] = {
		label = 'Déchets alimentaires',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/food_waste.webp'
		}
	},
	['medical_waste'] = {
		label = 'Déchets médicaux',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/medical_waste.webp'
		}
	},
	['paper_junk'] = {
		label = 'Vieux papiers',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/paper_junk.webp'
		}
	},
	['glass_junk'] = {
		label = 'Débris de verre',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/glass_junk.webp'
		}
	},
	['rabies_shot'] = {
		label = 'Vaccin antirabique',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'animals/rabies_shot.webp'
		}
	},
	['tetanus_shot'] = {
		label = 'Vaccin antitétanique',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'medical/tetanus_shot.webp'
		}
	},
	['meat_rat'] = {
		label = 'Viande de rat',
		weight = 100,
		stack = true,
		close = true,
		description = 'Peut être que quelque part, une famille de tortues attend que ce pauvre rat ramène de la pizza...',
		client = {
			image = 'hunting/meat_rat.webp'
		}

	},

	['skin-rat'] = {
		label = 'Peau de rat',
		weight = 70,
		stack = true,
		close = true,
		description = 'Il va en falloir un paquet pour se faire des moufles',
		client = {
			image = 'hunting/skin-rat.webp'
		}

	},

	['racoon_meat'] = {
		label = 'Viande de raton laveur',
		weight = 150, -- Plus lourd qu'un rat
		stack = true,
		close = true,
		description = 'Viande sauvage au goût prononcé, parfaite pour les stews',
		client = {
			image = 'hunting/racoon_meat.webp'
		}
	},

	['racoon_skin'] = {
		label = 'Fourrure de raton laveur',
		weight = 120, -- Plus lourde qu'une peau de rat
		stack = true,
		close = true,
		description = 'Une fourrure épaisse et douce, idéale pour l\'hiver',
		client = {
			image = 'hunting/racoon_skin.webp'
		}
	},

	['outfitbag'] = {
		label = 'Sac de vêtements',
		weight = 450,
		stack = true,
		close = true,
		client = {
			image = 'containers/outfitbag.webp'
		}

	},

	['id_card'] = {
		label = "Carte d'identité",
		weight = 5,
		stack = false,
		client = {
			image = 'documents/id_card.webp'
		}
	},
	['driving_license'] = {
		label = 'Permis de conduire',
		weight = 5,
		stack = false,
		client = {
			image = 'documents/driving_license.webp'
		}
	},
	['flying_license'] = {
		label = 'Licence de vol',
		weight = 5,
		stack = false,
		client = {
			image = 'documents/flying_license.webp'
		}
	},
	['boat_license'] = {
		label = 'Permis de navigation',
		weight = 5,
		stack = false,
		client = {
			image = 'documents/boat_license.webp'
		}
	},
	['weapon_license'] = {
		label = "Permis de port d'armes",
		weight = 5,
		stack = false,
		client = {
			image = 'general/weapon_license.webp'
		}
	},
	['police_badge'] = {
		label = 'Badge LSPD',
		weight = 5,
		stack = false,
		client = {
			image = 'documents/police_badge.webp'
		}
	},
	['sheriff_badge'] = {
		label = 'Badge BCSO',
		weight = 5,
		stack = false,
		client = {
			image = 'documents/sheriff_badge.webp'
		}
	},
	['fib_badge'] = {
		label = 'Badge FIB',
		weight = 5,
		stack = false,
		client = {
			image = 'documents/fib_badge.webp'
		}
	},
	['electronics'] = {
		label = 'Pièces électroniques',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'tech/electronics.webp'
		}

	},

	['paper'] = {
		label = 'Papier',
		weight = 10,
		stack = true,
		close = true,
		client = {
			image = 'documents/paper.webp'
		}

	},

	['compost'] = {
		label = 'Compost',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'farming/compost.webp'
		}

	},

	['copper'] = {
		label = 'Plaque de cuivre',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'materials/copper.webp'
		}

	},

	['rccar'] = {
		label   = 'RC Car',
		weight  = 2000,
		stack   = false,
		close   = true,
		consume = 1,
		client  = {
			image = 'tech/rc_car.webp'
		}
	},

	['420-bar'] = {
		label = 'Canna Choc',
		stack = false,
		usetime = 1500,
		consume = 1,
		client = {
			image = 'food/420-bar.webp'
		}
	},

	["aguafresca"] = {
		label = "Agua fresca pastèque",
		weight = 330,
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/aguafresca.webp'
		}
	},

	["aguafreslemon"] = {
		label = "Agua fresca citron",
		weight = 330,
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/aguafreslemon.webp'
		}
	},

	["aguamelon"] = {
		label = "Agua fresca melon",
		weight = 330,
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/aguamelon.webp'
		}
	},

	["ak47_blueprint"] = {
		label = "Blueprint",
		description = "Il s'agit du plan d'assemblage d'un fusil d'assaut",
		client = {
			image = 'misc/blueprint.webp'
		}
	},

	["ak47body"] = {
		label = "Armature fusil d'assaut",
		stack = true,
		close = true,
		weight = 4500,
		client = {
			image = 'weapons/ak47body.webp'
		}
	},

	["amaretti"] = {
		label = "Amaretto",
		weight = 1000,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'drinks/amaretti.webp'
		}

	},

	['ambeer'] = {
		label = 'Bière A.M 33cl',
		stack = false,
		close = true,
		--degrade =20160,
		client = {
			image = 'drinks/ambeer.webp'
		}
	},

	['apple'] = {
		label = 'Pomme',
		stack = true,
		close = true,
		client = {
			image = 'food/apple.webp'
		}
	},

	["arma_armacaopistola"] = {
		label = "Crosse pistolet",
		stack = true,
		close = true,
		weight = 1000,
		client = {
			image = 'weapons/arma_armacaopistola.webp'
		}
	},

	["arma_cano"] = {
		label = "Canon pistolet",
		stack = true,
		close = true,
		weight = 1000,
		client = {
			image = 'weapons/arma_cano.webp'
		}
	},

	['at_muzzle_squared_result'] = {
		label = "Compensateur",
		weight = 560,
		client = {
			image = 'weapons/at_muzzle_squared_result.webp'
		}
	},

	["avocado"] = {
		label = "Avocat",
		weight = 300,
		-- degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/avocado.webp'
		}
	},

	["avocado_salad"] = {
		label = "La Ensalada avocado",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/avocado_salad.webp'
		}
	},

	["b52"] = {
		label = "COCKTAIL B52",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/b52.webp'
		}
	},

	['bacon'] = {
		label = 'Bacon',
		weight = 200,
		--degrade =4320,
		stack = true,
		client = {
			image = 'ingredients/bacon.webp'
		}
	},

	["baileys"] = {
		label = "Baileys",
		weight = 1000,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'drinks/baileys.webp'
		}
	},

	["basil"] = {
		label = "Basilic",
		weight = 20,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/basil.webp'
		}

	},

	["bcoffeeglass"] = {
		label = "Mug en verre",
		stack = true,
		close = true,
		weight = 10,
		client = {
			image = 'containers/bcoffeeglass.webp'
		}
	},

	["bcream"] = {
		label = "Crème fraîche",
		weight = 200,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/bcream.webp'
		}
	},

	["beef"] = {
		label = "Boeuf",
		weight = 350,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'hunting/raw_beef.webp'
		}
	},

	["bhighcoffeeglasscup"] = {
		label = "Verre vide",
		stack = true,
		close = true,
		weight = 5,
		client = {
			image = 'drinks/bhighcoffeeglasscup.webp'
		}
	},

	["bitecookies"] = {
		label = "Cookies",
		--degrade =7200,
		stack = false,
		close = true,
		client = {
			image = 'food/bitecookies.webp'
		}
	},

	["bitesalad"] = {
		label = "Salavocat",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/bitesalad.webp'
		}
	},

	['bleuterd'] = {
		label = 'Bleuterd Champagne',
		weight = 750,
		stack = false,
		close = true,
		client = {
			image = 'drinks/bleuterd.webp',

		}
	},

	["blueberry"] = {
		label = "Myrtille",
		weight = 10,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'plants/blueberry_fruit.webp'
		}
	},

	["bolchips"] = {
		label = "Paquet de chips",
		--degrade =1440,
		close = true,
		client = {
			image = 'food/chipsl.webp'
		}
	},

	["bolpistache"] = {
		label = "Bol de pistache",
		--degrade =1440,
		close = true,
		client = {
			image = 'ingredients/pistachio.webp'
		}
	},

	['book2'] = {
		label = "Livre",
		weight = 450,
		client = {
			image = 'books/book2.webp'
		}
	},

	["bregularcup"] = {
		label = "Cup pour bubble tea",
		stack = true,
		close = true,
		weight = 10,
		client = {
			image = 'drinks/bregularcup.webp'
		}
	},

	["brussian"] = {
		label = "Russe blanc",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/brussian.webp'
		}
	},

	['burger'] = {
		label = 'Burger',
		weight = 225,
	},

	["burgerbun2"] = {
		label = "Pain burger",
		weight = 20,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'food/burgerbun.webp'
		}

	},

	["burrito_poiv"] = {
		label = "Burrito poivron",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/burrito.webp'
		}
	},

	["burritobeef"] = {
		label = "Burrito boeuf",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/burrito.webp'
		}
	},

	["burritochick"] = {
		label = "Burrito poulet ",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/burrito.webp'
		}
	},

	["burritomushroom"] = {
		label = "Burrito champignon",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/burrito.webp'
		}
	},

	["burritopork"] = {
		label = "Burrito porc",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/burrito.webp'
		}
	},

	["burritotomato"] = {
		label = "Burrito tomato",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/burrito.webp'
		}
	},

	["butter"] = {
		label = "Beurre",
		weight = 250,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/milkbutter.webp'
		}
	},

	["carano_beer"] = {
		label = "Bière Carano",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/carano_beer.webp'
		}
	},

	["champagne"] = {
		label = "Champagne 75cl",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/eg_champagne.webp'
		}
	},

	["champignon"] = {
		label = "Champignon",
		weight = 200,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/champignon.webp'
		}
	},

	['chaser'] = {
		label = 'Barre choco Chaser',
		weight = 70,
		--degrade =7200,
		stack = false,
		close = true,
		client = {
			image = 'food/chaser.webp'
		}

	},

	["cheddar2"] = {
		label = "Cheddar",
		weight = 150,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/cheddar2.webp'
		}
	},

	['cherenkov-vodka'] = {
		label = 'Bouteille de vodka 70cl',
		weight = 700,
		stack = false,
		close = true,
		--degrade =20160,
		client = {
			image = 'drinks/cherenkov-vodka_1.webp'
		}
	},

	["chicken_strips_raw"] = {
		label = "Filet de poulet",
		weight = 1000,
		--degrade =4320,
		stack = true,
		client = {
			image = 'ingredients/chicken_strips_raw.webp'
		}

	},

	["chicken_wings_raw"] = {
		label = "Ailes de poulet",
		weight = 1000,
		--degrade =4320,
		stack = true,
		client = {
			image = 'ingredients/chicken_wings_raw.webp'
		}
	},

	["chickenbaconranch"] = {
		label = "Chickensoul",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/chickenbaconranch.webp'
		}
	},

	["chillypepper"] = {
		label = "Piment",
		weight = 2,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/chillypepper.webp'
		}
	},

	["citronvert"] = {
		label = "Citron vert",
		--degrade =4320,
		stack = true,
		close = true,
		weight = 90,
		client = {
			image = 'ingredients/lime.webp'
		}
	},

	["classictuna"] = {
		label = "DickThon",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/classictuna.webp'
		}
	},

	["cockmolotov"] = {
		label = "Cocktail MOLOTOV",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/cockmolotov.webp'
		}
	},

	["cocktail-1"] = {
		label = "Golem",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/cocktail-1.webp'
		}
	},

	["cocktail_cubalibre"] = {
		label = "Lisa Simpson",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/cocktail_cubalibre.webp'
		}
	},

	["cocktail_mojito"] = {
		label = "Virgin Mojito",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/cocktail_mojito.webp'
		}
	},

	["cocktailglass"] = {
		label = "Verre à cocktail",
		weight = 280,
		stack = true,
		close = true,
		client = {
			image = 'drinks/cocktailglass.webp'
		}
	},

	["cocktailpine"] = {
		label = "Bahama Mamas",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/cocktailpine.webp'
		}

	},

	['coffe'] = {
		label = 'Café',
		weight = 330,
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/coffe.webp'
		}
	},

	["coffee_frappuccino"] = {
		label = "Frappuccino",
		stack = true,
		close = true,
		weight = 110,
		--degrade =14400,
		client = {
			status = { thirst = 220000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = {
				model = 'ng_proc_coffee_01a',
				pos = vec3(0.008, 0.0, -0.05),
				rot = vec3(0.0, 0.0, -40.0)
			},
			usetime = 7500,
			image = 'drinks/coffee_frappuccino.webp'
		},
	},

	["cointreau"] = {
		label = "Cointreau",
		weight = 1000,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'drinks/cointreau.webp'
		}
	},

	['cola'] = {
		label = 'E-Cola',
		weight = 330,
		--degrade =20160,
		close = true,
		client = {
			image = 'drinks/cola.webp'
		}
	},

	['cookbook'] = {
		label = "Livre de Cuisine",
		weight = 680,
		client = {
			image = 'books/cookbook.webp'
		}
	},

	["cookies"] = {
		label = "Boîte de cookies",
		weight = 200,
		--degrade =7200,
		client = {
			status = { hunger = 3000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'bzzz_foodpack_donut002',
				bone = 18905,
				pos = vec3(0.13, 0.050, 0.020),
				rot = vec3(-50.0, 100.0, 270.0)
			},
			image = 'food/cookies.webp',
			usetime = 7500,
		},
	},

	["coriandre"] = {
		label = "Coriandre",
		weight = 20,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/coriandre.webp'
		}
	},

	['costa_del_perro'] = {
		label = 'Costa Del Perro',
		weight = 750,
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/costa_del_perro.webp'
		}
	},

	['crack'] = {
		label = 'Crack',
		client = {
			image = 'drugs/crack.webp'
		}
	},

	["cranberryjuice1"] = {
		label = "Jus de Cranberry",
		weight = 1000,
		--degrade =20160,
		stack = true,
		close = true,
		client = {
			image = 'drinks/cranberryjuice1.webp'
		}

	},

	["crevette"] = {
		label = "Crevette",
		weight = 30,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/crevette.webp'
		}
	},

	["cucumberseeds"] = {
		label = "Graine de Concombre",
		stack = true,
		close = true,
		weight = 2,
		client = {
			image = 'plants/cucumberseeds.webp'
		}
	},

	["cupcakebite"] = {
		label = "Boîte de cupcakes",
		weight = 440,
		--degrade =7200,
		client = {
			image = 'food/cupcakebite.webp',
			status = { hunger = 30000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'bzzz_foodpack_donut002',
				bone = 18905,
				pos = vec3(0.13, 0.050, 0.020),
				rot = vec3(-50.0, 100.0, 270.0)
			},
			usetime = 7500,
		},
	},

	["dbcocktail"] = {
		label = "Virgin sex on the beach",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/dbcocktail_1.webp'
		}
	},

	["drygrapes"] = {
		label = "Raisin Sec",
		weight = 125,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/drygrapes.webp'
		}
	},

	['dusche'] = {
		label = 'Bière Dusche Gold 33cl',
		stack = false,
		close = true,
		--degrade =20160,
		client = {
			image = 'drinks/beer_dusche.webp'
		}
	},

	['earings'] = {
		label = 'Paire de boucles d\'oreilles',

		weight = 5,
		stack = true,
		client = {
			image = 'jewelry/earings.webp'
		}
	},

	['eg_champagne'] = {
		label = 'Bouteille de champagne 75cl',
		stack = false,
		close = true,
		client = {
			image = 'drinks/eg_champagne.webp'
		}

		--degrade =20160,
	},

	["eg_ramen"] = {
		label = "Uwu Ramen",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/eg_ramen.webp'
		}
	},

	["eg_red-wine-bottle"] = {
		label = "Vin rouge 75cl",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/red-wine-bottle.webp'
		}
	},

	["eg_white-wine-bottle"] = {
		label = "Vin blanc 75cl",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/white-wine-bottle.webp'
		}
	},

	['egg'] = {
		label = 'Oeuf',
		weight = 60,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'food/egg_raw.webp'
		}
	},

	["eggs2"] = {
		label = "Oeufs",
		weight = 360,
		--degrade =4320,
		description = "6 oeufs bien frais",
		stack = true,
		close = true,
		client = {
			image = 'ingredients/eggs2.webp'
		}

	},

	['energy_drink'] = {
		label = 'Boisson énergisante',
		weight = 500,
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/energy_drink.webp'
		}
	},

	["epice"] = {
		label = "Épices",
		weight = 200,
		--degrade =10080,
		stack = true,
		close = true,
		description = "Mélange 3 épices",
		client = {
			image = 'ingredients/epice.webp'
		}
	},

	['fishsticks'] = {
		label = 'Fish Sticks',
		weight = 350,
		-- degrade =7200,
		client = {
			image = 'ingredients/fishsticks.webp',
			status = { hunger = 40000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'prop_food_chips',
				pos = vec3(0.10481743508058, -0.036111390612349, 0.04267740098206),
				rot = vec3(103.21442515504, -56.891696322558, -175.04921773538)
			},
			usetime = 5000,
		},
	},

	["flour1"] = {
		label = "Farine",
		--degrade =10080,
		stack = true,
		close = true,
		description = "Pas à foutre dans le nez HEIN !",
		client = {
			image = 'ingredients/flour1.webp'
		}

	},

	['flute_glass'] = {
		label = 'Flûte à champagne',
		weight = 200,
		stack = false,
		close = true,
		client = {
			image = 'containers/flute_glass.webp'
		}
	},

	["food_bag"] = {
		label = "Commande à livrer",
		client = {
			image = 'containers/food_bag.webp'
		}
	},

	['frozenburger'] = {
		label = 'Burger Surgelés',
		weight = 400,
		--degrade =10080,
		client = {
			image = 'ingredients/frozenburger.webp',
			status = { hunger = 100000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'prop_cs_burger_01',
				pos = vec3(0.05, -0.02, -0.03),
				rot = vec3(150.0, 340.0, 170.0)
			},
			usetime = 7500,
		},
	},

	['frozenpizzacheese'] = {
		label = 'Pizza surgelée 4 fromages',
		weight = 800,
		-- degrade =10080,
		client = {
			image = 'ingredients/frozenpizzacheese.webp',
			status = { hunger = 100000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'knjgh_pizzaslice4',
				pos = vec3(0.0500, -0.0300, -0.0700),
				rot = vec3(300.0, -10.0, 160.0),
				bone = 60309
			},
			usetime = 7500,
		},
	},

	['frozenpizzamargherita'] = {
		label = 'Pizza surgelée jambon-emmental',
		weight = 800,
		-- degrade =10080,
		client = {
			status = { hunger = 100000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'knjgh_pizzaslice2',
				pos = vec3(0.0500, -0.0300, -0.0700),
				rot = vec3(300.0, -10.0, 160.0),
				bone = 60309
			},
			usetime = 7500,
			image = 'ingredients/frozenpizzamargherita.webp'

		},
	},

	['frozenpizzapeperoni'] = {
		label = 'Pizza surgelée chorizo',
		weight = 800,
		--degrade =10080,
		client = {
			status = { hunger = 100000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'knjgh_pizzaslice5',
				pos = vec3(0.0500, -0.0300, -0.0700),
				rot = vec3(300.0, -10.0, 160.0),
				bone = 60309
			},
			usetime = 7500,
			image = 'ingredients/frozenpizzapeperoni.webp'
		},
	},

	['fruitbasket'] = {
		label = 'Panier à fruit',
		weight = 250,
		stack = true,
		close = true,
		client = {
			image = 'food/fruit-box.webp'
		}
	},

	['fruitcrate'] = {
		label = 'Caisse à fruit',
		weight = 250,
		stack = false,
		close = true,
		client = {
			image = 'food/fruit-box.webp'
		}
	},

	["galliano"] = {
		label = "Galliano",
		weight = 1000,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'drinks/galliano.webp'
		}
	},

	["gelatine"] = {
		label = "Gélatine",
		stack = true,
		close = true,
		weight = 60,
		client = {
			image = 'ingredients/gelatine.webp'
		}
		--degrade =10080,
	},

	['gin1'] = {
		label = 'Bouteille de gin 70cl',
		weight = 750,
		stack = false,
		close = true,
		client = {
			image = 'drinks/gin1.webp'
		}
		--degrade =20160,
	},

	["glassbottle"] = {
		label = "Bouteille en verre vide 75cl",
		weight = 1000,
		stack = true,
		close = true,
		client = {
			image = 'containers/glassbottle.webp'
		}

	},

	["goodbread"] = {
		label = "Pain à croq'",
		weight = 10,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/goodbread.webp'
		}
	},

	["grape"] = {
		label = "Raisin rouge",
		weight = 120,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'food/grape.webp'
		}
	},

	["guacamole"] = {
		label = "Guacamole",
		weight = 80,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/guacamole.webp'
		}
	},

	["hawk"] = {
		label = "Tomahawk",
		stack = true,
		close = true,
		weight = 1000,
		--degrade =4320,
		client = {
			image = 'hunting/hawk.webp'
		}
	},

	["hotchocolate"] = {
		label = "Uwu Choco",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/cc-hotchoclate.webp'
		}
	},

	['hotdog'] = {
		label = 'Hotdog',
		weight = 120,
		--degrade =20160,
		stack = false,
		close = true,

	},

	['hotdog4'] = {
		label = 'Hotdogs surgelés',
		weight = 240,
		-- degrade =10080,
		client = {
			status = { hunger = 50000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'prop_cs_hotdog_01',
				pos = vec3(0.06, -0.01, -0.03),
				rot = vec3(60.0, -90.0, 0.0)
			},
			usetime = 7500,
			image = 'food/hotdog.png'
		},
	},

	["hunting-meat"] = {
		label = " T-bone",
		stack = true,
		close = true,
		weight = 900,
		client = {
			image = 'hunting/hunting-meat.webp'
		}
		--degrade =4320,
	},

	["ice"] = {
		label = "Glace",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'food/ice.webp'
		}
	},

	["icedtea"] = {
		label = "Thé glacé",
		--degrade =20160,
		close = true,
		client = {
			image = 'drinks/icedtea.webp'
		}
	},

	["ingredient_meatduck"] = {
		label = "Magret de Canard",
		weight = 200,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/ingredient_meatduck.webp'
		}
	},

	["ingredients_milk"] = {
		label = "Lait",
		weight = 1000,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/ingredients_milk.png'
		}
	},

	["italian_bmt"] = {
		label = "Salamissionnaire",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/spicyitalian.webp'
		}
	},

	["jagerbomb"] = {
		label = "Jammer bomb",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/jagerbomb.webp'
		}
	},

	["jagercerbere"] = {
		label = "Jammer Heister 70cl",
		weight = 1000,
		--degrade =20160,
		stack = true,
		close = true,
		client = {
			image = 'drinks/jagercerbere.webp'
		}
	},

	["jarritosfraise"] = {
		label = "Jarritos fraise",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/jarritosfraise.webp'
		}
	},

	["jarritosmandarin"] = {
		label = "Jarritos mandarine",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/jarritosmandarin.webp'
		}
	},

	["jarritosmango"] = {
		label = "Jarritos mangue",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/jarritosmango.webp'
		}
	},

	["jolly_ranchers"] = {
		label = "Jolly Ranchers",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'food/jolly_ranchers.webp'
		}
	},

	['juiceJarApple'] = {
		label = 'Jus de pomme 1L',
		weight = 1000,
		--degrade =20160,
		client = {
			status = { thirst = 37500 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = {
				model = 'bottle_mint',
				pos = vec3(0.01, -0.02, -0.15),
				rot = vec3(5.0, 5.0, -180.5)
			},
			image = 'drinks/juiceJarApple.webp',
			usetime = 7500,
		},
	},

	['juiceJarGrape'] = {
		label = 'Jus de raisin 1L',
		weight = 1000,
		--degrade =20160,
		client = {
			status = { thirst = 37500 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = {
				model = 'bottle_purple',
				pos = vec3(0.01, -0.02, -0.15),
				rot = vec3(5.0, 5.0, -180.5)
			},
			usetime = 7500,
			image = 'drinks/juiceJarGrape.webp'
		},
	},

	['juice_b'] = {
		label = 'Jus d\'ananas 1L',
		weight = 1000,
		--degrade =20160,
		client = {
			status = { thirst = 37500 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = {
				model = 'bottle_yellow',
				pos = vec3(0.01, -0.02, -0.15),
				rot = vec3(5.0, 5.0, -180.5)
			},
			usetime = 7500,
			image = 'drinks/juice_b.webp'
		},
	},

	['juicejarorange'] = {
		label = 'Jus d\'orange 1L',
		weight = 1000,
		--degrade =20160,
		client = {
			image = 'drinks/juiceJarOrange.webp',
			status = { thirst = 37500 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = {
				model = 'bottle_orange',
				pos = vec3(0.01, -0.02, -0.15),
				rot = vec3(5.0, 5.0, -180.5)
			},
			usetime = 7500,
		},
	},

	["lemon"] = {
		label = "Citron",
		weight = 120,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'food/lemon.webp'
		},
	},

	["limonade"] = {
		label = "Limonade",
		weight = 1000,
		--degrade =20160,
		stack = true,
		close = true,
		client = {
			image = 'drinks/limonade.webp',
			status = { thirst = 37500 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = {
				model = 'bottle_yellow',
				pos = vec3(0.01, -0.02, -0.15),
				rot = vec3(5.0, 5.0, -180.5)
			},
			usetime = 7500,
		},

	},

	["liqueurcafe"] = {
		label = "Liqueur de café",
		weight = 1000,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'drinks/liqueurcafe.webp'
		}
	},

	["longe"] = {
		label = "Longe de porc",
		stack = true,
		search = "longe",
		client = {
			image = 'hunting/longe.webp'
		}
	},

	["marinade"] = {
		label = "Marinade",
		weight = 80,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/marinade.webp'
		}
	},

	["marshmellow"] = {
		label = "Guimauve",
		weight = 5,
		--degrade =7200,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/marshmellow.webp'
		}
	},

	['martini1'] = {
		label = 'Bouteille de martini 70cl',
		stack = false,
		close = true,
		client = {
			image = 'drinks/martini1.webp'
		}
		--degrade =20160,
	},

	["mead_peach"] = {
		label = "Liqueur de pêche",
		weight = 1000,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'drinks/mead_peach.webp'
		}

	},

	["meat2"] = {
		label = "Filet mignon",
		stack = true,
		close = true,
		weight = 500,
		client = {
			image = 'hunting/meat2.webp'
		}
		--degrade =4320,
	},

	["melon"] = {
		label = "Melon",
		weight = 600,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/melon1.webp'
		}
	},

	['metalspring'] = {
		label = "Ressort",
		weight = 30,
		client = {
			image = 'mechanic/metalspring.webp'
		}

	},

	['meteorite'] = {
		label = 'Barre choco Meteorite',
		weight = 70,
		--degrade =7200,
		stack = false,
		close = true,
		client = {
			image = 'food/meteorite.webp'
		}

	},

	["mex_burger"] = {
		label = "Burger Mexicain",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/burger_chsbcn.webp'
		}
	},

	["milkbucket"] = {
		label = "Seau de lait",
		--degrade =4320,
		stack = false,
		client = {
			image = 'ingredients/farming_milkbucket.webp'
		}
	},

	["mint"] = {
		label = "Feuille de menthe",
		weight = 20,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'food/mint.webp'
		}

	},

	["money_ink_set"] = {
		label = "Colorant alimentaire",
		stack = true,
		close = true,
		weight = 100,
		--degrade =10080,
	},

	["morceau_chocolat"] = {
		label = "Morceaux de chocolat",
		weight = 20,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/morceau_chocolat.webp'
		}
	},

	['mount_whiskey'] = {
		label = 'The Mount Whiskey',
		weight = 1000,
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/mount_whiskey.webp'
		}
	},

	['mustard'] = {
		label = 'Moutarde',
		weight = 500,
		client = {
			image = 'ingredients/mustard.webp',
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'Vous avez bu de la... moutarde !?'
		}
	},

	["nachos"] = {
		label = "Nachos Cheddar",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/nachos_1.webp'
		}
	},

	["nachosguaca"] = {
		label = "Nachos Guacamole",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/nachosguaca.webp'
		}
	},

	["nachossalsa"] = {
		label = "Nachos Salsa",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/nachossalsa.webp'
		}

	},

	['nogo_vodka'] = {
		label = 'Nogo Vodka',
		weight = 700,
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/nogo_vodka.webp'
		}
	},

	["noodlebeef"] = {
		label = "Nouilles instantanées boeuf",
		stack = true,
		close = true,

		weight = 80,
		--degrade =10080,
		client = {
			status = { hunger = 50000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = {
				model = 'v_ret_fh_noodle',
				pos = vec3(-0.03, 0.01, 0.05),
				rot = vec3(0.0, 0.0, -40.0)
			},
			usetime = 7500,
			image = 'food/noodlebeef.webp'
		},
	},

	["noodlechicken"] = {
		label = "Nouilles instantanées poulet",
		stack = true,
		close = true,

		weight = 80,
		--degrade =10080,
		client = {
			image = 'food/noodlechicken.webp',
			status = { hunger = 50000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bttle' },
			prop = {
				model = 'v_ret_fh_noodle',
				pos = vec3(-0.03, 0.01, 0.05),
				rot = vec3(0.0, 0.0, -40.0)
			},
			usetime = 7500,
		},
	},

	["noodleseafood"] = {
		label = "Nouilles instantanées crabe",
		stack = true,
		close = true,

		weight = 80,
		--degrade =10080,
		client = {
			image = 'food/noodleseafood.webp',
			status = { hunger = 50000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = {
				model = 'v_ret_fh_noodle',
				pos = vec3(-0.03, 0.01, 0.05),
				rot = vec3(0.0, 0.0, -40.0)
			},
			usetime = 7500,
		},
	},

	["nori"] = {
		label = "Feuille de nori",
		weight = 10,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'food/nori.webp'
		}
	},

	["np_vodka"] = {
		label = "Vodka",
		weight = 1000,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'drinks/np_vodka.webp'
		}

	},

	["onion"] = {
		label = "Oignon",
		weight = 100,
		-- degrade =4320,
		stack = true,
		close = true,
		description = "Attention les yeux !",
		client = {
			image = 'ingredients/onion.webp'
		}
	},

	["onionseeds"] = {
		label = "Graine d'oignon",
		stack = true,
		close = true,
		weight = 2,
		client = {
			image = 'farming/onionseeds.webp'
		}
	},

	["opmcocktail"] = {
		label = "Sex on the beach",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/opmcocktail.webp'
		}
	},

	['orange'] = {
		label = 'Orange',
		weight = 200,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'food/orange.webp'
		}
	},

	["peppero"] = {
		label = "Poivron",
		weight = 150,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/peppero.webp'
		}
	},

	["pinksprinkledonut"] = {
		label = "Donut à la fraise",
		--degrade =7200,
		stack = false,
		close = true,
		client = {
			image = 'food/pinksprinkledonut.webp'
		}
	},

	['piswasser'] = {
		label = 'Bière Pride Pißwasser 33cl',
		weight = 330,
		stack = false,
		close = true,
		client = {
			image = 'drinks/beer_pisswaser.webp'
		}
		--degrade =20160,
	},

	['pizza'] = {
		label = "Part de pizza",
		weight = 75,
		client = {
			image = 'food/pizza-slice.webp'
		}
	},

	["pmozzarella"] = {
		label = "Mozzarella",
		weight = 125,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/pmozzarella_1.webp'
		}
	},

	["pork_flank"] = {
		label = "Flanc de porc",
		stack = true,
		search = "pork",
		client = {
			image = 'hunting/pork_flank.webp'
		}
	},

	["pork_rib"] = {
		label = "Rib de porc",
		stack = true,
		search = "pork",
		client = {
			image = 'hunting/pork_rib.webp'
		}

	},

	["potato"] = {
		label = "Pomme de terre",
		weight = 145,
		description = "Aussi sale que ... heu bon laissez tomber",
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'farming/potato.webp'
		}
	},

	["primadonna"] = {
		label = "Vin rosé 75cl",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/primadonna.webp'
		}
	},

	["purplevodka"] = {
		label = "Vodka bonbon 70cl",
		weight = 1000,
		--degrade =20160,
		stack = true,
		close = true,
		client = {
			image = 'drinks/purplevodka.webp'
		}
	},

	["quesadillachick"] = {
		label = "Quesadillas au poulet",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/quesadillas.webp'
		}
	},

	["quesadillapoivron"] = {
		label = "Quesadillas aux poivrons",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/quesadillas.webp'
		}
	},

	['raine'] = {
		label = 'Eau gazeuze',
		weight = 500,
		--degrade =20160,
		close = true,
		client = {
			image = 'drinks/raine.webp'
		}
	},

	["raisin"] = {
		label = "Raisin noir",
		stack = true,
		--degrade =4320,
		close = true,
		weight = 120,
		client = {
			image = 'ingredients/raisin.webp'
		}
	},

	["raw_lard"] = {
		label = "Lard de porc",
		stack = true,
		search = "lard",
		client = {
			image = 'hunting/raw_lard.webp'
		}
	},

	["raw_pork"] = {
		label = "Tranche de porc",
		weight = 100,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'hunting/raw_pork.webp'
		}


	},

	["rawsugar"] = {
		label = "Sucre de canne",
		weight = 10,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/rawsugar.webp'
		}

	},

	["redbeans"] = {
		label = "Haricot rouge",
		weight = 25,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/redbeans.webp'
		}
	},

	["redgull"] = {
		label = "RedGull",
		weight = 250,
		-- degrade =20160,
		stack = true,
		close = true,
		client = {
			image = 'drinks/redgull.webp'
		}

	},

	["redwine"] = {
		label = "vin rouge de luxe 75cl",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/redwine.webp'
		}
	},

	['rhum1'] = {
		label = 'Bouteille de rhum 70cl',
		stack = false,
		close = true,
		client = {
			image = 'drinks/rhum.webp'
		}
		--degrade =20160,
	},

	["rice"] = {
		label = "Riz",
		weight = 500,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'food/rice.webp'
		}
	},

	["rifle-body"] = {
		label = "Armature fusil compact",
		stack = true,
		close = true,
		search = "rifle",
		weight = 1800,
		client = {
			image = 'weapons/rifle-body.webp'
		}
	},

	["rifle-stock"] = {
		label = "Crosse fusil compact",
		stack = true,
		close = true,
		search = "rifle",
		weight = 1800,
		client = {
			image = 'weapons/rifle-stock.webp'
		}
	},

	['rockford_hill'] = {
		label = 'Rockford Hill Réserve',
		weight = 750,
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/rockfordhill.webp'
		}
	},

	['romantic_book'] = {
		label = 'Roman d\'amour',
		weight = 650,
		stack = true,
		client = {
			image = 'books/romantic_book.webp'
		}
	},

	["rroulette"] = {
		label = "Russian Roulette",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/rroulette.webp'
		}
	},

	["sakebottle"] = {
		label = "Sake",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/sakebottle.webp'
		}
	},

	["salad"] = {
		label = "Salade",
		weight = 285,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/ingredient_salad.webp'
		}

	},

	["saladechick"] = {
		label = "La Ensalada Poulet",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/saladechick.webp'
		}
	},

	["saladveggie"] = {
		label = "La Ensalada veggie",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/saladveggie.webp'
		}
	},

	["salami"] = {
		label = "Salami",
		weight = 280,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'food/salami.webp'
		}

	},

	["salmonbites"] = {
		label = "Saumon",
		stack = true,
		close = true,
		weight = 120,
		client = {
			image = 'ingredients/salmonbites.webp'
		}
	},

	["salmonsalad"] = {
		label = "La Cumcumber special",
		stack = true,
		--degrade =14400,
		close = true,
		client = {
			image = 'food/salmonsalad.webp'
		}
	},

	["sambuca"] = {
		label = "Sambuca",
		weight = 1000,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'drinks/sambuca.webp'
		}
	},

	["sauce_salsa"] = {
		label = "Sauce Salsa",
		weight = 80,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/sauce_salsa.webp'
		}
	},

	["sesameoil"] = {
		label = "Sésame",
		weight = 120,
		--degrade =70080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/sesameoil.webp'
		}


	},

	["shot"] = {
		label = "Jammer Cerberus",
		--degrade =14400,
		stack = true,
		close = true,
		client = {
			image = 'drinks/shot1.webp'
		}
	},

	["shot2"] = {
		label = "Vodka Candy",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/shot2.webp'
		}

	},

	['shot_glass'] = {
		label = 'Verre à shot',
		weight = 50,
		stack = false,
		close = true,
		client = {
			image = 'containers/shot_glass.webp'
		}
	},

	["shotgun_body"] = {
		label = "Crosse pompe",
		stack = true,
		close = true,
		weight = 1380,
		client = {
			image = 'weapons/shotgun_body.webp'
		}
	},

	["shotgun_suppressor"] = {
		label = "Silencieux",
		stack = true,
		close = true,
		weight = 1000,
		client = {
			image = 'weapons/shotgun_suppressor.webp'
		}
	},

	["simplyorange"] = {
		label = "Jus d'orange cocktail",
		weight = 1000,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'drinks/simplyorange.webp'
		}

	},

	["smg-body"] = {
		label = "Canon smg",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'weapons/smg-body.webp'
		}
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 330,
		stack = true,
		close = true,
		client = {
			image = 'food/sprunk.webp'
		}
	},

	['sprunk-mockup'] = {
		label = 'Cannette de Sprunk 33cl',
		weight = 330,
		close = true,
		client = {
			image = 'drinks/sprunk-mockup.webp'
		}
		--degrade =4320,
	},

	['sprunklight'] = {
		label = 'Cannette de Diet Sprunk 33cl',
		weight = 330,
		--degrade =20160,
		close = true,
		client = {
			image = 'drinks/sprunk-light-mockup.webp'
		}
	},

	["steak_raw"] = {
		label = "Bifteck",
		stack = true,
		close = true,
		weight = 130,
		client = {
			image = 'hunting/steak_raw.webp'
		}
		--degrade =4320,
	},

	["strawberry"] = {
		label = "Fraise",
		weight = 10,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'food/farming_strawberry.webp'
		}
	},

	["sucre"] = {
		label = "Morceaux de sucre",
		weight = 1000,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/vu_sugar.webp'
		}

	},

	["syrupglucose"] = {
		label = "Sirop de glucose",
		stack = true,
		close = true,
		weight = 200,
		client = {
			image = 'ingredients/syrupglucose.webp'
		}

		--degrade =10080,
	},

	["syrupgrenadine"] = {
		label = "Sirop de grenadine",
		weight = 1000,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/syrupgrenadine.webp'
		}
	},

	["syruppina"] = {
		label = "Sirop pina Colada",
		weight = 1000,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/syruppina.webp'
		}

	},

	['taco'] = {
		label = 'Taco',
		weight = 100,
		stack = false,
		close = true,
		--degrade =20160,
	},

	["taco2"] = {
		label = "Le Taco Boeuf",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/taco.webp'
		}

	},

	["tacochick"] = {
		label = "Le Taco Poulet",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/taco_chicken.webp'
		}

	},

	["tacofish"] = {
		label = "Le Taco crevette",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/taco_fish.webp'
		}
	},

	["tacoporc"] = {
		label = "Le Taco porc",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/tacoporc.webp'
		}
	},

	["tacoveggie"] = {
		label = "Le Taco poivron",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/tacovegi.webp'
		}
	},

	["tacovegi"] = {
		label = "Le Taco tomate",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/tacovegi.webp'
		}
	},

	["tapiocapearls"] = {
		label = "Perle de tapioca",
		weight = 10,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/tapiocapearls.webp'
		}

	},

	['tequila'] = {
		label = 'Bouteille de Téquila 70cl',
		weight = 700,
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/tequila.webp'
		}
	},

	['tomato'] = {
		label = 'Tomate',
		weight = 130,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'farming/tomato.webp'
		}
	},

	["tomatoes"] = {
		label = "Tomate",
		weight = 130,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/tomatoes.webp'
		}
	},

	['tomatoseed'] = {
		label = 'Graines de tomate',
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'farming/tomatoseed.webp'
		}
	},

	['toothpaste'] = {
		label = 'Dentifrice',
		weight = 120,
		stack = true,
		client = {
			image = 'medical/toothpaste2.webp'
		}
	},

	["tortilla"] = {
		label = "Tortilla",
		weight = 40,
		--degrade =10080,
		stack = true,
		close = true,
		description = "Un peu sec, tout seul",
		client = {
			image = 'ingredients/tortilla.webp'
		}
	},

	['toy-alpaca'] = {
		label = "Alpa-Calin",
		weight = 125,
		client = {
			image = 'toys/toy-alpaca.webp'
		}
	},

	['toy-bear'] = {
		label = "Oursami",
		weight = 125,
		client = {
			image = 'toys/toy-bear.webp'
		}
	},

	['toy-camel'] = {
		label = "Chamélia",
		weight = 125,
		client = {
			image = 'toys/toy-camel.webp'
		}
	},

	['toy-cow'] = {
		label = "Moona",
		weight = 125,
		client = {
			image = 'toys/toy-cow.webp'
		}
	},

	['toy-crocodile'] = {
		label = "Aligou",
		weight = 125,
		client = {
			image = 'toys/toy-crocodile.webp'
		}
	},

	['toy-dog'] = {
		label = "Moka",
		weight = 125,
		client = {
			image = 'props/xm3_prop_xm3_toy_dog_01a.webp'
		}
	},

	['toy-dolphin'] = {
		label = "Sillage",
		weight = 125,
		client = {
			image = 'toys/toy-dolphin.webp'
		}
	},

	['toy-donkey'] = {
		label = "Azzuro",
		weight = 125,
		client = {
			image = 'toys/toy-donkey.webp'
		}
	},

	['toy-egg'] = {
		label = "Egglet",
		weight = 200,
		client = {
			image = 'toys/toy-egg.png'
		}
	},

	['toy-elephant'] = {
		label = "Pachy",
		weight = 125,
		client = {
			image = 'toys/toy-elephant.webp'
		}
	},

	['toy-frog'] = {
		label = "Pondy",
		weight = 125,
		client = {
			image = 'toys/toy-frog.webp'
		}
	},

	['toy-giraffe'] = {
		label = "Savannah",
		weight = 125,
		client = {
			image = 'toys/toy-giraffe.webp'
		}
	},

	['toy-hedgehog'] = {
		label = "Picou",
		weight = 125,
		client = {
			image = 'toys/toy-hedgehog.webp'
		}

	},

	['toy-kangaroo'] = {
		label = "Hopper",
		weight = 125,
		client = {
			image = 'toys/toy-kangaroo.webp'
		}
	},

	['toy-koala'] = {
		label = "Snoozy",
		weight = 125,
		client = {
			image = 'toys/toy-koala.webp'
		}
	},

	['toy-lion'] = {
		label = "Roary",
		weight = 125,
		client = {
			image = 'toys/toy-lion.webp'
		}
	},

	['toy-orca'] = {
		label = "Ruk",
		weight = 125,
		client = {
			image = 'toys/toy-orca.webp'
		}
	},

	['toy-otter'] = {
		label = "Binky",
		weight = 125,
		client = {
			image = 'toys/toy-otter.webp'
		}
	},

	['toy-owl'] = {
		label = "Zephyr",
		weight = 125,
		client = {
			image = 'toys/toy-owl.webp'
		}
	},

	['toy-panda'] = {
		label = "Wubba",
		weight = 125,
		client = {
			image = 'toys/toy-panda.webp'
		}
	},

	['toy-parrot'] = {
		label = "Rio",
		weight = 125,
		client = {
			image = 'toys/toy-parrot.webp'
		}
	},

	['toy-penguin'] = {
		label = "Flake",
		weight = 125,
		client = {
			image = 'toys/toy-penguin.webp'
		}
	},

	['toy-rhino'] = {
		label = "Thorn",
		weight = 125,
		client = {
			image = 'toys/toy-rhino.webp'
		}
	},

	['toy-seahorse'] = {
		label = "Seafinn",
		weight = 125,
		client = {
			image = 'toys/toy-seahorse.webp'
		}
	},

	['toy-sealion'] = {
		label = "Misty",
		weight = 125,
		client = {
			image = 'toys/toy-sealion.webp'
		}
	},

	['toy-seaturtle'] = {
		label = "Slowpoke",
		weight = 125,
		client = {
			image = 'toys/toy-seaturtle.webp'
		}

	},

	['toy-shark'] = {
		label = "Shiver",
		weight = 125,
		client = {
			image = 'toys/toy-shark.webp'
		}

	},

	['toy-snowleopard'] = {
		label = "Crystal",
		weight = 125,
		client = {
			image = 'toys/toy-snowleopard.webp'
		}
	},

	['toy-stingray'] = {
		label = "Pearl",
		weight = 125,
		client = {
			image = 'toys/toy-stingray.webp'
		}
	},

	['toy-tiger'] = {
		label = "Storm",
		weight = 125,
		client = {
			image = 'toys/toy-tiger.webp'
		}
	},

	['toy-unicorn'] = {
		label = "Seraphina",
		weight = 125,
		client = {
			image = 'toys/toy-unicorn.webp'
		}

	},

	['toy-whale'] = {
		label = "Echo",
		weight = 125,
		client = {
			image = 'toys/toy-whale.webp'
		}
	},

	["tunameat"] = {
		label = "Thon",
		weight = 1000,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/tunameat.webp'
		}
	},

	["turkeybreast"] = {
		label = "BITEcoin",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/turkeybreast.webp'
		}
	},

	["uwububbleteablueberry"] = {
		label = "Bubble Uwu Myrtille",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/uwububbleteablueberry.webp'
		}

	},

	["uwububbleteamint"] = {
		label = "Bubble Uwu Menthe",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/uwububbleteamint.webp'
		}
	},

	["uwububbletearose"] = {
		label = "Bubble Uwu Fraise",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/uwububbletearose.webp'
		}
	},

	["uwuchocsandy"] = {
		label = "Uwu Croq",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/uwuchocsandy.webp'
		}
	},

	["uwucupcake"] = {
		label = "Uwu CupCake",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/uwucupcake.webp'
		}
	},

	["uwumintessence"] = {
		label = "Liqueur de menthe",
		weight = 700,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'drinks/uwumintessence.webp'
		}
	},

	["uwushushi"] = {
		label = "Uwu Sushi",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/uwushushi.webp'
		}
	},

	["uwuvanillasandy"] = {
		label = "Uwu Croq vanille",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/uwuvanillasandy.webp'
		}
	},

	["uzi_fold_stock"] = {
		label = "Crosse uzi",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'weapons/uzi_fold_stock.webp'
		}
	},

	["vanilla"] = {
		label = "Vanille",
		weight = 60,
		--degrade =10080,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/vanilla.webp'
		}

	},

	["veggiedelite"] = {
		label = "Veggie",
		stack = false,
		close = true,
		client = {
			image = 'food/veggiedelite.webp'
		}
	},

	['vine'] = {
		label = 'Bouteille de vin rouge 75cl',
		stack = false,
		close = true,
		client = {
			image = 'drinks/vine.webp'
		}
		--degrade =20160,
	},

	['vinewood_blanc'] = {
		label = 'Vinewood Sauvignon Blanc',
		weight = 750,
		stack = false,
		close = true,
		client = {
			image = 'drinks/vinewood_blanc.webp'
		}
	},

	['vinewood_red'] = {
		label = 'Vinewood Red Zinfadel',
		weight = 750,
		stack = false,
		close = true,
		client = {
			image = 'drinks/vinewood_red.webp'
		}
	},

	['vinewoodrose'] = {
		label = 'Bouteille de vin rosé 75cl',
		stack = false,
		close = true,
		client = {
			image = 'drinks/vinewoodrose.webp'
		}
		--degrade =20160,
	},

	['vineyards'] = {
		label = 'Bouteille de vin blanc 75cl',
		stack = false,
		close = true,
		client = {
			image = 'drinks/vineyards.webp'
		}

		--degrade =20160,
	},

	['vodka'] = {
		label = "Vodka",
		weight = 1100,
		client = {
			image = 'drinks/vodka.webp'
		}
	},

	["w-srawchickenwings"] = {
		label = "Pilon de poulet",
		weight = 1000,
		--degrade =4320,
		stack = true,
		client = {
			image = 'ingredients/w-srawchickenwings.webp'
		}
	},

	["wafflego"] = {
		label = "Sachet de gauffres",
		stack = true,
		close = true,
		weight = 250,
		--degrade =7200,
		client = {
			image = 'ingredients/wafflego.webp',
			status = { hunger = 30000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'bzzz_foodpack_donut002',
				bone = 18905,
				pos = vec3(0.13, 0.050, 0.020),
				rot = vec3(-50.0, 100.0, 270.0)
			},
			usetime = 7500,
		},
	},

	["watermelon_dice"] = {
		label = "Cube de pastèque",
		--degrade =4320,
		stack = true,
		close = true,
		weight = 120,
		client = {
			image = 'ingredients/watermelon_dice.webp'
		}
	},

	['weapon_toy'] = {
		label = "Jouet",
		weight = 125,
		client = {
			image = 'weapons/weapon_toy.webp'
		}
	},

	['wheat'] = {
		label = 'Blé',
		weight = 45,
		dagrade = 4320,
		stack = true,
		close = true,
		client = {
			image = 'food/farming_wheat.webp'
		}
	},

	['whiskey_glass'] = {
		label = 'Verre à whisky',
		weight = 200,
		stack = false,
		close = true,
		client = {
			image = 'drinks/whiskey_glass.webp'
		}
	},

	['whisky'] = {
		label = 'Bouteille de whisky 70cl',
		stack = false,
		close = true,
		client = {
			image = 'drinks/whisky.webp'
		}
		--degrade =20160,
	},

	["whiskycoca"] = {
		label = "Wish cola",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/whiskycoca.webp'
		}
	},

	["white_raisin"] = {
		label = "Raisin blanc",
		weight = 120,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/white_raisin.webp'
		}
	},

	["whitechocolatedonut"] = {
		label = "Donut chocolat blanc",
		--degrade =7200,
		stack = false,
		close = true,
		client = {
			image = 'food/whitechocolatedonut.webp'
		}
	},

	['wine_glass'] = {
		label = 'Verre à vin',
		weight = 200,
		stack = false,
		close = true,
		client = {
			image = 'drinks/wine_glass.webp'
		}
	},

	["radio_server"] = {
		label = "Radio Server",
		weight = 1000,
		stack = false,
		close = true,
		consume = 0,
		server = {
			export = 'stRadio.use_radioserver',
		},
	},

	["hack_chip"] = {
		label = "Hack chip",
		weight = 1000,
		stack = false,
		close = true,
		consume = 0,
		server = {
			export = 'stRadio.use_hackchip',
		},
	},

	["radio_jammer"] = {
		label = "Radio Jammer",
		weight = 1000,
		stack = false,
		close = true,
		consume = 0,
		server = {
			export = 'stRadio.use_radiojammer',
		},
	},

	["radio_powerbank"] = {
		label = "Portable battery",
		weight = 1000,
		stack = false,
		close = true,
		consume = 0,
		server = {
			export = 'stRadio.use_portbat',
		},
	},

	["radio_red"] = {
		label = "Color frame red",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_blue"] = {
		label = "Color frame blue",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_purple"] = {
		label = "Color frame purple",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_pink"] = {
		label = "Color frame pink",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_lightblue"] = {
		label = "Color frame lightblue",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_orange"] = {
		label = "Color frame orange",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_yellow"] = {
		label = "Color frame yellow",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_green"] = {
		label = "Color frame green",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_white"] = {
		label = "Color frame white",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_grey"] = {
		label = "Color frame grey",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["bat_low"] = {
		label = "Cheap battery",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["bat_medium"] = {
		label = "Common battery",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["bat_high"] = {
		label = "Premium battery",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["chip_5g"] = {
		label = "5G Chip",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["chip_ghost"] = {
		label = "Ghost Chip",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["chip_antihack"] = {
		label = "Antihack Chip",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["mic_walkie"] = {
		label = "Talkie Shoulder Microphone",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["radio_monitor"] = {
		label = "Hospital monitor",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["radio_server_bat"] = {
		label = "Car battery",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["radio_cables"] = {
		label = "Radio Jammer",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["radio_tool"] = {
		label = "Radio tools",
		weight = 1000,
		stack = false,
		close = true,
		consume = 0,
		server = {
			export = 'stRadio.use_repairRadio',
		},
	},

	["radio_broken"] = {
		label = "Broken radio",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["chip_waterproof"] = {
		label = "Waterproof radio",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	['broccoli'] = {
		label = 'Brocoli',
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = 'farming/broccoli.webp'
		}

	},

	['pepper'] = {
		label = 'Poivron',
		weight = 175,
		stack = true,
		close = true,
		client = {
			image = 'farming/capsicum.webp'
		}

	},

	['carrot'] = {
		label = 'Carotte',
		weight = 125,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/ingredients_carrot.webp'
		}

	},

	["cucumber"] = {
		label = "Concombre ",
		weight = 200,
		--degrade =4320,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/ingredient_cucumber.webp'
		}

	},

	['eggplant'] = {
		label = 'Aubergine',
		weight = 400,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/eggplant.webp'
		}

	},

	['pumpkin'] = {
		label = 'Citrouille',
		weight = 2500,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/ingredients_pumpkin.webp'
		}

	},

	['sugarbeet'] = {
		label = 'Betterave sucrière',
		weight = 750,
		stack = true,
		close = true,
		client = {
			image = 'farming/sugarbeet.webp'
		}

	},

	['tomato_seed'] = {
		label = 'Graines de tomate',
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'farming/tomato_seed.webp'
		},
		server = {
			export = 'aquiver-greenhouse.useSeed'
		}
	},

	['potato_seed'] = {
		label = 'Plants de pomme de terre',
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'farming/potato_seed_1.webp'
		},
		server = {
			export = 'aquiver-greenhouse.useSeed'
		}
	},

	['broccoli_seed'] = {
		label = 'Graines de brocoli',
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'farming/broccoli_seed.webp'
		},
		server = {
			export = 'aquiver-greenhouse.useSeed'
		}
	},

	['carrot_seed'] = {
		label = 'Graines de carotte',
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'farming/carrot_seed.webp'
		},
		server = {
			export = 'aquiver-greenhouse.useSeed'
		}
	},

	['cucumber_seed'] = {
		label = 'Graines de concombre',
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'farming/cucumber_seed.webp'
		},
		server = {
			export = 'aquiver-greenhouse.useSeed'
		}
	},

	['eggplant_seed'] = {
		label = "Graines d'aubergine",
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'farming/eggplant_seed.webp'
		},
		server = {
			export = 'aquiver-greenhouse.useSeed'
		}
	},

	['pumpkin_seed'] = {
		label = 'Graines de citrouille',
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'farming/pumpkin_seed.webp'
		},
		server = {
			export = 'aquiver-greenhouse.useSeed'
		}
	},

	['sugarbeet_seed'] = {
		label = 'Graines de betterave',
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'farming/sugarbeet_seed.webp'
		},
		server = {
			export = 'aquiver-greenhouse.useSeed'
		}
	},

	['capsicum_seed'] = {
		label = 'Graines de poivron',
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'farming/capsicum_seed.webp'
		},
		server = {
			export = 'aquiver-greenhouse.useSeed'
		}
	},

	['drill'] = {
		label = 'Perceuse',
		weight = 2500,
		stack = false,
		close = true,
		client = {
			image = 'illegal/drill.webp'
		}

	},
	['dildo'] = {
		label = 'Ding dong',
		weight = 100,
		stack = true,
		close = true,
		description =
		'Et bien... Si vos parents vous demandent, c\'est un masseur de joue, on tapote avec le bout rose en tenant fermement les c... la poignée',
		client = {
			image = 'erp/dildo.webp'
		}

	},

	['weed_seed'] = {
		label = 'Graine de weed',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'drugs/weed-seed.webp'
		},
		server = {
			export = 'aquiver-greenhouse.useSeed'
		}

	},

	['coca_seed'] = {
		label = 'Graines de coca',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'drugs/indica_seed.webp'
		},
		server = {
			export = 'aquiver-greenhouse.useSeed'
		}

	},

	['instantphoto'] = {
		label = 'Instantané',
		stack = false,
		description = 'Une photo instantanée prise dans un photomaton.',
		client = {
			export = 'fiv3devs_photobooth.usePolaroid',
			image = 'misc/photo.webp'
		},
	},

	['teddy-bear'] = {
		label = 'Charmant nounours',
		weight = 500,
		stack = true,
		close = true,
		client = {
			image = 'toys/teddy-bear.webp',
		},
		server = {
			export = 'ls_utils.bear'
		}

	},

	['cooler'] = {
		label = 'Glacière',
		weight = 2500,
		stack = true,
		close = true,
		description = 'Pratique pour transporter et conserver du frais !',
		client = {
			image = 'camping/cooler.webp',
			event = 'ls_utils:cooler'
		},
		server = {

		}

	},



	----------------------------------------
	-- ====================================================================
	--  PÊCHE — alt_fishing : tous les items de la ressource regroupés ici
	-- ====================================================================
	----------------------------------------

	-- -- Cannes à pêche --
	["fishing_rod"] = {
		label = "Canne à pêche",
		weight = 1500,
		stack = false,
		close = true,
		consume = 0,
		client = {
			image = 'hunting/fishingrod.webp'
		},
		server = {
			export = 'alt_fishing.useRod'
		}
	},

	["fishing_rod_pro"] = {
		label = "Canne à pêche pro",
		weight = 1200,
		stack = false,
		close = true,
		consume = 0,
		client = {
			image = 'seaworld/fishing_rod1.webp'
		},
		server = {
			export = 'alt_fishing.useRod'
		}
	},

	["fishing_rod_carbon"] = {
		label = "Canne carbone",
		weight = 900,
		stack = false,
		close = true,
		consume = 0,
		client = {
			image = 'seaworld/fishingrod2.webp'
		},
		server = {
			export = 'alt_fishing.useRod'
		}
	},

	-- --- Appâts ---
	["bait_worm"] = {
		label = "Ver de terre",
		weight = 50,
		stack = true,
		close = true,
		client = {
			image = 'seaworld/p_baitworm01x.webp'
		}
	},

	["bait_lure"] = {
		label = "Leurre",
		weight = 30,
		stack = true,
		close = true,
		client = {
			image = 'seaworld/p_finisdfishlurelegendary01x.webp'
		}
	},

	["bait_shrimp"] = {
		label = "Crevette (appât)",
		weight = 40,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/shrimp.webp'
		}
	},

	["bait_minnow"] = {
		label = "Vairon (appât vivant)",
		weight = 60,
		stack = true,
		close = true,
		client = {
			image = 'seaworld/minnow.webp'
		}
	},

	-- --- Outils de farm d'appâts ---
	["wormspowder"] = {
		label = "Poudre à vers",
		weight = 200,
		stack = false,
		close = true,
		consume = 0,
		client = {
			image = 'medical/adderall_bottle.webp'
		},
		server = {
			export = 'alt_fishing.useBaitTool'
		}
	},

	["minnowstrap"] = {
		label = "Nasse à vairons",
		weight = 800,
		stack = false,
		close = true,
		consume = 0,
		client = {
			image = 'seaworld/crabnest.webp'
		},
		server = {
			export = 'alt_fishing.useBaitTool'
		}
	},

	-- --- Poissons ---
	["salmon"] = {
		label = "Saumon",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/r_chinook_salmon.webp'
		}
	},

	["catfish"] = {
		label = "Poisson chat",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/r_catfish.webp'
		}
	},

	["perch"] = {
		label = "Perche",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'hunting/perch.webp'
		}
	},

	["crappy"] = {
		label = "Crapet",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/crappy.webp'
		}
	},

	["trout"] = {
		label = "Truite",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/r_brown_trout.webp'
		}
	},

	["sardine"] = {
		label = "Sardine",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/o_pacific_sardine.webp'
		}
	},

	["shark"] = {
		label = "Requineau",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = false,
		client = {
			image = 'seaworld/fishing-shark.webp'
		}
	},

	["fishing-sockeye-salmon"] = {
		label = "Saumon rouge",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/r_coho_salmon.webp'
		}
	},

	["fishing-mackerel"] = {
		label = "Maquereau",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/fishing-mackerel.webp'
		}
	},

	["snapper"] = {
		label = "Vivaneau",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/o_red_snapper.webp'
		}
	},

	["pike"] = {
		label = "Brochet",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/northernpike.webp'
		}
	},

	["mahifish"] = {
		label = "Mahi-mahi",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = false,
		client = {
			image = 'seaworld/o_mahi_mahi.webp'
		}

	},

	["coralfish"] = {
		label = "Poisson corail",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/coralfish.webp'
		}
	},

	['sea-bass'] = {
		label = 'Bar commun',
		stack = true,
		degrade = 480,
		description = 'Gare au bar à thym !',
		client = {
			image = 'seaworld/o_white_seabass.webp'
		}

	},

	['mullet'] = {
		label = 'Mulet',
		stack = true,
		degrade = 480,
		client = {
			image = 'seaworld/mullet.webp'
		}

	},

	['rockfish'] = {
		label = 'Sébaste',
		stack = true,
		degrade = 480,
		client = {
			image = 'seaworld/rockfish.webp'
		}

	},

	['moray'] = {
		label = 'Murène',
		stack = true,
		degrade = 480,
		client = {
			image = 'seaworld/moray.webp'
		}

	},

	['swordfish'] = {
		label = 'Espadon juvénile',
		degrade = 480,
		stack = true,
		client = {
			image = 'seaworld/swordfish.webp'
		}

	},

	['largemouthbass'] = {
		label = 'Achigan à grande bouche',
		degrade = 480,
		stack = true,
		client = {
			image = 'seaworld/largemouthbass.webp'
		}

	},

	['bluegill'] = {
		label = 'Perche soleil',
		degrade = 480,
		stack = true,
		client = {
			image = 'seaworld/bluegill.webp'
		}

	},

	['r_common_carp'] = {
		label = 'Carpe commune',
		degrade = 480,
		stack = true,
		client = {
			image = 'seaworld/r_common_carp.webp'
		}

	},

	-- --- Déchets (repêchés à la ligne) ---
	["old_boot"] = {
		label = "Vieille botte",
		weight = 800,
		stack = true,
		close = true,
		client = {
			image = 'activities/fishingboot.webp'
		}
	},

	["rusty_can"] = {
		label = "Canette rouillée",
		weight = 200,
		stack = true,
		close = true,
		client = {
			image = 'garbage/trash_can_1.webp'
		}
	},

	["old_tire"] = {
		label = "Vieux pneu",
		weight = 9000,
		stack = true,
		close = true,
		client = {
			image = 'mechanic/tire.webp'
		}
	},

	["seaweed_clump"] = {
		label = "Paquet d'algues",
		weight = 400,
		stack = true,
		close = true,
		client = {
			image = 'seaworld/seaweed.webp'
		}
	},

	-- --- Divers ---
	["fishmap"] = {
		label = "Carte des zones de pêche",
		stack = true,
		close = true,
		client = {
			image = 'activities/fishmap.webp'
		}

	},

	-- ── EVIDENCE ──────────────────────────────────────────────────────────────────

	['instant_camera'] = {
		label       = 'Appareil photo instantané',
		weight      = 0,
		stack       = false,
		close       = false,
		description = 'Un appareil photo simple conçu pour prendre des photos sur une scène de crime.',
		client      = {
			image = 'police/polaroid.png'
		}
	},

	['photo'] = {
		label       = 'Photo',
		weight      = 0,
		stack       = false,
		close       = false,
		description = 'Une image capturée sur une scène de crime.',
		client      = {
			image = 'police/photos.png'
		}
	},

	['evidence_a'] = {
		label       = 'Preuve : Balle',
		weight      = 0,
		stack       = false,
		close       = false,
		description = 'Preuve obtenue sur une scène de crime.',
		client      = {
			image = 'police/evidence_a.png'
		}
	},

	['evidence_az'] = {
		label       = 'Preuve',
		weight      = 0,
		stack       = false,
		close       = false,
		description = 'Preuve obtenue sur une scène de crime.',
		client      = {
			image = 'police/evidence_az.png'
		}
	},

	['evidence_b'] = {
		label       = 'Preuve : Véhicule',
		weight      = 0,
		stack       = false,
		close       = false,
		description = 'Preuve obtenue sur une scène de crime.',
		client      = {
			image = 'police/evidence_b.png'
		}
	},

	['evidence_n'] = {
		label       = 'Preuve : Impact',
		weight      = 0,
		stack       = false,
		close       = false,
		description = 'Preuve obtenue sur une scène de crime.',
		client      = {
			image = 'police/evidence_n.png'
		}
	},

	['evidence_ne'] = {
		label       = 'Preuve : Empreinte',
		weight      = 0,
		stack       = false,
		close       = false,
		description = 'Preuve obtenue sur une scène de crime.',
		client      = {
			image = 'police/evidence_ne.png'
		}
	},

	['evidence_r'] = {
		label       = 'Preuve : Sang',
		weight      = 0,
		stack       = false,
		close       = false,
		description = 'Preuve obtenue sur une scène de crime.',
		client      = {
			image = 'police/evidence_r.png'
		}
	},

	['evidence_ro'] = {
		label       = 'Preuve',
		weight      = 0,
		stack       = false,
		close       = false,
		description = 'Preuve obtenue sur une scène de crime.',
		client      = {
			image = 'police/evidence_ro.png'
		}
	},

	['evidence_v'] = {
		label       = 'Preuve : Drogue',
		weight      = 0,
		stack       = false,
		close       = false,
		description = 'Preuve obtenue sur une scène de crime.',
		client      = {
			image = 'police/evidence_v.png'
		}
	},

	['report_evidence'] = {
		label       = 'Rapport de preuves',
		weight      = 0,
		stack       = false,
		close       = false,
		description = 'Permet de rassembler jusqu\'à 4 preuves.',
		client      = {
			image = 'police/report_evidence.png'
		}
	},

	-- ── EQUIPMENT ─────────────────────────────────────────────────────────────────

	['k9'] = {
		label       = 'Sifflet K9',
		weight      = 0,
		stack       = false,
		close       = false,
		description = 'Utilisez le sifflet pour appeler l\'unité canine.',
		client      = {
			image = 'police/whistle.png'
		}
	},

	['lspd_badge'] = {
		label       = 'Badge de police',
		weight      = 0,
		stack       = false,
		close       = false,
		description =
		'Votre pièce d\'identité en tant qu\'officier de police, incluant votre grade et votre numéro de badge.',
		client      = {
			image = 'police/lspd_badge.png'
		}
	},

	['bcsd_badge'] = {
		label       = 'Badge de shérif',
		weight      = 0,
		stack       = false,
		close       = false,
		description = "Votre pièce d'identité en tant qu'agent du shérif, incluant votre grade et votre numéro de badge.",
		client      = {
			image = 'police/bcsd_badge.png'
		}
	},

	['police_cad'] = {
		label       = 'Tablette de police',
		weight      = 0,
		stack       = false,
		close       = false,
		description = 'Votre tablette personnelle contenant toutes les informations de la police de San Andreas.',
		client      = {
			image = 'police/tablet.png'
		}
	},

	['megaphone'] = {
		label       = 'Mégaphone',
		weight      = 0,
		stack       = false,
		close       = false,
		description = 'Un mégaphone pour faire porter votre voix.',
		client      = {
			image = 'police/megaphone.png'
		}
	},


	['redwood_pack'] = {
		label = 'Paquet de cigarettes Redwood',
		stack = false,
		weight = 50,
		close = true,
		client = {
			export = 'devcore_smoke.OpenCigPack',
			image = 'misc/cigsredwood2.webp'
		}
	},

	['cigsredwood1'] = {
		label = 'Paquet Redwood Original',
		stack = false,
		weight = 50,
		close = true,
		client = {
			export = 'devcore_smoke.OpenCigPack'
		}
	},

	['classic_lighter'] = {
		label = 'Briquet classique',
		stack = false,
		weight = 250,
		close = true,
		client = {
			export = 'devcore_smoke.UseLighter',
			image = 'smokes/cheap_lighter.webp'
		}
	},

	['gold_lighter'] = {
		label = 'Briquet doré',
		stack = false,
		weight = 600,
		close = true,
		client = {
			export = 'devcore_smoke.UseLighter',
			image = 'smokes/gold_lighter.webp'
		}
	},

	['cherry_liquid'] = {
		label = 'Liquide cerise',
		stack = false,
		weight = 250,
		close = false,
		client = {
			image = 'smokes/cherry_liquid.webp'
		}
	},

	['blueberry_liquid'] = {
		label = 'Liquide myrtille',
		stack = false,
		weight = 250,
		close = false,
		client = {
			image = 'smokes/blueberry_liquid.webp'
		}
	},

	['cig_redwood'] = {
		label = 'Cigarette Redwood',
		stack = true,
		weight = 20,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/cig_redwood.webp'
		}
	},

	['cig_marlboro'] = {
		label = 'Cigarette Redwood Original',
		stack = true,
		weight = 20,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/cig_redwood.webp'
		}
	},

	['og_kush_weed'] = {
		label = 'Weed Og Kush',
		stack = true,
		weight = 1,
		close = false,
		client = {
			image = 'smokes/og_kush_weed.webp'
		}
	},

	['banana_kush_weed'] = {
		label = 'Weed Banana Kush',
		stack = true,
		weight = 1,
		close = false,
		client = {
			image = 'smokes/og_kush_weed.webp'
		}
	},

	['purple_haze_weed'] = {
		label = 'Weed Purple Haze',
		stack = true,
		weight = 1,
		close = false,
		client = {
			image = 'smokes/purple_haze_weed.webp'
		}
	},

	['blue_dream_weed'] = {
		label = 'Weed Blue Dream',
		stack = true,
		weight = 1,
		close = false,
		client = {
			image = 'smokes/blue_dream_weed.webp'
		}
	},

	['og_kush_joint'] = {
		label = 'Joint Og Kush',
		stack = true,
		weight = 1,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/og_kush_joint.webp'
		}
	},

	['banana_kush_joint'] = {
		label = 'Joint Banana Kush',
		stack = true,
		weight = 1,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/banana_kush_joint.webp'
		}
	},

	['purple_haze_joint'] = {
		label = 'Joint Purple Haze',
		stack = true,
		weight = 1,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/purple_haze_joint.webp'
		}
	},

	['blue_dream_joint'] = {
		label = 'Joint Blue Dream',
		stack = true,
		weight = 1,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/blue_dream_joint.webp'
		}
	},

	['ocb_paper'] = {
		label = 'Papier à rouler LS',
		stack = false,
		weight = 20,
		close = true,
		client = {
			export = 'devcore_smoke.UseRollingPaper',
			image = 'smokes/rolling_paper_blue.webp'
		}
	},

	['raw_paper'] = {
		label = 'Papier à rouler Raw',
		stack = false,
		weight = 20,
		close = true,
		client = {
			export = 'devcore_smoke.UseRollingPaper',
			image = 'smokes/rolling_paper_green.webp'
		}
	},

	['cigar_cuban'] = {
		label = 'Cigare cubain',
		stack = true,
		weight = 100,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/cigar_cuban.webp'
		}
	},


	['cigar_redwood'] = {
		label = 'Cigare Redwood',
		stack = true,
		weight = 100,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/cigar_redwood.webp'
		}
	},

	['bong'] = {
		label = 'Bong',
		stack = false,
		weight = 150,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'drugs/bong.webp'
		}
	},

	['vape'] = {
		label = 'Cigarette électronique',
		stack = false,
		weight = 100,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/vape.webp'
		}
	},

	['puff_vape'] = {
		label = 'Vape jetable',
		stack = false,
		weight = 100,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/puff_vape.webp'
		}
	},

	['classic_hookah'] = {
		label = 'Chicha',
		stack = false,
		weight = 1000,
		close = true,
		client = {
			export = 'devcore_smoke.UseHookah',
			image = 'smokes/classic_hookah.webp'
		}
	},

	['hookah_wooden_coals'] = {
		label = 'Charbons en bois',
		stack = true,
		weight = 50,
		close = false,
		client = {
			image = 'smokes/hookah_wooden_coals.webp'
		}
	},

	['hookah_coconut_coals'] = {
		label = 'Charbons de coco',
		stack = true,
		weight = 50,
		close = false,
		client = {
			image = 'smokes/hookah_wooden_coals.webp'
		}
	},

	['hookah_bamboo_coals'] = {
		label = 'Charbons de bambou',
		stack = true,
		weight = 50,
		close = false,
		client = {
			image = 'smokes/hookah_wooden_coals.webp'
		}
	},

	['hookah_blueberry_tobacco'] = {
		label = 'Tabac à chicha myrtille',
		stack = true,
		weight = 100,
		close = false,
		client = {
			image = 'smokes/hookah_blueberry_tobacco.webp'
		}
	},

	['hookah_raspberry_tobacco'] = {
		label = 'Tabac à chicha framboise',
		stack = true,
		weight = 100,
		close = false,
		client = {
			image = 'smokes/hookah_raspberry_tobacco.webp'
		}
	},

	['hookah_blackberry_tobacco'] = {
		label = 'Tabac à chicha mûre',
		stack = true,
		weight = 100,
		close = false,
		client = {
			image = 'smokes/hookah_blackberry_tobacco.webp'
		}
	},

	['hookah_cherry_tobacco'] = {
		label = 'Tabac à chicha cerise',
		stack = true,
		weight = 100,
		close = false,
		client = {
			image = 'smokes/hookah_cherry_tobacco.webp'
		}
	},

	['redwood_cherry_chew'] = {
		label = 'Tabac à chiquer cerise',
		stack = false,
		weight = 100,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/redwood_cherry_chew.webp'
		}
	},

	['redwood_mint_chew'] = {
		label = 'Tabac à chiquer menthe',
		stack = false,
		weight = 100,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/redwood_mint_chew.webp'
		}
	},

	['redwood_blueberry_chew'] = {
		label = 'Tabac à chiquer myrtille',
		stack = false,
		weight = 100,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/redwood_blueberry_chew.webp'
		}
	},

	['redwood_vanilla_chew'] = {
		label = 'Tabac à chiquer vanille',
		stack = false,
		weight = 100,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/redwood_vanilla_chew.webp'
		}
	},

	['redwood_strawberry_chew'] = {
		label = 'Tabac à chiquer fraise',
		stack = false,
		weight = 100,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/redwood_strawberry_chew.webp'
		}
	},

	----------------------------------------
	-- TEST UI (refonte inventaire) : a supprimer apres validation en jeu
	-- Un item par niveau de rareté + quelques items par onglet. Sans image : teste le placeholder.

	['ui_test_common'] = { label = 'Test commun', weight = 100, category = 'food', description = 'Rareté commune (neutre).' },
	['ui_test_uncommon'] = { label = 'Test peu commun', weight = 100, rarity = 'uncommon', category = 'food' },
	['ui_test_rare'] = { label = 'Test rare', weight = 100, rarity = 'rare' },
	['ui_test_epic'] = { label = 'Test épique', weight = 100, rarity = 'epic' },
	['ui_test_legendary'] = { label = 'Test légendaire', weight = 100, rarity = 'legendary' },
	['ui_test_weapon'] = { label = 'Test arme', weight = 1000, stack = false, category = 'weapon', rarity = 'rare', durability = true },
	['ui_test_food'] = { label = 'Test nourriture', weight = 200, category = 'food', degrade = 60 },
	['ui_test_clothing'] = { label = 'Test vêtement', weight = 400, stack = false, category = 'clothing', rarity = 'uncommon' },

	["phone_black"] = {
		label = "Black Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["beer"] = {
		label = "Beer",
		weight = 1,
		stack = true,
		close = true,
	},

	["phone_green"] = {
		label = "Green Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["phone_orange"] = {
		label = "Orange Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["phone_pink"] = {
		label = "Pink Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["phone_purple"] = {
		label = "Purple Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["phone_red"] = {
		label = "Red Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["phone_yellow"] = {
		label = "Yellow Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["pizza_ham"] = {
		label = "Pizza Ham",
		weight = 1,
		stack = true,
		close = true,
	},

	["coffee"] = {
		label = "Coffee",
		weight = 1,
		stack = true,
		close = true,
	},

	["sandwich"] = {
		label = "Sandwich",
		weight = 1,
		stack = true,
		close = true,
	},

	["taco_chicken"] = {
		label = "Chicken Taco",
		weight = 1,
		stack = true,
		close = true,
	},

	["wine"] = {
		label = "Wine",
		weight = 1,
		stack = true,
		close = true,
	},

	["meth"] = {
		label = "Meth",
		weight = 1,
		stack = true,
		close = true,
	},

	["blackberry_ale"] = {
		label = "Blackberry Ale",
		weight = 1,
		stack = true,
		close = true,
	},

	["repairkit"] = {
		label = "Repair Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["phone_blue"] = {
		label = "Blue Phone",
		weight = 1,
		stack = true,
		close = true,
	},
}