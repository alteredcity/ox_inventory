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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'medical',
		label = "Ergotrate",
		description = "Vous croyez que je connais tous les médicaments ?",
		weight = 10,
		client = {
			image = 'medical/ergotrate.webp'
		}

	},

	['bandage'] = {
		category = 'medical',
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
		category = 'medical',
		label = "Codéine",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'medical/codeine.webp'
		}
	},

	['bloodsample'] = {
		category = 'medical',
		label = "Échantillon sanguin",
		client = {
			image = 'medical/bloodsample_1.webp'
		}
	},

	['ifak'] = {
		category = 'medical',
		label = 'trousse de secours',
		weight = 200,
		close = true,
		description = 'Peut être utilisé directement dans l\'inventaire, contient une trousse de premiers secours',
		client = {
			image = 'medical/ifak.webp'
		}
	},

	['painkillers'] = {
		category = 'medical',
		label = 'Antidouleurs',
		weight = 0,
		close = true,
		description = 'Peut être utilisé directement dans l\'inventaire pour réduire la douleur et le stress',
		client = {
			image = 'medical/painkillers.webp'
		}
	},

	['temporary_tourniquet'] = {
		category = 'medical',
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
		category = 'tech',
		label = 'Bipeur',
		weight = 10,
		close = true,
		description = 'Utilisé pour informer le personnel médical à l\'hôpital de l\'arrivée d\'un patient',
		client = {
			image = 'tech/pager.webp'
		}
	},

	['tourniquet'] = {
		category = 'medical',
		label = 'Garrot',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/tourniquet.webp'
		}
	},

	['field_dressing'] = {
		category = 'medical',
		label = 'Pansement de Terrain',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/field_dressing.webp'
		}
	},

	['elastic_bandage'] = {
		category = 'clothing',
		label = 'Bandage Élastique',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'clothing/elastic_bandage.webp'
		}
	},

	['quick_clot'] = {
		category = 'medical',
		label = 'Hémostatique Rapide',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/quick_clot.webp'
		}
	},

	['packing_bandage'] = {
		category = 'medical',
		label = 'Bandage Compressif',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/packing_bandage.webp'
		}
	},

	['sewing_kit'] = {
		category = 'medical',
		label = 'Kit de Couture',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/sewing_kit.webp'
		}
	},

	['epinephrine'] = {
		category = 'misc',
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
		category = 'medical',
		label = 'Morphine',
		weight = 10,
		close = true,
		description = 'La morphine diminue le pouls du corps et supprime la douleur',
		client = {
			image = 'medical/morphine.webp'
		}

	},

	['blood250ml'] = {
		category = 'medical',
		label = 'Poche de Sang 250ml',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/bloodbag_1.webp'
		}
	},

	['blood500ml'] = {
		category = 'medical',
		label = 'Poche de Sang 500ml',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/bloodbag.webp'
		}
	},

	['saline250ml'] = {
		category = 'medical',
		label = 'Solution Saline 250ml',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/saline250ml.webp'
		}
	},

	['saline500ml'] = {
		category = 'medical',
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
		category = 'medical',
		label = 'Kit de Réanimation d\'Urgence',
		weight = 10,
		close = true,
		description = '',
		client = {
			image = 'medical/emergency_revive_kit.webp'
		}
	},

	["medikit"] = {
		category = 'medical',
		label = "Medikit",
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'medical/medikit.webp'
		}
	},

	['stretcher'] = {
		category = 'medical',
		label = 'Civière',
		weight = 1000,
		close = true,
		description = 'Une civière médicale pour transporter les patients blessés',
		client = {
			image = 'medical/stretcher.webp'
		}
	},

	['wheelchair'] = {
		category = 'medical',
		label = 'Fauteuil Roulant',
		weight = 1000,
		close = true,
		description = '',
		client = {
			image = 'medical/wheelchair.webp'
		}
	},

	['crutch'] = {
		category = 'medical',
		label = 'Béquille',
		weight = 1000,
		close = true,
		description = '',
		client = {
			image = 'medical/crutch.webp'
		}
	},

	['bodybag'] = {
		category = 'tools',
		label = 'Sac Mortuaire',
		weight = 1000,
		close = true,
		description = 'Un sac pour mettre les corps des morts',
		client = {
			image = 'police/bodybag.webp'
		}
	},

	['ecg'] = {
		category = 'medical',
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
		category = 'medical',
		label = 'Tylenol',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/tylenol.webp'
		}
	},

	['peptobismol'] = {
		category = 'medical',
		label = 'Pepto-Bismol',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/peptobismol.webp'
		}
	},

	['loperamide'] = {
		category = 'medical',
		label = 'Loperamide',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/loperamide.webp'
		}

	},

	['aspirin'] = {
		category = 'medical',
		label = 'Aspirine',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/aspirin.webp'
		}
	},

	['ibuprofen'] = {
		category = 'medical',
		label = 'Ibuprofen',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/ibuprofen.webp'
		}
	},

	['dramamine'] = {
		category = 'medical',
		label = 'Dramamine',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/dramamine_1.webp'
		}
	},

	['covidvaccine'] = {
		category = 'medical',
		label = 'Vaccin COVID',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/covidvaccine.webp'
		}
	},

	['doxycycline'] = {
		category = 'medical',
		label = 'Doxycycline',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/doxycycline.webp'
		}
	},

	['azithromycin'] = {
		category = 'medical',
		label = 'Azithromycin',
		weight = 1,
		stack = true,
		close = true,

		client = {
			image = 'medical/azithromycin_1.webp'
		}
	},

	['acyclovir'] = {
		category = 'drugs',
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
		category = 'papers',
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
		category = 'papers',
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
		category = 'papers',
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
		category = 'misc',
		label = "Permis de conduire",
		weight = 0,
		stack = false,
		close = false,
		client = {
			image = 'general/driver_license.webp'
		}
	},

	['rentalpapers'] = {
		category = 'papers',
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
		category = 'papers',
		label = "Carte de membre Complex Fat",
		stack = true,
		close = true,
		client = {
			image = 'memberships/gym_membership.webp'
		}
	},

	["cooler_bag"] = {
		category = 'misc',
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
		category = 'misc',
		label = 'Licence d\'avocat',
		weight = 0,
		stack = false,
		close = true,

		client = {
			image = 'general/lawyerpass.webp'
		}
	},

	["security_card_04"] = {
		category = 'papers',
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
		category = 'misc',
		label = "Jeton",
		client = {
			image = 'activities/casino_chips.webp'
		}
	},

	----------------------------------------

	--Matériaux

	['powder'] = {
		category = 'misc',
		label = 'Poudre révélatrice',

		weight = 50,
		stack = true,
		client = {
			image = 'containers/powder.webp'
		}
	},

	["ammonium_nitrate"] = {
		category = 'drugs',
		label = "Nitrate d'ammonium",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/ammoniumnitrate.webp'
		}
	},

	["hydrogen"] = {
		category = 'drugs',
		label = "Hydrogène",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'illegal/hydrogen.webp'
		}
	},

	["pseudoefedrine"] = {
		category = 'medical',
		label = "Pseudoefedrine",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'medical/pseudophederine.webp'
		}
	},

	["red_sulfur"] = {
		category = 'drugs',
		label = "Souffre rouge",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/red_sulfur.webp'
		}
	},

	["oxygen"] = {
		category = 'medical',
		label = "Oxygène",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'medical/oxygen.webp'
		}
	},

	["sodium_hydroxide"] = {
		category = 'material',
		label = "Hydroxide de sodium",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'chemical/sodium_hydroxide.webp'
		}
	},

	['potassium_nitrate'] = {
		category = 'material',
		label = "Nitrate de potassium",
		stack = true,
		weight = 75,
		client = {
			image = 'chemical/potassium_nitrate.webp'
		}
	},

	['coal'] = {
		category = 'material',
		label = "Charbon",
		stack = true,
		weight = 5,
		client = {
			image = 'mining/coal.webp'
		}
	},

	['sulfur'] = {
		category = 'material',
		label = "Souffre",
		stack = true,
		weight = 5,
		client = {
			image = 'mining/sulfur.webp'
		}
	},

	["carbon"] = {
		category = 'material',
		label = "Carbone",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'mining/carbon.webp'
		}
	},

	["muriatic_acid"] = {
		category = 'drugs',
		label = "Acide muriatique",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/muriatic_acid.webp'
		}
	},

	["nitrogen"] = {
		category = 'material',
		label = "Nitrogène",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'materials/nitrogen.webp'
		}
	},

	["liquid_sulfur"] = {
		category = 'drugs',
		label = "Souffre liquide",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/liquid_sulfur.webp'
		}
	},

	["stone"] = {
		category = 'material',
		label = "Pierre",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'materials/stone.webp'
		}
	},

	["washed_stone"] = {
		category = 'material',
		label = "Pierre lavée",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'mining/washedstones.webp'
		}
	},

	["diamond"] = {
		category = 'misc',
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
		category = 'material',
		label = "Fer",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'mining/ironnugget.webp'
		}
	},

	['ironplate'] = {
		category = 'material',
		label = 'Plaque de fer',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'mining/ironplate.webp'
		}
	},

	["gold"] = {
		category = 'material',
		label = "Or",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'mining/gold_nugget.webp'
		}
	},

	["aluminum"] = {
		category = 'material',
		label = "Aluminium",
		stack = true,
		close = true,
		weight = 100,
		client = {
			image = 'materials/aluminium.webp'
		}
	},

	["brass"] = {
		category = 'material',
		label = "Laiton",
		stack = true,
		close = true,
		weight = 100,
		client = {
			image = 'materials/brass.webp'
		}
	},

	["steel"] = {
		category = 'material',
		label = "Acier",
		stack = true,
		close = true,
		weight = 100,
		client = {
			image = 'materials/steel_1.webp'
		}
	},

	["wood"] = {
		category = 'material',
		label = "Bois",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'materials/wood.webp'
		}
	},

	["packaged_plank"] = {
		category = 'material',
		label = "Planche de bois",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'materials/packaged_plank.webp'
		}
	},

	["cutted_wood"] = {
		category = 'material',
		label = "Bois Coupé",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'materials/cutted_wood.webp'
		}
	},

	["rubber"] = {
		category = 'material',
		label = "Caoutchouc",
		stack = true,
		close = true,
		weight = 50,
		client = {
			image = 'materials/rubber.webp'
		}
	},

	["plastic"] = {
		category = 'material',
		label = "Plastique",
		stack = true,
		close = true,
		weight = 50,
		client = {
			image = 'materials/plastic_1.webp'
		}
	},

	["wool"] = {
		category = 'material',
		label = "Laine",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'materials/wool.webp'
		}
	},

	["glassplate"] = {
		category = 'material',
		label = "Vitre",
		stack = true,
		close = true,
		weight = 100,
		client = {
			image = 'materials/glassplate.webp'
		}
	},

	["essence"] = {
		category = 'material',
		label = "Essence",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'chemical/essence.webp'
		}
	},

	["gazbottle"] = {
		category = 'misc',
		label = "Bouteille de gaz",
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'containers/gazbottle.webp'
		}
	},

	["petrol"] = {
		category = 'tools',
		label = "Pétrole",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'mechanic/petrol.webp'
		}
	},

	["petrol_raffin"] = {
		category = 'tools',
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
		category = 'misc',
		label = "Sachet vide",
		weight = 10,
		client = {
			image = 'containers/drugbags.webp'
		}
	},

	["drug_ecstasy"] = {
		category = 'drugs',
		label = "Ecstasy",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/Ecstasy.webp'
		}
	},

	["drug_lean"] = {
		category = 'drugs',
		label = "Lean",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/drug_lean.webp'
		}
	},

	["drug_lsd"] = {
		category = 'drugs',
		label = "LSD",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/drug_lsd_2.webp'
		}
	},

	["badlsdtab"] = {
		category = 'drugs',
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
		category = 'material',
		label = "Acide lysergique",
		weight = 2,
		client = {
			image = 'chemical/lysergic-acid.webp'
		}
	},

	["lsd_crystal"] = {
		category = 'drugs',
		label = "Cristal de LSD",
		weight = 10,
		client = {
			image = 'drugs/lsd_crystal.webp'
		}
	},

	["blank_blotter"] = {
		category = 'drugs',
		label = "Buvard vierge",
		client = {
			image = 'illegal/blank_blotter.webp'
		}
	},

	["lsdtab"] = {
		category = 'drugs',
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
		category = 'drugs',
		label = "Meth",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/drug_meth.webp'
		}
	},

	["opium"] = {
		category = 'drugs',
		label = "Opium",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/opium.webp'
		}
	},

	["cocaine"] = {
		category = 'drugs',
		label = "Cocaine",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'drugs/cocaine2.webp'
		}
	},

	["weed_cbd"] = {
		category = 'drugs',
		label = "Weed CBD",
		stack = true,
		close = true,
		weight = 1,
		client = {
			image = 'drugs/weed_cbd.webp'
		}
	},

	["green_gelato_cannabis"] = {
		category = 'food',
		label = "Green Gelato Cannabis",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'food/weed_gelato.webp'
		}
	},

	["marijuana"] = {
		category = 'drugs',
		label = "Marijuana",
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'drugs/marijuana3.webp'
		}
	},

	["cannabis"] = {
		category = 'drugs',
		label = "Cannabis",
		weight = 3,
		stack = true,
		close = true,
		client = {
			image = 'drugs/cannabis.webp'
		}
	},

	['empty-battery'] = {
		category = 'tools',
		label = "Batterie vide",
		weight = 700,
		client = {
			image = 'mechanic/empty-battery.webp'
		}
	},

	['chemical_kit'] = {
		category = 'material',
		label = "Kit de chimie",
		weight = 1000,
		client = {
			image = 'chemical/chemical_kit.webp'
		}
	},

	["cocaine_uncut"] = {
		category = 'drugs',
		label = "Pâte à coca",
		stack = true,
		close = true,

		weight = 80,
		client = {
			image = 'drugs/cocaine_uncut.webp'
		}
	},

	["cocaine_cut"] = {
		category = 'drugs',
		label = "Cocaïne préparée",
		stack = true,
		close = true,
		weight = 10,
		client = {
			image = 'drugs/cocaine_cut.webp'
		}
	},

	["meth_grey"] = {
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
		label = "Feuille à rouler",
		stack = true,
		close = true,
		weight = 10,
		client = {
			image = 'smokes/ls-papers.webp'
		}
	},

	["joint"] = {
		category = 'drugs',
		label = "Joint CBD Pre-roll",
		stack = true,
		close = true,
		weight = 3,
		client = {
			image = 'drugs/joint_normal.webp'
		}
	},

	["weed_gelato"] = {
		category = 'food',
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
		category = 'drugs',
		label = "Joint Sativa Pre-roll",
		stack = true,
		close = true,
		weight = 3,
		client = {
			image = 'drugs/sativa_joint.webp'
		}
	},

	["weed_pooch1"] = {
		category = 'drugs',
		label = "Weed Sativa",
		stack = true,
		close = true,
		weight = 1,
		client = {
			image = 'drugs/weed_sativa.webp'
		}
	},

	["weed_leaf"] = {
		category = 'drugs',
		label = "Weed indica",
		stack = true,
		close = true,
		weight = 1,
		client = {
			image = 'drugs/weed_indica.webp'
		}
	},

	["coca_leaf"] = {
		category = 'drugs',
		label = "Feuille de coca",
		stack = true,
		close = true,
		weight = 1,
		client = {
			image = 'drugs/coca_leaf.webp'
		}
	},

	["joint_skunk"] = {
		category = 'drugs',
		label = "Joint Indica Pre-roll",
		stack = true,
		close = true,
		weight = 3,
		client = {
			image = 'drugs/joint_skunk.webp'
		}
	},

	["cakegreen"] = {
		category = 'food',
		label = "Space Cake",
		stack = false,
		close = true,
		client = {
			image = 'food/cakegreen.webp'
		}

	},

	["weedabsinthe"] = {
		category = 'food',
		label = "Absinthe",
		--degrade =10080,
		stack = false,
		close = true,
		client = {
			image = 'drinks/cannabis-absinthe.webp'
		}
	},

	["thuyone"] = {
		category = 'material',
		label = "Thuyone",
		stack = true,
		close = true,
		weight = 5,
		client = {
			image = 'ingredients/thuyone.webp'
		}
	},

	["anis"] = {
		category = 'material',
		label = "Anis",
		stack = true,
		close = true,
		weight = 8,
		client = {
			image = 'ingredients/anis.webp'
		}
	},

	["peacewater2"] = {
		category = 'food',
		label = "Boisson énergisante CBD",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/peacewater.webp'
		}
	},

	["taurine"] = {
		category = 'material',
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
		category = 'misc',
		label = 'Bracelet en or',

		weight = 25,
		stack = true,
		client = {
			image = 'jewelry/gold_bracelet.webp'
		}
	},

	['gold_watch'] = {
		category = 'misc',
		label = 'Montre en or',
		weight = 75,
		stack = true,
		client = {
			image = 'jewelry/gold_watch.webp'
		}
	},

	['loot_bag'] = {
		category = 'misc',
		label = 'Grand sac',

		weight = 50,
		stack = true,
		client = {
			image = 'containers/loot_bag.webp'
		}
	},

	['necklace'] = {
		category = 'misc',
		label = 'Collier',
		weight = 15,
		stack = true,
		client = {
			image = 'jewelry/necklace.webp'
		}
	},

	["clothe"] = {
		category = 'clothing',
		label = "Vêtement",
		weight = 125,
		stack = true,
		close = true,
		client = {
			image = 'clothing/clothe.webp'
		}
	},

	["fabric"] = {
		category = 'material',
		label = "Tissu",
		weight = 125,
		stack = true,
		close = true,
		client = {
			image = 'materials/fabric.webp'
		}
	},

	['fakeshirt'] = {
		category = 'clothing',
		label = 'Contrefaçon',
		weight = 125,
		stack = true,
		close = false,
		client = {
			image = 'clothing/fakeshirt.webp'
		}
	},

	['panties'] = {
		category = 'clothing',
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
		category = 'weapon',
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
		category = 'misc',
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
		category = 'tools',
		label = "Nitro",
		close = true,
		client = {
			image = 'mechanic/nitrous.webp'
		}
	},

	['scrapmetal'] = {
		category = 'material',
		label = 'Morceau de métal',
		weight = 80,
		client = {
			image = 'materials/metalscrap.webp'
		}
	},

	['body_repair_kit'] = {
		category = 'tools',
		label = "Kit de carroserie",
		weight = 775,
		client = {
			image = 'mechanic/body_repair_kit.webp'
		}
	},

	['mechanickit'] = {
		category = 'tools',
		label = "Kit de réparation",
		weight = 775,
		client = {
			image = 'mechanic/mechanickit.webp'
		}
	},

	["brake_parts_a"] = {
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
		label = "Outils",
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'mechanic/carotool.webp'
		}
	},

	["fixkit"] = {
		category = 'tools',
		label = "Kit de réparation",
		weight = 3,
		stack = true,
		close = true,
		client = {
			image = 'mechanic/fixkit.webp'
		}
	},

	["fixtool"] = {
		category = 'tools',
		label = "Outils de réparation",
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'mechanic/fixtool.webp'
		}
	},

	["blowpipe"] = {
		category = 'tools',
		label = "Chalumeau",
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'tools/blowpipe.webp'
		}
	},

	["carokit"] = {
		category = 'tools',
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
		category = 'drugs',
		label = "Paquet de cigarettes Redwood",
		weight = 35,
		stack = false,
		close = true,
		client = {
			image = 'smokes/redwoods.webp'
		}
	},

	["redwcig"] = {
		category = 'drugs',
		label = "Cigarette Redwood",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'smokes/cig.webp'
		}
	},

	["lighter"] = {
		category = 'misc',
		label = "Briquet",
		weight = 20,
		stack = true,
		close = true,
		client = {
			image = 'misc/lighter.webp'
		}
	},

	["liquid"] = {
		category = 'tech',
		label = "Liquide pour cigarette électronique",
		weight = 115,
		stack = true,
		close = true,
		client = {
			image = 'tech/liquid.webp'
		}
	},

	["cubancigar"] = {
		category = 'drugs',
		label = "Cigare cubain",
		weight = 15,
		stack = true,
		close = true,
		client = {
			image = 'smokes/cubancigar.webp'
		}
	},

	["davidoffcigar"] = {
		category = 'drugs',
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
		category = 'material',
		label = 'Arrosoir',
		weight = 250,
		stack = true,
		close = true,
		client = {
			image = 'farming/watercan.webp'
		}
	},

	['fertilizer'] = {
		category = 'material',
		label = 'Engrais',
		weight = 250,
		stack = true,
		close = true,
		client = {
			image = 'farming/fertilizer.webp'
		}
	},

	["uvlight"] = {
		category = 'tools',
		label = "Lampe UV",
		stack = true,
		close = true,
		weight = 20,
		client = {
			image = 'tools/uvlight.webp'
		}
	},

	["sieve"] = {
		category = 'tools',
		label = "Tamis",
		stack = true,
		close = true,
		weight = 750,
		client = {
			image = 'tools/gold-pan.webp'
		}
	},

	['alcotester'] = {
		category = 'tech',
		label = 'Éthylotest',
		stack = false,
		close = true,
		client = {
			image = 'tech/alcootest_1_1.webp'
		}

	},

	["condom"] = {
		category = 'misc',
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
		category = 'tech',
		label = 'Localisateur',
		weight = 250,
		stack = true,
		client = {
			image = 'tech/house_locator.webp'
		}
	},

	['notepad'] = {
		category = 'papers',
		label = 'Bloc-notes',
		weight = 60,
		stack = true,
		client = {
			image = 'documents/notepad.webp'
		}
	},

	['pencil'] = {
		category = 'misc',
		label = 'Crayon',
		weight = 5,
		stack = true,
		client = {
			image = 'misc/pencil.webp'
		}
	},

	["handcuffs"] = {
		category = 'tools',
		label = "Menottes",
		stack = true,
		close = true,
		weight = 120,
		client = {
			image = 'police/handcuffs_1.webp'
		}
	},

	['shampoo'] = {
		category = 'misc',
		label = 'Shampoing',
		weight = 250,
		stack = true,
		client = {
			image = 'misc/shampoo.webp'
		}
	},

	['soap'] = {
		category = 'misc',
		label = 'Savon',
		weight = 150,
		stack = true,
		client = {
			image = 'misc/soap.webp'
		}
	},

	['toothpaste2'] = {
		category = 'medical',
		label = 'Dentifrice',
		weight = 120,
		stack = true,
		close = true,
		client = {
			image = 'medical/toothpaste2.webp'
		}

	},

	['skull'] = {
		category = 'misc',
		label = 'Crâne artistique',
		weight = 95,
		stack = true,
		client = {
			image = 'pawnshop/skull.webp'
		}
	},

	['hack_laptop'] = {
		category = 'drugs',
		label = 'Ordinateur pirate',

		weight = 3500,
		stack = true,
		client = {
			image = 'illegal/hack_laptop.webp'
		}
	},

	['laptop'] = {
		category = 'tech',
		label = 'Ordinateur portable',

		weight = 3500,
		stack = true,
		client = {
			image = 'tech/laptop.webp'
		}
	},

	['printer'] = {
		category = 'tech',
		label = 'Imprimante',

		weight = 8500,
		stack = true,
		client = {
			image = 'tech/printer.webp'
		}
	},

	['npc_phone'] = {
		category = 'tech',
		label = 'Téléphone',

		weight = 200,
		stack = true,
		client = {
			image = 'tech/npc_phone.webp'
		}

	},

	['monitor'] = {
		category = 'tech',
		label = 'Écran',

		weight = 2750,
		stack = true,
		client = {
			image = 'tech/monitor.webp'
		}
	},

	['television'] = {
		category = 'tech',
		label = 'Télévision',

		weight = 35000,
		stack = true,
		client = {
			image = 'tech/television.webp'
		}
	},

	['flat_television'] = {
		category = 'tech',
		label = 'Écran plat',

		weight = 15000,
		stack = true,
		client = {
			image = 'tech/flat_television.webp'
		}
	},

	['radio_alarm'] = {
		category = 'tech',
		label = 'Radio réveil',

		weight = 200,
		stack = true,
		client = {
			image = 'tech/radio_alarm.webp'
		}
	},

	['fan'] = {
		category = 'misc',
		label = 'Ventilateur',

		weight = 2500,
		stack = true,
		client = {
			image = 'props/fan.webp'
		}
	},

	['dj_deck'] = {
		category = 'tech',
		label = 'Platine DJ',

		weight = 8000,
		stack = true,
		client = {
			image = 'tech/dj_deck.webp'
		}
	},

	['console'] = {
		category = 'misc',
		label = 'Console',

		weight = 3250,
		stack = true,
		client = {
			image = 'pawnshop/console_1_1.webp'
		}
	},

	['boombox'] = {
		category = 'misc',
		label = 'Boombox',
		description = "Un bon modèle rétro comme on en fait plus !",
		weight = 2000,
		stack = true,
		client = {
			image = 'pawnshop/boombox_1_1.webp'
		}
	},

	['coffemachine'] = {
		category = 'misc',
		label = 'Cafetière',

		weight = 2500,
		stack = true,
		client = {
			image = 'props/coffemachine.webp'
		}
	},

	['tapeplayer'] = {
		category = 'tech',
		label = 'Chaîne hifi',

		weight = 4500,
		stack = true,
		client = {
			image = 'tech/tapeplayer.webp'
		}
	},

	['hairdryer'] = {
		category = 'tools',
		label = 'Sèche-cheveux',

		weight = 500,
		stack = true,
		client = {
			image = 'tools/hairdryer.webp'
		}
	},

	['j_phone'] = {
		category = 'tech',
		label = 'Téléphone',

		weight = 200,
		stack = true,
		client = {
			image = 'tech/j_phone.webp'
		}
	},

	['sculpture'] = {
		category = 'misc',
		label = 'Sculpture',

		weight = 55,
		stack = true,
		client = {
			image = 'props/sculpture.webp'
		}
	},

	['toiletry'] = {
		category = 'misc',
		label = 'Produit de beauté',

		weight = 150,
		stack = true,
		client = {
			image = 'misc/toiletry.webp'
		}
	},

	['pogo'] = {
		category = 'misc',
		label = 'Œuvre d\'art',

		weight = 155,
		stack = true,
		client = {
			image = 'props/pogo.webp'
		}
	},


	['parachute'] = {
		category = 'clothing',
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
		category = 'tools',
		label = 'Crochet',
		weight = 160,
		client = {
			export = 'qs-vehiclekeys.useLockpick',
			image = 'tools/lockpick_2.webp'
		}
	},

	['money'] = {
		category = 'misc',
		label = 'Argent liquide',
		client = {
			image = 'money/money.webp'
		}
	},

	['black_money'] = {
		category = 'misc',
		label = "Argent liquide",
		client = {
			image = 'money/black_money.webp'
		}
	},

	["radio"] = {
		category = 'tech',
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
		category = 'misc',
		label = "Parapluie",
		weight = 835,
		client = {
			image = 'misc/umbrella_1.webp'
		}
	},

	['fossil'] = {
		category = 'misc',
		label = "Fossile",
		weight = 80,
		client = {
			image = 'activities/fossil.webp'
		}
	},
	['paperbag'] = {
		category = 'misc',
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
		category = 'misc',
		label = "Boîte en carton",
		weight = 245,
		client = {
			image = 'containers/box_1.webp'
		}
	},

	['plasticbag'] = {
		category = 'drugs',
		label = "Sac Plastique",
		weight = 15,
		client = {
			image = 'drugs/plasticbag.webp',
			export = 'ls_shops.openPlasticBag'
		}
	},

	['book'] = { category = 'papers', -- book2, romantic_book, cookbook
		label = "Livre",
		weight = 450,
		client = {
			image = 'books/book.webp'
		}
	},

	['plastic_bottle'] = {
		category = 'material',
		label = "Bouteille en plastique",
		weight = 45,
		client = {
			image = 'garbage/plastic_bottle.webp'
		}
	},

	['trash_paper'] = {
		category = 'material',
		label = "Déchet",
		weight = 80,
		client = {
			image = 'garbage/trash_paper_1.webp'
		}
	},

	['garbage'] = {
		category = 'material',
		label = 'Ordure',
		client = {
			image = 'garbage/garbagebag.webp'
		}
	},

	["james_fishingrod"] = {
		category = 'misc',
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
		category = 'papers',
		label = "Clé de maison",
		client = {
			image = 'keys/keyhouse.webp'
		}
	},

	["labkey"] = {
		category = 'papers',
		label = "Clé de chambre",
		stack = true,
		close = true,
		client = {
			image = 'keys/labkey.webp'
		}
	},

	["vehiclekeys"] = {
		category = 'papers',
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
		category = 'papers',
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
		category = 'tools',
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
		category = 'tools',
		label = 'Crochet pour voiture',
		weight = 100,
		stack = true,
		close = true,

		client = {
			image = 'tools/lockpick_2.webp'
		},
	},

	['screwdriver'] = {
		category = 'tools',
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
		category = 'tools',
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
		category = 'tech',
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
		category = 'tools',
		label = 'Crochet avancé',
		weight = 100,
		stack = true,
		close = false,

		client = {
			image = 'tools/lockpick_2.webp'
		},
	},

	["gps"] = {
		category = 'tech',
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
		category = 'misc',
		label = "Malette d'argent",
		stack = true,
		weight = 1000,
		client = {
			image = 'containers/moneycase.webp'
		}
	},

	['lightning_unicorn'] = {
		category = 'food',
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
		category = 'misc',
		label = "Jeton de laverie",
		weight = 2,
		stack = true,
		close = false,
		client = {
			image = 'money/laundry_coin.webp'
		}
	},

	['heist_usb_black'] = {
		category = 'tech',
		label = "Clé USB",
		description = 'Contient le programme "laundryblackout.exe"',
		stack = false,
		close = false,
		client = {
			image = 'tech/heist_usb_black.webp'
		}
	},

	['goldbar'] = {
		category = 'material',
		label = "Lingot d'or",
		client = {
			image = 'mining/goldbar.webp'
		}
	},

	----------------------------------------
	--à Trier

	["cement"] = {
		category = 'material',
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
		category = 'misc',
		label = "Baskets de luxe",
		weight = 1000,
		stack = true,
		close = true,
		client = {
			image = 'pawnshop/expensive_sneakers_1_1.webp'
		}
	},

	["expensive_bag"] = {
		category = 'misc',
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
		category = 'weapon',
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
		category = 'misc',
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
		category = 'tech',
		label = 'Carte SIM',
		stack = false,
		weight = 10,
		consume = 0,
		client = {
			image = 'tech/sim_card.webp'
		}
	},

	["hat"] = {
		category = 'clothing',
		label = "Chapeau",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["mask"] = {
		category = 'clothing',
		label = "Masque",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["glasses"] = {
		category = 'clothing',
		label = "Lunettes",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["earrings"] = {
		category = 'clothing',
		label = "Accessoire d'oreilles",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["chain"] = {
		category = 'clothing',
		label = "Chaine",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["bracelet"] = {
		category = 'clothing',
		label = "Bracelet",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["watch"] = {
		category = 'clothing',
		label = "Montre",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["bag"] = {
		category = 'clothing',
		label = "Sac",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["torso"] = {
		category = 'clothing',
		label = "Haut",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["pants"] = {
		category = 'clothing',
		label = "Pantalon",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["shoes"] = {
		category = 'clothing',
		label = "Chaussures",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["bproof"] = {
		category = 'clothing',
		label = "Gilet pareballe",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["decals"] = {
		category = 'clothing',
		label = "Décalque",
		stack = false,
		close = true,
		buttons = {
			RenameButton,
		},
	},

	["alive_chicken"] = {
		category = 'material',
		label = "Poulet vivant",
		weight = 1,
		stack = true,
		close = true,
	},

	["slaughtered_chicken"] = {
		category = 'material',
		label = "Poulet abattu",
		weight = 1,
		stack = true,
		close = true,
	},

	["packaged_chicken"] = {
		category = 'material',
		label = "Filet de poulet",
		weight = 1,
		stack = true,
		close = true,
	},

	["water"] = {
		category = 'food',
		label = "Eau",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'food/water_bottle2.webp'
		}
	},

	["bread"] = {
		category = 'food',
		label = "Pain",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'food/bread.webp'
		}
	},

	["fish"] = {
		category = 'food',
		label = "Poisson",
		weight = 1,
		stack = true,
		close = true,
	},

	['police_stormram'] = {
		category = 'tools',
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
		category = 'papers',
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
		category = 'papers',
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
		category = 'papers',
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
		category = 'papers',
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
		category = 'misc',
		label = 'Capsule',
		weight = 0,
		stack = true,
		close = true,
		client = {
			image = 'money/bottle_cap.webp'
		}

	},
	['cardboard_bed'] = {
		category = 'misc',
		label = 'Lit carton',
		weight = 1,
		stack = false,
		close = true,
		client = {
			image = 'props/cardboard_bed.webp'
		}

	},
	['hobo_gloves'] = {
		category = 'clothing',
		label = 'Gants de Hobo',
		weight = 1,
		stack = false,
		close = true,
		client = {
			image = 'clothing/hobo_gloves.webp'
		}
	},
	['hobo_tent'] = {
		category = 'misc',
		label = 'Tente de Hobo',
		weight = 10000,
		stack = false,
		close = true,
		client = {
			image = 'camping/hobo_tent.webp'
		}
	},
	['begging_sign'] = {
		category = 'misc',
		label = 'Pour mangé sivouplé',
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'misc/begging_sign.webp'
		}
	},
	['medical_care_package'] = {
		category = 'medical',
		label = 'Kit Médical de Secours',
		weight = 10000,
		stack = false,
		close = true,
		client = {
			image = 'medical/medical_care_package.webp'
		}
	},
	['rat_treats'] = {
		category = 'material',
		label = 'Friandises pour Rats',
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'animals/rat_treats.webp'
		}
	},
	['racoon_treats'] = {
		category = 'material',
		label = 'Friandises pour Ratons-Laveurs',
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'animals/racoon_treats.webp'
		}
	},
	['rat_bait'] = {
		category = 'material',
		label = 'Appât à Rats',
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'animals/rat_bait.webp'
		}
	},
	['hobo_crown'] = {
		category = 'clothing',
		label = 'Couronne de Hobo',
		weight = 500,
		stack = false,
		close = true,
		client = {
			image = 'clothing/hobo_crown.webp'
		}
	},
	['sleeping_bag'] = {
		category = 'misc',
		label = 'Sac de Couchage',
		weight = 2000,
		stack = false,
		close = true,
		client = {
			image = 'camping/sleeping_bag.webp'
		}
	},
	['hobo_bottle'] = {
		category = 'misc',
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
		category = 'food',
		label = 'Pack de Rations',
		weight = 1500,
		stack = false,
		close = true,
		client = {
			image = 'food/ration_pack.webp'
		}
	},
	['wooden_junk'] = {
		category = 'material',
		label = 'Débris de bois',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'materials/wooden_junk.webp'
		}
	},
	['copper_junk'] = {
		category = 'material',
		label = 'Débris de cuivre',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/copper_junk.webp'
		}
	},
	['scrap_junk'] = {
		category = 'material',
		label = 'Ferraille',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/scrap_junk.webp'
		}
	},
	['cloth_junk'] = {
		category = 'material',
		label = 'Chiffons',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/cloth_junk.webp'
		}
	},
	['plastic_junk'] = {
		category = 'material',
		label = 'Débris plastique',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/plastic_junk.webp'
		}
	},
	['electronic_junk'] = {
		category = 'tech',
		label = 'Déchets électroniques',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'tech/electronic_junk.webp'
		}
	},
	['broken_phone'] = {
		category = 'tech',
		label = 'Téléphone cassé',
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = 'tech/broken_phone.webp'
		}
	},
	['food_waste'] = {
		category = 'material',
		label = 'Déchets alimentaires',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/food_waste.webp'
		}
	},
	['medical_waste'] = {
		category = 'material',
		label = 'Déchets médicaux',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/medical_waste.webp'
		}
	},
	['paper_junk'] = {
		category = 'material',
		label = 'Vieux papiers',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/paper_junk.webp'
		}
	},
	['glass_junk'] = {
		category = 'material',
		label = 'Débris de verre',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'garbage/glass_junk.webp'
		}
	},
	['rabies_shot'] = {
		category = 'material',
		label = 'Vaccin antirabique',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'animals/rabies_shot.webp'
		}
	},
	['tetanus_shot'] = {
		category = 'medical',
		label = 'Vaccin antitétanique',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'medical/tetanus_shot.webp'
		}
	},
	['meat_rat'] = {
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'misc',
		label = 'Sac de vêtements',
		weight = 450,
		stack = true,
		close = true,
		client = {
			image = 'containers/outfitbag.webp'
		}

	},

	['id_card'] = {
		category = 'papers',
		label = "Carte d'identité",
		weight = 5,
		stack = false,
		client = {
			image = 'documents/id_card.webp'
		}
	},
	['driving_license'] = {
		category = 'papers',
		label = 'Permis de conduire',
		weight = 5,
		stack = false,
		client = {
			image = 'documents/driving_license.webp'
		}
	},
	['flying_license'] = {
		category = 'papers',
		label = 'Licence de vol',
		weight = 5,
		stack = false,
		client = {
			image = 'documents/flying_license.webp'
		}
	},
	['boat_license'] = {
		category = 'papers',
		label = 'Permis de navigation',
		weight = 5,
		stack = false,
		client = {
			image = 'documents/boat_license.webp'
		}
	},
	['weapon_license'] = {
		category = 'misc',
		label = "Permis de port d'armes",
		weight = 5,
		stack = false,
		client = {
			image = 'general/weapon_license.webp'
		}
	},
	['police_badge'] = {
		category = 'papers',
		label = 'Badge LSPD',
		weight = 5,
		stack = false,
		client = {
			image = 'documents/police_badge.webp'
		}
	},
	['sheriff_badge'] = {
		category = 'papers',
		label = 'Badge BCSO',
		weight = 5,
		stack = false,
		client = {
			image = 'documents/sheriff_badge.webp'
		}
	},
	['fib_badge'] = {
		category = 'papers',
		label = 'Badge FIB',
		weight = 5,
		stack = false,
		client = {
			image = 'documents/fib_badge.webp'
		}
	},
	['electronics'] = {
		category = 'tech',
		label = 'Pièces électroniques',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'tech/electronics.webp'
		}

	},

	['paper'] = {
		category = 'papers',
		label = 'Papier',
		weight = 10,
		stack = true,
		close = true,
		client = {
			image = 'documents/paper.webp'
		}

	},

	['compost'] = {
		category = 'material',
		label = 'Compost',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'farming/compost.webp'
		}

	},

	['copper'] = {
		category = 'material',
		label = 'Plaque de cuivre',
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = 'materials/copper.webp'
		}

	},

	['rccar'] = {
		category = 'tech',
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
		category = 'food',
		label = 'Canna Choc',
		stack = false,
		usetime = 1500,
		consume = 1,
		client = {
			image = 'food/420-bar.webp'
		}
	},

	["aguafresca"] = {
		category = 'food',
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
		category = 'food',
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
		category = 'food',
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
		category = 'misc',
		label = "Blueprint",
		description = "Il s'agit du plan d'assemblage d'un fusil d'assaut",
		client = {
			image = 'misc/blueprint.webp'
		}
	},

	["ak47body"] = {
		category = 'weapon',
		label = "Armature fusil d'assaut",
		stack = true,
		close = true,
		weight = 4500,
		client = {
			image = 'weapons/ak47body.webp'
		}
	},

	["amaretti"] = {
		category = 'food',
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
		category = 'food',
		label = 'Bière A.M 33cl',
		stack = false,
		close = true,
		--degrade =20160,
		client = {
			image = 'drinks/ambeer.webp'
		}
	},

	['apple'] = {
		category = 'food',
		label = 'Pomme',
		stack = true,
		close = true,
		client = {
			image = 'food/apple.webp'
		}
	},

	["arma_armacaopistola"] = {
		category = 'weapon',
		label = "Crosse pistolet",
		stack = true,
		close = true,
		weight = 1000,
		client = {
			image = 'weapons/arma_armacaopistola.webp'
		}
	},

	["arma_cano"] = {
		category = 'weapon',
		label = "Canon pistolet",
		stack = true,
		close = true,
		weight = 1000,
		client = {
			image = 'weapons/arma_cano.webp'
		}
	},

	['at_muzzle_squared_result'] = {
		category = 'weapon',
		label = "Compensateur",
		weight = 560,
		client = {
			image = 'weapons/at_muzzle_squared_result.webp'
		}
	},

	["avocado"] = {
		category = 'material',
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
		category = 'food',
		label = "La Ensalada avocado",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/avocado_salad.webp'
		}
	},

	["b52"] = {
		category = 'food',
		label = "COCKTAIL B52",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/b52.webp'
		}
	},

	['bacon'] = {
		category = 'material',
		label = 'Bacon',
		weight = 200,
		--degrade =4320,
		stack = true,
		client = {
			image = 'ingredients/bacon.webp'
		}
	},

	["baileys"] = {
		category = 'food',
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
		category = 'material',
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
		category = 'misc',
		label = "Mug en verre",
		stack = true,
		close = true,
		weight = 10,
		client = {
			image = 'containers/bcoffeeglass.webp'
		}
	},

	["bcream"] = {
		category = 'material',
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
		category = 'material',
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
		category = 'food',
		label = "Verre vide",
		stack = true,
		close = true,
		weight = 5,
		client = {
			image = 'drinks/bhighcoffeeglasscup.webp'
		}
	},

	["bitecookies"] = {
		category = 'food',
		label = "Cookies",
		--degrade =7200,
		stack = false,
		close = true,
		client = {
			image = 'food/bitecookies.webp'
		}
	},

	["bitesalad"] = {
		category = 'food',
		label = "Salavocat",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/bitesalad.webp'
		}
	},

	['bleuterd'] = {
		category = 'food',
		label = 'Bleuterd Champagne',
		weight = 750,
		stack = false,
		close = true,
		client = {
			image = 'drinks/bleuterd.webp',

		}
	},

	["blueberry"] = {
		category = 'material',
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
		category = 'food',
		label = "Paquet de chips",
		--degrade =1440,
		close = true,
		client = {
			image = 'food/chipsl.webp'
		}
	},

	["bolpistache"] = {
		category = 'material',
		label = "Bol de pistache",
		--degrade =1440,
		close = true,
		client = {
			image = 'ingredients/pistachio.webp'
		}
	},

	['book2'] = {
		category = 'papers',
		label = "Livre",
		weight = 450,
		client = {
			image = 'books/book2.webp'
		}
	},

	["bregularcup"] = {
		category = 'food',
		label = "Cup pour bubble tea",
		stack = true,
		close = true,
		weight = 10,
		client = {
			image = 'drinks/bregularcup.webp'
		}
	},

	["brussian"] = {
		category = 'food',
		label = "Russe blanc",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/brussian.webp'
		}
	},

	['burger'] = {
		category = 'food',
		label = 'Burger',
		weight = 225,
	},

	["burgerbun2"] = {
		category = 'food',
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
		category = 'food',
		label = "Burrito poivron",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/burrito.webp'
		}
	},

	["burritobeef"] = {
		category = 'food',
		label = "Burrito boeuf",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/burrito.webp'
		}
	},

	["burritochick"] = {
		category = 'food',
		label = "Burrito poulet ",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/burrito.webp'
		}
	},

	["burritomushroom"] = {
		category = 'food',
		label = "Burrito champignon",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/burrito.webp'
		}
	},

	["burritopork"] = {
		category = 'food',
		label = "Burrito porc",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/burrito.webp'
		}
	},

	["burritotomato"] = {
		category = 'food',
		label = "Burrito tomato",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/burrito.webp'
		}
	},

	["butter"] = {
		category = 'material',
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
		category = 'food',
		label = "Bière Carano",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/carano_beer.webp'
		}
	},

	["champagne"] = {
		category = 'food',
		label = "Champagne 75cl",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/eg_champagne.webp'
		}
	},

	["champignon"] = {
		category = 'material',
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
		category = 'food',
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
		category = 'material',
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
		category = 'food',
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
		category = 'material',
		label = "Filet de poulet",
		weight = 1000,
		--degrade =4320,
		stack = true,
		client = {
			image = 'ingredients/chicken_strips_raw.webp'
		}

	},

	["chicken_wings_raw"] = {
		category = 'material',
		label = "Ailes de poulet",
		weight = 1000,
		--degrade =4320,
		stack = true,
		client = {
			image = 'ingredients/chicken_wings_raw.webp'
		}
	},

	["chickenbaconranch"] = {
		category = 'food',
		label = "Chickensoul",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/chickenbaconranch.webp'
		}
	},

	["chillypepper"] = {
		category = 'material',
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
		category = 'material',
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
		category = 'food',
		label = "DickThon",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/classictuna.webp'
		}
	},

	["cockmolotov"] = {
		category = 'food',
		label = "Cocktail MOLOTOV",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/cockmolotov.webp'
		}
	},

	["cocktail-1"] = {
		category = 'food',
		label = "Golem",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/cocktail-1.webp'
		}
	},

	["cocktail_cubalibre"] = {
		category = 'food',
		label = "Lisa Simpson",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/cocktail_cubalibre.webp'
		}
	},

	["cocktail_mojito"] = {
		category = 'food',
		label = "Virgin Mojito",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/cocktail_mojito.webp'
		}
	},

	["cocktailglass"] = {
		category = 'food',
		label = "Verre à cocktail",
		weight = 280,
		stack = true,
		close = true,
		client = {
			image = 'drinks/cocktailglass.webp'
		}
	},

	["cocktailpine"] = {
		category = 'food',
		label = "Bahama Mamas",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/cocktailpine.webp'
		}

	},

	['coffe'] = {
		category = 'food',
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
		category = 'food',
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
		category = 'food',
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
		category = 'food',
		label = 'E-Cola',
		weight = 330,
		--degrade =20160,
		close = true,
		client = {
			image = 'drinks/cola.webp'
		}
	},

	['cookbook'] = {
		category = 'papers',
		label = "Livre de Cuisine",
		weight = 680,
		client = {
			image = 'books/cookbook.webp'
		}
	},

	["cookies"] = {
		category = 'food',
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
		category = 'material',
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
		category = 'food',
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
		category = 'drugs',
		label = 'Crack',
		client = {
			image = 'drugs/crack.webp'
		}
	},

	["cranberryjuice1"] = {
		category = 'food',
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
		category = 'material',
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
		category = 'material',
		label = "Graine de Concombre",
		stack = true,
		close = true,
		weight = 2,
		client = {
			image = 'plants/cucumberseeds.webp'
		}
	},

	["cupcakebite"] = {
		category = 'food',
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
		category = 'food',
		label = "Virgin sex on the beach",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/dbcocktail_1.webp'
		}
	},

	["drygrapes"] = {
		category = 'material',
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
		category = 'food',
		label = 'Bière Dusche Gold 33cl',
		stack = false,
		close = true,
		--degrade =20160,
		client = {
			image = 'drinks/beer_dusche.webp'
		}
	},

	['earings'] = {
		category = 'misc',
		label = 'Paire de boucles d\'oreilles',

		weight = 5,
		stack = true,
		client = {
			image = 'jewelry/earings.webp'
		}
	},

	['eg_champagne'] = {
		category = 'food',
		label = 'Bouteille de champagne 75cl',
		stack = false,
		close = true,
		client = {
			image = 'drinks/eg_champagne.webp'
		}

		--degrade =20160,
	},

	["eg_ramen"] = {
		category = 'food',
		label = "Uwu Ramen",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/eg_ramen.webp'
		}
	},

	["eg_red-wine-bottle"] = {
		category = 'food',
		label = "Vin rouge 75cl",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/red-wine-bottle.webp'
		}
	},

	["eg_white-wine-bottle"] = {
		category = 'food',
		label = "Vin blanc 75cl",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/white-wine-bottle.webp'
		}
	},

	['egg'] = {
		category = 'food',
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
		category = 'material',
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
		category = 'food',
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
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'misc',
		label = 'Flûte à champagne',
		weight = 200,
		stack = false,
		close = true,
		client = {
			image = 'containers/flute_glass.webp'
		}
	},

	["food_bag"] = {
		category = 'misc',
		label = "Commande à livrer",
		client = {
			image = 'containers/food_bag.webp'
		}
	},

	['frozenburger'] = {
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'food',
		label = 'Panier à fruit',
		weight = 250,
		stack = true,
		close = true,
		client = {
			image = 'food/fruit-box.webp'
		}
	},

	['fruitcrate'] = {
		category = 'food',
		label = 'Caisse à fruit',
		weight = 250,
		stack = false,
		close = true,
		client = {
			image = 'food/fruit-box.webp'
		}
	},

	["galliano"] = {
		category = 'food',
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
		category = 'material',
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
		category = 'food',
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
		category = 'misc',
		label = "Bouteille en verre vide 75cl",
		weight = 1000,
		stack = true,
		close = true,
		client = {
			image = 'containers/glassbottle.webp'
		}

	},

	["goodbread"] = {
		category = 'material',
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
		category = 'food',
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
		category = 'material',
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
		category = 'material',
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
		category = 'food',
		label = "Uwu Choco",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/cc-hotchoclate.webp'
		}
	},

	['hotdog'] = {
		category = 'food',
		label = 'Hotdog',
		weight = 120,
		--degrade =20160,
		stack = false,
		close = true,

	},

	['hotdog4'] = {
		category = 'food',
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
		category = 'material',
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
		category = 'food',
		label = "Glace",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'food/ice.webp'
		}
	},

	["icedtea"] = {
		category = 'food',
		label = "Thé glacé",
		--degrade =20160,
		close = true,
		client = {
			image = 'drinks/icedtea.webp'
		}
	},

	["ingredient_meatduck"] = {
		category = 'material',
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
		category = 'material',
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
		category = 'food',
		label = "Salamissionnaire",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/spicyitalian.webp'
		}
	},

	["jagerbomb"] = {
		category = 'food',
		label = "Jammer bomb",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/jagerbomb.webp'
		}
	},

	["jagercerbere"] = {
		category = 'food',
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
		category = 'food',
		label = "Jarritos fraise",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/jarritosfraise.webp'
		}
	},

	["jarritosmandarin"] = {
		category = 'food',
		label = "Jarritos mandarine",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/jarritosmandarin.webp'
		}
	},

	["jarritosmango"] = {
		category = 'food',
		label = "Jarritos mangue",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/jarritosmango.webp'
		}
	},

	["jolly_ranchers"] = {
		category = 'food',
		label = "Jolly Ranchers",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'food/jolly_ranchers.webp'
		}
	},

	['juiceJarApple'] = {
		category = 'food',
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
		category = 'food',
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
		category = 'food',
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
		category = 'food',
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
		category = 'food',
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
		category = 'food',
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
		category = 'food',
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
		category = 'material',
		label = "Longe de porc",
		stack = true,
		search = "longe",
		client = {
			image = 'hunting/longe.webp'
		}
	},

	["marinade"] = {
		category = 'material',
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
		category = 'material',
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
		category = 'food',
		label = 'Bouteille de martini 70cl',
		stack = false,
		close = true,
		client = {
			image = 'drinks/martini1.webp'
		}
		--degrade =20160,
	},

	["mead_peach"] = {
		category = 'food',
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
		category = 'material',
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
		category = 'material',
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
		category = 'tools',
		label = "Ressort",
		weight = 30,
		client = {
			image = 'mechanic/metalspring.webp'
		}

	},

	['meteorite'] = {
		category = 'food',
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
		category = 'food',
		label = "Burger Mexicain",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/burger_chsbcn.webp'
		}
	},

	["milkbucket"] = {
		category = 'material',
		label = "Seau de lait",
		--degrade =4320,
		stack = false,
		client = {
			image = 'ingredients/farming_milkbucket.webp'
		}
	},

	["mint"] = {
		category = 'food',
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
		category = 'misc',
		label = "Colorant alimentaire",
		stack = true,
		close = true,
		weight = 100,
		--degrade =10080,
	},

	["morceau_chocolat"] = {
		category = 'material',
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
		category = 'food',
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
		category = 'material',
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
		category = 'food',
		label = "Nachos Cheddar",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/nachos_1.webp'
		}
	},

	["nachosguaca"] = {
		category = 'food',
		label = "Nachos Guacamole",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/nachosguaca.webp'
		}
	},

	["nachossalsa"] = {
		category = 'food',
		label = "Nachos Salsa",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/nachossalsa.webp'
		}

	},

	['nogo_vodka'] = {
		category = 'food',
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
		category = 'food',
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
		category = 'food',
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
		category = 'food',
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
		category = 'food',
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
		category = 'food',
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
		category = 'material',
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
		category = 'material',
		label = "Graine d'oignon",
		stack = true,
		close = true,
		weight = 2,
		client = {
			image = 'farming/onionseeds.webp'
		}
	},

	["opmcocktail"] = {
		category = 'food',
		label = "Sex on the beach",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/opmcocktail.webp'
		}
	},

	['orange'] = {
		category = 'food',
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
		category = 'material',
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
		category = 'food',
		label = "Donut à la fraise",
		--degrade =7200,
		stack = false,
		close = true,
		client = {
			image = 'food/pinksprinkledonut.webp'
		}
	},

	['piswasser'] = {
		category = 'food',
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
		category = 'food',
		label = "Part de pizza",
		weight = 75,
		client = {
			image = 'food/pizza-slice.webp'
		}
	},

	["pmozzarella"] = {
		category = 'material',
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
		category = 'material',
		label = "Flanc de porc",
		stack = true,
		search = "pork",
		client = {
			image = 'hunting/pork_flank.webp'
		}
	},

	["pork_rib"] = {
		category = 'material',
		label = "Rib de porc",
		stack = true,
		search = "pork",
		client = {
			image = 'hunting/pork_rib.webp'
		}

	},

	["potato"] = {
		category = 'material',
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
		category = 'food',
		label = "Vin rosé 75cl",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/primadonna.webp'
		}
	},

	["purplevodka"] = {
		category = 'food',
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
		category = 'food',
		label = "Quesadillas au poulet",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/quesadillas.webp'
		}
	},

	["quesadillapoivron"] = {
		category = 'food',
		label = "Quesadillas aux poivrons",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/quesadillas.webp'
		}
	},

	['raine'] = {
		category = 'food',
		label = 'Eau gazeuze',
		weight = 500,
		--degrade =20160,
		close = true,
		client = {
			image = 'drinks/raine.webp'
		}
	},

	["raisin"] = {
		category = 'material',
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
		category = 'material',
		label = "Lard de porc",
		stack = true,
		search = "lard",
		client = {
			image = 'hunting/raw_lard.webp'
		}
	},

	["raw_pork"] = {
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'food',
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
		category = 'food',
		label = "vin rouge de luxe 75cl",
		--degrade =20160,
		stack = false,
		close = true,
		client = {
			image = 'drinks/redwine.webp'
		}
	},

	['rhum1'] = {
		category = 'food',
		label = 'Bouteille de rhum 70cl',
		stack = false,
		close = true,
		client = {
			image = 'drinks/rhum.webp'
		}
		--degrade =20160,
	},

	["rice"] = {
		category = 'food',
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
		category = 'weapon',
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
		category = 'weapon',
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
		category = 'food',
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
		category = 'papers',
		label = 'Roman d\'amour',
		weight = 650,
		stack = true,
		client = {
			image = 'books/romantic_book.webp'
		}
	},

	["rroulette"] = {
		category = 'food',
		label = "Russian Roulette",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/rroulette.webp'
		}
	},

	["sakebottle"] = {
		category = 'food',
		label = "Sake",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/sakebottle.webp'
		}
	},

	["salad"] = {
		category = 'material',
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
		category = 'food',
		label = "La Ensalada Poulet",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/saladechick.webp'
		}
	},

	["saladveggie"] = {
		category = 'food',
		label = "La Ensalada veggie",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/saladveggie.webp'
		}
	},

	["salami"] = {
		category = 'food',
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
		category = 'material',
		label = "Saumon",
		stack = true,
		close = true,
		weight = 120,
		client = {
			image = 'ingredients/salmonbites.webp'
		}
	},

	["salmonsalad"] = {
		category = 'food',
		label = "La Cumcumber special",
		stack = true,
		--degrade =14400,
		close = true,
		client = {
			image = 'food/salmonsalad.webp'
		}
	},

	["sambuca"] = {
		category = 'food',
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
		category = 'material',
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
		category = 'material',
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
		category = 'food',
		label = "Jammer Cerberus",
		--degrade =14400,
		stack = true,
		close = true,
		client = {
			image = 'drinks/shot1.webp'
		}
	},

	["shot2"] = {
		category = 'food',
		label = "Vodka Candy",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/shot2.webp'
		}

	},

	['shot_glass'] = {
		category = 'misc',
		label = 'Verre à shot',
		weight = 50,
		stack = false,
		close = true,
		client = {
			image = 'containers/shot_glass.webp'
		}
	},

	["shotgun_body"] = {
		category = 'weapon',
		label = "Crosse pompe",
		stack = true,
		close = true,
		weight = 1380,
		client = {
			image = 'weapons/shotgun_body.webp'
		}
	},

	["shotgun_suppressor"] = {
		category = 'weapon',
		label = "Silencieux",
		stack = true,
		close = true,
		weight = 1000,
		client = {
			image = 'weapons/shotgun_suppressor.webp'
		}
	},

	["simplyorange"] = {
		category = 'food',
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
		category = 'weapon',
		label = "Canon smg",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'weapons/smg-body.webp'
		}
	},

	['sprunk'] = {
		category = 'food',
		label = 'Sprunk',
		weight = 330,
		stack = true,
		close = true,
		client = {
			image = 'food/sprunk.webp'
		}
	},

	['sprunk-mockup'] = {
		category = 'food',
		label = 'Cannette de Sprunk 33cl',
		weight = 330,
		close = true,
		client = {
			image = 'drinks/sprunk-mockup.webp'
		}
		--degrade =4320,
	},

	['sprunklight'] = {
		category = 'food',
		label = 'Cannette de Diet Sprunk 33cl',
		weight = 330,
		--degrade =20160,
		close = true,
		client = {
			image = 'drinks/sprunk-light-mockup.webp'
		}
	},

	["steak_raw"] = {
		category = 'material',
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
		category = 'food',
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
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'food',
		label = 'Taco',
		weight = 100,
		stack = false,
		close = true,
		--degrade =20160,
	},

	["taco2"] = {
		category = 'food',
		label = "Le Taco Boeuf",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/taco.webp'
		}

	},

	["tacochick"] = {
		category = 'food',
		label = "Le Taco Poulet",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/taco_chicken.webp'
		}

	},

	["tacofish"] = {
		category = 'food',
		label = "Le Taco crevette",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/taco_fish.webp'
		}
	},

	["tacoporc"] = {
		category = 'food',
		label = "Le Taco porc",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/tacoporc.webp'
		}
	},

	["tacoveggie"] = {
		category = 'food',
		label = "Le Taco poivron",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/tacovegi.webp'
		}
	},

	["tacovegi"] = {
		category = 'food',
		label = "Le Taco tomate",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/tacovegi.webp'
		}
	},

	["tapiocapearls"] = {
		category = 'material',
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
		category = 'food',
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
		category = 'material',
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
		category = 'material',
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
		category = 'material',
		label = 'Graines de tomate',
		weight = 2,
		stack = true,
		close = true,
		client = {
			image = 'farming/tomatoseed.webp'
		}
	},

	['toothpaste'] = {
		category = 'medical',
		label = 'Dentifrice',
		weight = 120,
		stack = true,
		client = {
			image = 'medical/toothpaste2.webp'
		}
	},

	["tortilla"] = {
		category = 'material',
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
		category = 'misc',
		label = "Alpa-Calin",
		weight = 125,
		client = {
			image = 'toys/toy-alpaca.webp'
		}
	},

	['toy-bear'] = {
		category = 'misc',
		label = "Oursami",
		weight = 125,
		client = {
			image = 'toys/toy-bear.webp'
		}
	},

	['toy-camel'] = {
		category = 'misc',
		label = "Chamélia",
		weight = 125,
		client = {
			image = 'toys/toy-camel.webp'
		}
	},

	['toy-cow'] = {
		category = 'misc',
		label = "Moona",
		weight = 125,
		client = {
			image = 'toys/toy-cow.webp'
		}
	},

	['toy-crocodile'] = {
		category = 'misc',
		label = "Aligou",
		weight = 125,
		client = {
			image = 'toys/toy-crocodile.webp'
		}
	},

	['toy-dog'] = {
		category = 'misc',
		label = "Moka",
		weight = 125,
		client = {
			image = 'props/xm3_prop_xm3_toy_dog_01a.webp'
		}
	},

	['toy-dolphin'] = {
		category = 'misc',
		label = "Sillage",
		weight = 125,
		client = {
			image = 'toys/toy-dolphin.webp'
		}
	},

	['toy-donkey'] = {
		category = 'misc',
		label = "Azzuro",
		weight = 125,
		client = {
			image = 'toys/toy-donkey.webp'
		}
	},

	['toy-egg'] = {
		category = 'misc',
		label = "Egglet",
		weight = 200,
		client = {
			image = 'toys/toy-egg.png'
		}
	},

	['toy-elephant'] = {
		category = 'misc',
		label = "Pachy",
		weight = 125,
		client = {
			image = 'toys/toy-elephant.webp'
		}
	},

	['toy-frog'] = {
		category = 'misc',
		label = "Pondy",
		weight = 125,
		client = {
			image = 'toys/toy-frog.webp'
		}
	},

	['toy-giraffe'] = {
		category = 'misc',
		label = "Savannah",
		weight = 125,
		client = {
			image = 'toys/toy-giraffe.webp'
		}
	},

	['toy-hedgehog'] = {
		category = 'misc',
		label = "Picou",
		weight = 125,
		client = {
			image = 'toys/toy-hedgehog.webp'
		}

	},

	['toy-kangaroo'] = {
		category = 'misc',
		label = "Hopper",
		weight = 125,
		client = {
			image = 'toys/toy-kangaroo.webp'
		}
	},

	['toy-koala'] = {
		category = 'misc',
		label = "Snoozy",
		weight = 125,
		client = {
			image = 'toys/toy-koala.webp'
		}
	},

	['toy-lion'] = {
		category = 'misc',
		label = "Roary",
		weight = 125,
		client = {
			image = 'toys/toy-lion.webp'
		}
	},

	['toy-orca'] = {
		category = 'misc',
		label = "Ruk",
		weight = 125,
		client = {
			image = 'toys/toy-orca.webp'
		}
	},

	['toy-otter'] = {
		category = 'misc',
		label = "Binky",
		weight = 125,
		client = {
			image = 'toys/toy-otter.webp'
		}
	},

	['toy-owl'] = {
		category = 'misc',
		label = "Zephyr",
		weight = 125,
		client = {
			image = 'toys/toy-owl.webp'
		}
	},

	['toy-panda'] = {
		category = 'misc',
		label = "Wubba",
		weight = 125,
		client = {
			image = 'toys/toy-panda.webp'
		}
	},

	['toy-parrot'] = {
		category = 'misc',
		label = "Rio",
		weight = 125,
		client = {
			image = 'toys/toy-parrot.webp'
		}
	},

	['toy-penguin'] = {
		category = 'misc',
		label = "Flake",
		weight = 125,
		client = {
			image = 'toys/toy-penguin.webp'
		}
	},

	['toy-rhino'] = {
		category = 'misc',
		label = "Thorn",
		weight = 125,
		client = {
			image = 'toys/toy-rhino.webp'
		}
	},

	['toy-seahorse'] = {
		category = 'misc',
		label = "Seafinn",
		weight = 125,
		client = {
			image = 'toys/toy-seahorse.webp'
		}
	},

	['toy-sealion'] = {
		category = 'misc',
		label = "Misty",
		weight = 125,
		client = {
			image = 'toys/toy-sealion.webp'
		}
	},

	['toy-seaturtle'] = {
		category = 'misc',
		label = "Slowpoke",
		weight = 125,
		client = {
			image = 'toys/toy-seaturtle.webp'
		}

	},

	['toy-shark'] = {
		category = 'misc',
		label = "Shiver",
		weight = 125,
		client = {
			image = 'toys/toy-shark.webp'
		}

	},

	['toy-snowleopard'] = {
		category = 'misc',
		label = "Crystal",
		weight = 125,
		client = {
			image = 'toys/toy-snowleopard.webp'
		}
	},

	['toy-stingray'] = {
		category = 'misc',
		label = "Pearl",
		weight = 125,
		client = {
			image = 'toys/toy-stingray.webp'
		}
	},

	['toy-tiger'] = {
		category = 'misc',
		label = "Storm",
		weight = 125,
		client = {
			image = 'toys/toy-tiger.webp'
		}
	},

	['toy-unicorn'] = {
		category = 'misc',
		label = "Seraphina",
		weight = 125,
		client = {
			image = 'toys/toy-unicorn.webp'
		}

	},

	['toy-whale'] = {
		category = 'misc',
		label = "Echo",
		weight = 125,
		client = {
			image = 'toys/toy-whale.webp'
		}
	},

	["tunameat"] = {
		category = 'material',
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
		category = 'food',
		label = "BITEcoin",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/turkeybreast.webp'
		}
	},

	["uwububbleteablueberry"] = {
		category = 'food',
		label = "Bubble Uwu Myrtille",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/uwububbleteablueberry.webp'
		}

	},

	["uwububbleteamint"] = {
		category = 'food',
		label = "Bubble Uwu Menthe",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/uwububbleteamint.webp'
		}
	},

	["uwububbletearose"] = {
		category = 'food',
		label = "Bubble Uwu Fraise",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/uwububbletearose.webp'
		}
	},

	["uwuchocsandy"] = {
		category = 'food',
		label = "Uwu Croq",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/uwuchocsandy.webp'
		}
	},

	["uwucupcake"] = {
		category = 'food',
		label = "Uwu CupCake",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/uwucupcake.webp'
		}
	},

	["uwumintessence"] = {
		category = 'food',
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
		category = 'food',
		label = "Uwu Sushi",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/uwushushi.webp'
		}
	},

	["uwuvanillasandy"] = {
		category = 'food',
		label = "Uwu Croq vanille",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'food/uwuvanillasandy.webp'
		}
	},

	["uzi_fold_stock"] = {
		category = 'weapon',
		label = "Crosse uzi",
		stack = true,
		close = true,
		weight = 1500,
		client = {
			image = 'weapons/uzi_fold_stock.webp'
		}
	},

	["vanilla"] = {
		category = 'material',
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
		category = 'food',
		label = "Veggie",
		stack = false,
		close = true,
		client = {
			image = 'food/veggiedelite.webp'
		}
	},

	['vine'] = {
		category = 'food',
		label = 'Bouteille de vin rouge 75cl',
		stack = false,
		close = true,
		client = {
			image = 'drinks/vine.webp'
		}
		--degrade =20160,
	},

	['vinewood_blanc'] = {
		category = 'food',
		label = 'Vinewood Sauvignon Blanc',
		weight = 750,
		stack = false,
		close = true,
		client = {
			image = 'drinks/vinewood_blanc.webp'
		}
	},

	['vinewood_red'] = {
		category = 'food',
		label = 'Vinewood Red Zinfadel',
		weight = 750,
		stack = false,
		close = true,
		client = {
			image = 'drinks/vinewood_red.webp'
		}
	},

	['vinewoodrose'] = {
		category = 'food',
		label = 'Bouteille de vin rosé 75cl',
		stack = false,
		close = true,
		client = {
			image = 'drinks/vinewoodrose.webp'
		}
		--degrade =20160,
	},

	['vineyards'] = {
		category = 'food',
		label = 'Bouteille de vin blanc 75cl',
		stack = false,
		close = true,
		client = {
			image = 'drinks/vineyards.webp'
		}

		--degrade =20160,
	},

	['vodka'] = {
		category = 'food',
		label = "Vodka",
		weight = 1100,
		client = {
			image = 'drinks/vodka.webp'
		}
	},

	["w-srawchickenwings"] = {
		category = 'material',
		label = "Pilon de poulet",
		weight = 1000,
		--degrade =4320,
		stack = true,
		client = {
			image = 'ingredients/w-srawchickenwings.webp'
		}
	},

	["wafflego"] = {
		category = 'material',
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
		category = 'material',
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
		category = 'weapon',
		label = "Jouet",
		weight = 125,
		client = {
			image = 'weapons/weapon_toy.webp'
		}
	},

	['wheat'] = {
		category = 'food',
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
		category = 'food',
		label = 'Verre à whisky',
		weight = 200,
		stack = false,
		close = true,
		client = {
			image = 'drinks/whiskey_glass.webp'
		}
	},

	['whisky'] = {
		category = 'food',
		label = 'Bouteille de whisky 70cl',
		stack = false,
		close = true,
		client = {
			image = 'drinks/whisky.webp'
		}
		--degrade =20160,
	},

	["whiskycoca"] = {
		category = 'food',
		label = "Wish cola",
		--degrade =14400,
		stack = false,
		close = true,
		client = {
			image = 'drinks/whiskycoca.webp'
		}
	},

	["white_raisin"] = {
		category = 'material',
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
		category = 'food',
		label = "Donut chocolat blanc",
		--degrade =7200,
		stack = false,
		close = true,
		client = {
			image = 'food/whitechocolatedonut.webp'
		}
	},

	['wine_glass'] = {
		category = 'food',
		label = 'Verre à vin',
		weight = 200,
		stack = false,
		close = true,
		client = {
			image = 'drinks/wine_glass.webp'
		}
	},

	["radio_server"] = {
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
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
		category = 'tech',
		label = "Color frame red",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_blue"] = {
		category = 'tech',
		label = "Color frame blue",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_purple"] = {
		category = 'tech',
		label = "Color frame purple",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_pink"] = {
		category = 'tech',
		label = "Color frame pink",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_lightblue"] = {
		category = 'tech',
		label = "Color frame lightblue",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_orange"] = {
		category = 'tech',
		label = "Color frame orange",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_yellow"] = {
		category = 'tech',
		label = "Color frame yellow",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_green"] = {
		category = 'tech',
		label = "Color frame green",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_white"] = {
		category = 'tech',
		label = "Color frame white",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["radio_grey"] = {
		category = 'tech',
		label = "Color frame grey",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["bat_low"] = {
		category = 'tech',
		label = "Cheap battery",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["bat_medium"] = {
		category = 'tech',
		label = "Common battery",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["bat_high"] = {
		category = 'tech',
		label = "Premium battery",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["chip_5g"] = {
		category = 'tech',
		label = "5G Chip",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["chip_ghost"] = {
		category = 'tech',
		label = "Ghost Chip",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},
	["chip_antihack"] = {
		category = 'tech',
		label = "Antihack Chip",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["mic_walkie"] = {
		category = 'tech',
		label = "Talkie Shoulder Microphone",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["radio_monitor"] = {
		category = 'tech',
		label = "Hospital monitor",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["radio_server_bat"] = {
		category = 'tech',
		label = "Car battery",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["radio_cables"] = {
		category = 'tech',
		label = "Radio Jammer",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["radio_tool"] = {
		category = 'tech',
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
		category = 'tech',
		label = "Broken radio",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	["chip_waterproof"] = {
		category = 'tech',
		label = "Waterproof radio",
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
	},

	['broccoli'] = {
		category = 'material',
		label = 'Brocoli',
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = 'farming/broccoli.webp'
		}

	},

	['pepper'] = {
		category = 'material',
		label = 'Poivron',
		weight = 175,
		stack = true,
		close = true,
		client = {
			image = 'farming/capsicum.webp'
		}

	},

	['carrot'] = {
		category = 'material',
		label = 'Carotte',
		weight = 125,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/ingredients_carrot.webp'
		}

	},

	["cucumber"] = {
		category = 'material',
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
		category = 'material',
		label = 'Aubergine',
		weight = 400,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/eggplant.webp'
		}

	},

	['pumpkin'] = {
		category = 'material',
		label = 'Citrouille',
		weight = 2500,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/ingredients_pumpkin.webp'
		}

	},

	['sugarbeet'] = {
		category = 'material',
		label = 'Betterave sucrière',
		weight = 750,
		stack = true,
		close = true,
		client = {
			image = 'farming/sugarbeet.webp'
		}

	},

	['tomato_seed'] = {
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'drugs',
		label = 'Perceuse',
		weight = 2500,
		stack = false,
		close = true,
		client = {
			image = 'illegal/drill.webp'
		}

	},
	['dildo'] = {
		category = 'misc',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'misc',
		label = 'Instantané',
		stack = false,
		description = 'Une photo instantanée prise dans un photomaton.',
		client = {
			export = 'fiv3devs_photobooth.usePolaroid',
			image = 'misc/photo.webp'
		},
	},

	['teddy-bear'] = {
		category = 'misc',
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
		category = 'misc',
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
		category = 'material',
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
		category = 'material',
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
		category = 'material',
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
		category = 'material',
		label = "Ver de terre",
		weight = 50,
		stack = true,
		close = true,
		client = {
			image = 'seaworld/p_baitworm01x.webp'
		}
	},

	["bait_lure"] = {
		category = 'material',
		label = "Leurre",
		weight = 30,
		stack = true,
		close = true,
		client = {
			image = 'seaworld/p_finisdfishlurelegendary01x.webp'
		}
	},

	["bait_shrimp"] = {
		category = 'material',
		label = "Crevette (appât)",
		weight = 40,
		stack = true,
		close = true,
		client = {
			image = 'ingredients/shrimp.webp'
		}
	},

	["bait_minnow"] = {
		category = 'material',
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
		category = 'medical',
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
		category = 'material',
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
		category = 'material',
		label = "Saumon",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/r_chinook_salmon.webp'
		}
	},

	["catfish"] = {
		category = 'material',
		label = "Poisson chat",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/r_catfish.webp'
		}
	},

	["perch"] = {
		category = 'material',
		label = "Perche",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'hunting/perch.webp'
		}
	},

	["crappy"] = {
		category = 'material',
		label = "Crapet",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/crappy.webp'
		}
	},

	["trout"] = {
		category = 'material',
		label = "Truite",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/r_brown_trout.webp'
		}
	},

	["sardine"] = {
		category = 'material',
		label = "Sardine",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/o_pacific_sardine.webp'
		}
	},

	["shark"] = {
		category = 'material',
		label = "Requineau",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = false,
		client = {
			image = 'seaworld/fishing-shark.webp'
		}
	},

	["fishing-sockeye-salmon"] = {
		category = 'material',
		label = "Saumon rouge",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/r_coho_salmon.webp'
		}
	},

	["fishing-mackerel"] = {
		category = 'material',
		label = "Maquereau",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/fishing-mackerel.webp'
		}
	},

	["snapper"] = {
		category = 'material',
		label = "Vivaneau",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/o_red_snapper.webp'
		}
	},

	["pike"] = {
		category = 'material',
		label = "Brochet",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/northernpike.webp'
		}
	},

	["mahifish"] = {
		category = 'material',
		label = "Mahi-mahi",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = false,
		client = {
			image = 'seaworld/o_mahi_mahi.webp'
		}

	},

	["coralfish"] = {
		category = 'material',
		label = "Poisson corail",
		degrade = 480, -- fraîcheur (minutes, 8h) + compat glacière
		stack = true,
		client = {
			image = 'seaworld/coralfish.webp'
		}
	},

	['sea-bass'] = {
		category = 'material',
		label = 'Bar commun',
		stack = true,
		degrade = 480,
		description = 'Gare au bar à thym !',
		client = {
			image = 'seaworld/o_white_seabass.webp'
		}

	},

	['mullet'] = {
		category = 'material',
		label = 'Mulet',
		stack = true,
		degrade = 480,
		client = {
			image = 'seaworld/mullet.webp'
		}

	},

	['rockfish'] = {
		category = 'material',
		label = 'Sébaste',
		stack = true,
		degrade = 480,
		client = {
			image = 'seaworld/rockfish.webp'
		}

	},

	['moray'] = {
		category = 'material',
		label = 'Murène',
		stack = true,
		degrade = 480,
		client = {
			image = 'seaworld/moray.webp'
		}

	},

	['swordfish'] = {
		category = 'material',
		label = 'Espadon juvénile',
		degrade = 480,
		stack = true,
		client = {
			image = 'seaworld/swordfish.webp'
		}

	},

	['largemouthbass'] = {
		category = 'material',
		label = 'Achigan à grande bouche',
		degrade = 480,
		stack = true,
		client = {
			image = 'seaworld/largemouthbass.webp'
		}

	},

	['bluegill'] = {
		category = 'material',
		label = 'Perche soleil',
		degrade = 480,
		stack = true,
		client = {
			image = 'seaworld/bluegill.webp'
		}

	},

	['r_common_carp'] = {
		category = 'material',
		label = 'Carpe commune',
		degrade = 480,
		stack = true,
		client = {
			image = 'seaworld/r_common_carp.webp'
		}

	},

	-- --- Déchets (repêchés à la ligne) ---
	["old_boot"] = {
		category = 'misc',
		label = "Vieille botte",
		weight = 800,
		stack = true,
		close = true,
		client = {
			image = 'activities/fishingboot.webp'
		}
	},

	["rusty_can"] = {
		category = 'material',
		label = "Canette rouillée",
		weight = 200,
		stack = true,
		close = true,
		client = {
			image = 'garbage/trash_can_1.webp'
		}
	},

	["old_tire"] = {
		category = 'tools',
		label = "Vieux pneu",
		weight = 9000,
		stack = true,
		close = true,
		client = {
			image = 'mechanic/tire.webp'
		}
	},

	["seaweed_clump"] = {
		category = 'material',
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
		category = 'misc',
		label = "Carte des zones de pêche",
		stack = true,
		close = true,
		client = {
			image = 'activities/fishmap.webp'
		}

	},

	-- ── EVIDENCE ──────────────────────────────────────────────────────────────────

	['instant_camera'] = {
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'tools',
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
		category = 'misc',
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
		category = 'drugs',
		label = 'Paquet Redwood Original',
		stack = false,
		weight = 50,
		close = true,
		client = {
			export = 'devcore_smoke.OpenCigPack'
		}
	},

	['classic_lighter'] = {
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
		label = 'Liquide cerise',
		stack = false,
		weight = 250,
		close = false,
		client = {
			image = 'smokes/cherry_liquid.webp'
		}
	},

	['blueberry_liquid'] = {
		category = 'drugs',
		label = 'Liquide myrtille',
		stack = false,
		weight = 250,
		close = false,
		client = {
			image = 'smokes/blueberry_liquid.webp'
		}
	},

	['cig_redwood'] = {
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
		label = 'Weed Og Kush',
		stack = true,
		weight = 1,
		close = false,
		client = {
			image = 'smokes/og_kush_weed.webp'
		}
	},

	['banana_kush_weed'] = {
		category = 'drugs',
		label = 'Weed Banana Kush',
		stack = true,
		weight = 1,
		close = false,
		client = {
			image = 'smokes/og_kush_weed.webp'
		}
	},

	['purple_haze_weed'] = {
		category = 'drugs',
		label = 'Weed Purple Haze',
		stack = true,
		weight = 1,
		close = false,
		client = {
			image = 'smokes/purple_haze_weed.webp'
		}
	},

	['blue_dream_weed'] = {
		category = 'drugs',
		label = 'Weed Blue Dream',
		stack = true,
		weight = 1,
		close = false,
		client = {
			image = 'smokes/blue_dream_weed.webp'
		}
	},

	['og_kush_joint'] = {
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
		label = 'Charbons en bois',
		stack = true,
		weight = 50,
		close = false,
		client = {
			image = 'smokes/hookah_wooden_coals.webp'
		}
	},

	['hookah_coconut_coals'] = {
		category = 'drugs',
		label = 'Charbons de coco',
		stack = true,
		weight = 50,
		close = false,
		client = {
			image = 'smokes/hookah_wooden_coals.webp'
		}
	},

	['hookah_bamboo_coals'] = {
		category = 'drugs',
		label = 'Charbons de bambou',
		stack = true,
		weight = 50,
		close = false,
		client = {
			image = 'smokes/hookah_wooden_coals.webp'
		}
	},

	['hookah_blueberry_tobacco'] = {
		category = 'drugs',
		label = 'Tabac à chicha myrtille',
		stack = true,
		weight = 100,
		close = false,
		client = {
			image = 'smokes/hookah_blueberry_tobacco.webp'
		}
	},

	['hookah_raspberry_tobacco'] = {
		category = 'drugs',
		label = 'Tabac à chicha framboise',
		stack = true,
		weight = 100,
		close = false,
		client = {
			image = 'smokes/hookah_raspberry_tobacco.webp'
		}
	},

	['hookah_blackberry_tobacco'] = {
		category = 'drugs',
		label = 'Tabac à chicha mûre',
		stack = true,
		weight = 100,
		close = false,
		client = {
			image = 'smokes/hookah_blackberry_tobacco.webp'
		}
	},

	['hookah_cherry_tobacco'] = {
		category = 'drugs',
		label = 'Tabac à chicha cerise',
		stack = true,
		weight = 100,
		close = false,
		client = {
			image = 'smokes/hookah_cherry_tobacco.webp'
		}
	},

	['redwood_cherry_chew'] = {
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
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
		category = 'drugs',
		label = 'Tabac à chiquer fraise',
		stack = false,
		weight = 100,
		close = true,
		client = {
			export = 'devcore_smoke.StartPlayerSmoking',
			image = 'smokes/redwood_strawberry_chew.webp'
		}
	},

	["phone_black"] = {
		category = 'tech',
		label = "Black Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["beer"] = {
		category = 'food',
		label = "Beer",
		weight = 1,
		stack = true,
		close = true,
	},

	["phone_green"] = {
		category = 'tech',
		label = "Green Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["phone_orange"] = {
		category = 'tech',
		label = "Orange Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["phone_pink"] = {
		category = 'tech',
		label = "Pink Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["phone_purple"] = {
		category = 'tech',
		label = "Purple Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["phone_red"] = {
		category = 'tech',
		label = "Red Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["phone_yellow"] = {
		category = 'tech',
		label = "Yellow Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["pizza_ham"] = {
		category = 'food',
		label = "Pizza Ham",
		weight = 1,
		stack = true,
		close = true,
	},

	["coffee"] = {
		category = 'food',
		label = "Coffee",
		weight = 1,
		stack = true,
		close = true,
	},

	["sandwich"] = {
		category = 'food',
		label = "Sandwich",
		weight = 1,
		stack = true,
		close = true,
	},

	["taco_chicken"] = {
		category = 'food',
		label = "Chicken Taco",
		weight = 1,
		stack = true,
		close = true,
	},

	["wine"] = {
		category = 'food',
		label = "Wine",
		weight = 1,
		stack = true,
		close = true,
	},

	["meth"] = {
		category = 'drugs',
		label = "Meth",
		weight = 1,
		stack = true,
		close = true,
	},

	["blackberry_ale"] = {
		category = 'food',
		label = "Blackberry Ale",
		weight = 1,
		stack = true,
		close = true,
	},

	["repairkit"] = {
		category = 'tools',
		label = "Repair Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["phone_blue"] = {
		category = 'tech',
		label = "Blue Phone",
		weight = 1,
		stack = true,
		close = true,
	},
}