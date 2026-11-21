////////////////////////////////////////[UPP Squad Infantryman]////////////////////////////////////////

/datum/equipment_preset/uscm/pfc/upp
	name = "UPP Squad Infantryman"
	assignment = JOB_SQUAD_MARINE_UPP
	paygrades = list(PAY_SHORT_UE2 = JOB_PLAYTIME_TIER_0)
	access = list(ACCESS_UPP_GENERAL)
	languages = list(LANGUAGE_RUSSIAN, LANGUAGE_CHINESE)
	faction_group = list(FACTION_UPP)
	faction = FACTION_UPP

/datum/equipment_preset/uscm/pfc/upp/load_gear(mob/living/carbon/human/new_human)
	new_human.undershirt = "Naval Infantry Telnyashka"

/datum/equipment_preset/uscm/pfc/upp/private
	name = parent_type::name + " (E1 Rank)"
	paygrades = list(PAY_SHORT_UE1 = JOB_PLAYTIME_TIER_0)

/datum/equipment_preset/upp/rifleman
	name = "UPP Squad Rifleman (Equipped, Type 71)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE
	assignment = JOB_SQUAD_MARINE
	role_comm_title = "RFN"
	rank = JOB_SQUAD_MARINE
	paygrades = list(PAY_SHORT_UE1 = JOB_PLAYTIME_TIER_0)
	skills = /datum/skills/pfc
	access = list(ACCESS_UPP_GENERAL)

/datum/equipment_preset/upp/rifleman/load_gear(mob/living/carbon/human/new_human)

	new_human.undershirt = "Naval Infantry Telnyashka"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/packet/high_explosive/upp/impact, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/upp, WEAR_L_EAR)
	if(SSmapping.configs[GROUND_MAP].environment_traits[MAP_COLD])
		new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf, WEAR_FACE)
	//head
	add_upp_head(new_human)
	//uniform
	add_upp_uniform(new_human)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/standard, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/type71/preloaded, WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/large_holster/machete/arnold/weak, WEAR_WAIST)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp, WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine, WEAR_HANDS)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/magazine, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type71, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type71, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type71, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate, WEAR_L_STORE)


/datum/equipment_preset/upp/rifleman/ag80
	name = "UPP Squad Rifleman (Equipped, AG80)"

/datum/equipment_preset/upp/rifleman/ag80/load_gear(mob/living/carbon/human/new_human)

	new_human.undershirt = "Naval Infantry Telnyashka"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/packet/high_explosive/upp/impact, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/upp, WEAR_L_EAR)
	if(SSmapping.configs[GROUND_MAP].environment_traits[MAP_COLD])
		new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf, WEAR_FACE)
	//head
	add_upp_head(new_human)
	//uniform
	add_upp_uniform(new_human)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/standard, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/ag80/preloaded, WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/large_holster/machete/arnold/weak, WEAR_WAIST)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp, WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine, WEAR_HANDS)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/magazine, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/ag80, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/ag80, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/ag80, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate, WEAR_L_STORE)

/datum/equipment_preset/upp/rifleman/eva
	name = "UPP Squad Rifleman (Equipped, EVA)"

/datum/equipment_preset/upp/rifleman/eva/load_gear(mob/living/carbon/human/new_human)

	new_human.undershirt = "Naval Infantry Telnyashka"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/packet/high_explosive/upp/impact, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/upp, WEAR_L_EAR)
	//head
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/space/pressure/upp, WEAR_HEAD)
	//uniform
	add_upp_uniform(new_human)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/space/pressure/upp, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/ag80/preloaded, WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/large_holster/machete/arnold/weak, WEAR_WAIST)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp, WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine, WEAR_HANDS)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/magazine, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/ag80, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/ag80, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/ag80, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate, WEAR_L_STORE)

/datum/equipment_preset/upp/rifleman/at
	name = "UPP Anti-Tank Gunner"

/datum/equipment_preset/upp/rifleman/at/load_gear(mob/living/carbon/human/new_human)

	new_human.undershirt = "Naval Infantry Telnyashka"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/launcher/rocket/upp, WEAR_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/upp, WEAR_L_EAR)
	if(SSmapping.configs[GROUND_MAP].environment_traits[MAP_COLD])
		new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf, WEAR_FACE)
	//head
	add_upp_head(new_human)
	//uniform
	add_upp_uniform(new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/holster, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/pistol/t73, WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pistol/t73, WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pistol/t73, WEAR_IN_ACCESSORY)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/standard, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/general_belt/upp, WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/upp/at, WEAR_IN_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/upp/at, WEAR_IN_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen, WEAR_IN_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/general_belt/upp, WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/upp/at, WEAR_IN_BELT)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/upp/at, WEAR_IN_BELT)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/upp/at, WEAR_IN_BELT)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp, WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine, WEAR_HANDS)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/medium, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/upp/at, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate, WEAR_L_STORE)

////////////////////////////////////////[UPP Squad Machinegunner]////////////////////////////////////////

/datum/equipment_preset/uscm/sg/upp
	name = "UPP Squad Machinegunner"
	access = list(ACCESS_UPP_GENERAL, ACCESS_UPP_MACHINEGUN)
	assignment = JOB_SQUAD_SMARTGUN_UPP
	paygrades = list(PAY_SHORT_UE4 = JOB_PLAYTIME_TIER_0)
	role_comm_title = "MG"
	languages = list(LANGUAGE_RUSSIAN, LANGUAGE_CHINESE)
	faction_group = list(FACTION_UPP)
	faction = FACTION_UPP

/datum/equipment_preset/uscm/sg/upp/load_gear(mob/living/carbon/human/new_human)
	new_human.undershirt = "Naval Infantry Telnyashka"

/datum/equipment_preset/uscm/sg/upp/corporal
	name = parent_type::name + " (E3 Rank)"
	paygrades = list(PAY_SHORT_UE3 = JOB_PLAYTIME_TIER_0)

/datum/equipment_preset/uscm/sg/upp/senior_private
	name = parent_type::name + " (E2 Rank)"
	paygrades = list(PAY_SHORT_UE2 = JOB_PLAYTIME_TIER_0)

/datum/equipment_preset/uscm/sg/upp/private
	name = parent_type::name + " (E1 Rank)"
	paygrades = list(PAY_SHORT_UE1 = JOB_PLAYTIME_TIER_0)

/datum/equipment_preset/upp/machinegunner
	name = "UPP Squad Machinegunner (Equipped)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE
	assignment = "Machinegunner"
	role_comm_title = "MG"
	rank = JOB_SQUAD_SMARTGUN_UPP
	paygrades = list(PAY_SHORT_UE3 = JOB_PLAYTIME_TIER_0)
	skills = /datum/skills/smartgunner
	access = list(ACCESS_UPP_GENERAL, ACCESS_UPP_MACHINEGUN)

/datum/equipment_preset/upp/machinegunner/load_gear(mob/living/carbon/human/new_human)

	new_human.undershirt = "Naval Infantry Telnyashka"
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/upp, WEAR_L_EAR)
	if(SSmapping.configs[GROUND_MAP].environment_traits[MAP_COLD])
		new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf, WEAR_FACE)
	//head
	add_upp_head(new_human)
	//uniform
	add_upp_uniform(new_human)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/smartgunner/upp, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/pkp/iff/standard_fmj, WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pkp/standard_fmj, WEAR_IN_JACKET)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp, WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine, WEAR_HANDS)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate, WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/medium, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pkp/standard_fmj, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pkp/standard_fmj, WEAR_IN_R_STORE)
	//waist
	var/uppvetsidearm = prob(50) ? /obj/item/storage/belt/gun/type47/t73 : /obj/item/storage/belt/gun/type47/np92
	new_human.equip_to_slot_or_del(new uppvetsidearm, WEAR_WAIST) // 50/50 np92 or t73

/datum/equipment_preset/upp/machinegunner/heap
	name = "UPP Squad Machinegunner (Equipped, HEAP)"

/datum/equipment_preset/upp/machinegunner/heap/load_gear(mob/living/carbon/human/new_human)

	new_human.undershirt = "Naval Infantry Telnyashka"
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/upp, WEAR_L_EAR)
	if(SSmapping.configs[GROUND_MAP].environment_traits[MAP_COLD])
		new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf, WEAR_FACE)
	//head
	add_upp_head(new_human)
	//uniform
	add_upp_uniform(new_human)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/smartgunner/upp, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/pkp/iff, WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pkp, WEAR_IN_JACKET)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp, WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine, WEAR_HANDS)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate, WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/medium, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pkp, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pkp, WEAR_IN_R_STORE)
	//waist
	var/uppvetsidearm = prob(50) ? /obj/item/storage/belt/gun/type47/t73 : /obj/item/storage/belt/gun/type47/np92
	new_human.equip_to_slot_or_del(new uppvetsidearm, WEAR_WAIST) // 50/50 np92 or t73

////////////////////////////////////////[UPP Squad Sergeant]////////////////////////////////////////

/datum/equipment_preset/uscm/tl/upp
	name = "UPP Squad Sergeant"
	assignment = JOB_SQUAD_TEAM_LEADER_UPP
	role_comm_title = "SqSgt"
	paygrades = list(PAY_SHORT_UE5 = JOB_PLAYTIME_TIER_0)
	access = list(ACCESS_UPP_GENERAL, ACCESS_UPP_TLPREP)
	languages = list(LANGUAGE_RUSSIAN, LANGUAGE_CHINESE)
	faction_group = list(FACTION_UPP)
	faction = FACTION_UPP

/datum/equipment_preset/uscm/tl/upp/load_gear(mob/living/carbon/human/new_human)
	new_human.undershirt = "Naval Infantry Telnyashka"

/datum/equipment_preset/uscm/tl/upp/junior_sergeant
	name = parent_type::name + " (E4 Rank)"
	paygrades = list(PAY_SHORT_UE4 = JOB_PLAYTIME_TIER_0)

/datum/equipment_preset/upp/squadlead
	name = "UPP Squad Sergeant (Equipped)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE
	paygrades = list(PAY_SHORT_UE4 = JOB_PLAYTIME_TIER_0, PAY_SHORT_UE5 = JOB_PLAYTIME_TIER_1)
	access = list(ACCESS_UPP_GENERAL, ACCESS_UPP_TLPREP)
	assignment = JOB_SQUAD_TEAM_LEADER
	rank = JOB_SQUAD_TEAM_LEADER
	faction_group = list(FACTION_UPP)
	faction = FACTION_UPP
	role_comm_title = "SQSGT"

/datum/equipment_preset/upp/squadlead/load_gear(mob/living/carbon/human/new_human)

	new_human.undershirt = "Naval Infantry Telnyashka"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/packet/high_explosive/upp/impact, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/upp, WEAR_L_EAR)
	if(SSmapping.configs[GROUND_MAP].environment_traits[MAP_COLD])
		new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf, WEAR_FACE)
	//head
	add_upp_head(new_human)
	//uniform
	add_upp_uniform(new_human)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/standard, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/type71/preloaded, WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/marine/upp/full, WEAR_WAIST)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp, WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine, WEAR_HANDS)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/magazine, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type71, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type71, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type71, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate, WEAR_L_STORE)

////////////////////////////////////////[UPP Platoon Sanitar]////////////////////////////////////////

/datum/equipment_preset/uscm/medic/upp
	name = "UPP Platoon Sanitar"
	paygrades = list(PAY_SHORT_UE4 = JOB_PLAYTIME_TIER_0)
	access = list(ACCESS_UPP_GENERAL, ACCESS_UPP_MEDPREP, ACCESS_UPP_MEDICAL)
	assignment = JOB_SQUAD_MEDIC_UPP
	role_comm_title = "PltStr"
	languages = list(LANGUAGE_RUSSIAN, LANGUAGE_CHINESE)
	faction_group = list(FACTION_UPP)
	faction = FACTION_UPP

/datum/equipment_preset/uscm/medic/upp/load_gear(mob/living/carbon/human/new_human)
	new_human.undershirt = "Naval Infantry Telnyashka"

/datum/equipment_preset/uscm/medic/upp/corporal
	name = parent_type::name + " (E3 Rank)"
	paygrades = list(PAY_SHORT_UE3 = JOB_PLAYTIME_TIER_0)

/datum/equipment_preset/uscm/medic/upp/senior_private
	name = parent_type::name + " (E2 Rank)"
	paygrades = list(PAY_SHORT_UE2 = JOB_PLAYTIME_TIER_0)

/datum/equipment_preset/uscm/medic/upp/private
	name = parent_type::name + " (E1 Rank)"
	paygrades = list(PAY_SHORT_UE1 = JOB_PLAYTIME_TIER_0)

/datum/equipment_preset/upp/sanitar
	name = "UPP Squad Sanitar (Equipped)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE
	assignment = "Sanitar"
	role_comm_title ="SNITR"
	rank = JOB_SQUAD_MEDIC_UPP
	paygrades = list(PAY_SHORT_UE3 = JOB_PLAYTIME_TIER_0)
	skills = /datum/skills/combat_medic
	access = list(ACCESS_UPP_GENERAL, ACCESS_UPP_MEDICAL, ACCESS_UPP_MEDPREP)

/datum/equipment_preset/upp/sanitar/load_gear(mob/living/carbon/human/new_human)

	new_human.undershirt = "Naval Infantry Telnyashka"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp, WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/firstaid/softpack/adv/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/firstaid/softpack/adv/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/healthanalyzer/soul, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/roller, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen, WEAR_IN_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/upp/medic, WEAR_L_EAR)
	if(new_human.disabilities & NEARSIGHTED)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/hud/health/prescription, WEAR_EYES)
	else
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/hud/health, WEAR_EYES)
	if(SSmapping.configs[GROUND_MAP].environment_traits[MAP_COLD])
		new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf, WEAR_FACE)
	//head
	add_upp_head(new_human)
	//uniform
	add_upp_uniform(new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/light, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/ag80/preloaded, WEAR_J_STORE)
	//waist
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/medical/lifesaver/upp/full, WEAR_WAIST)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp, WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine, WEAR_HANDS)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/magazine, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/ag80, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/ag80, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/ag80, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/medical, WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/surgery/surgical_line, WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/surgery/synthgraft, WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/hypospray/autoinjector/adrenaline_concentrated, WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/hypospray/tricordrazine, WEAR_IN_L_STORE)

////////////////////////////////////////[UPP Platoon Sergeant]////////////////////////////////////////

/datum/equipment_preset/uscm/leader/upp
	name = "UPP Platoon Sergeant"
	assignment = JOB_SQUAD_LEADER_UPP
	role_comm_title = "PltSgt"
	access = list(ACCESS_UPP_GENERAL, ACCESS_UPP_LEADERSHIP, ACCESS_UPP_FLIGHT)
	paygrades = list(PAY_SHORT_UE7 = JOB_PLAYTIME_TIER_0)
	languages = list(LANGUAGE_RUSSIAN, LANGUAGE_ENGLISH, LANGUAGE_CHINESE)
	faction_group = list(FACTION_UPP)
	faction = FACTION_UPP

/datum/equipment_preset/uscm/leader/upp/load_gear(mob/living/carbon/human/new_human)
	new_human.undershirt = "Naval Infantry Telnyashka"

/datum/equipment_preset/uscm/leader/upp/senior_sergeant
	name = parent_type::name + " (E6 Rank)"
	paygrades = list(PAY_SHORT_UE6 = JOB_PLAYTIME_TIER_0)

/datum/equipment_preset/upp/navallead
	name = "UPP Platoon Sergeant (Equipped)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE
	assignment = JOB_SQUAD_LEADER
	role_comm_title = "PLTSGT"
	rank = JOB_SQUAD_LEADER
	paygrades = list(PAY_SHORT_UE6 = JOB_PLAYTIME_TIER_0, PAY_SHORT_UE7 = JOB_PLAYTIME_TIER_1)
	skills = /datum/skills/SL
	languages = list(LANGUAGE_RUSSIAN, LANGUAGE_ENGLISH, LANGUAGE_CHINESE)
	access = list(ACCESS_UPP_GENERAL, ACCESS_UPP_ARMORY, ACCESS_UPP_FLIGHT, ACCESS_UPP_SQUAD_ONE, ACCESS_UPP_SQUAD_TWO, ACCESS_UPP_LEADERSHIP, ACCESS_UPP_MEDPREP, ACCESS_UPP_TLPREP)
	minimap_icon = "leader"

/datum/equipment_preset/upp/navallead/load_gear(mob/living/carbon/human/new_human)

	new_human.undershirt = "Naval Infantry Telnyashka"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/packet/high_explosive/upp/impact, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/upp, WEAR_L_EAR)
	if(SSmapping.configs[GROUND_MAP].environment_traits[MAP_COLD])
		new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf, WEAR_FACE)
	//head
	add_upp_head(new_human)
	//uniform
	add_upp_uniform(new_human)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/standard, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/type71/preloaded, WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/large_holster/machete/arnold/weak, WEAR_WAIST)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp, WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine, WEAR_HANDS)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/magazine, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type71, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type71, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type71, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate, WEAR_L_STORE)

////////////////////////////////////////[UPP Platoon Commander]////////////////////////////////////////
/datum/equipment_preset/uscm_ship/so/upp
	name = "UPP Platoon Commander (PltCo)"
	idtype = /obj/item/card/id/dogtag
	languages = list(LANGUAGE_RUSSIAN, LANGUAGE_CHINESE, LANGUAGE_ENGLISH)
	paygrades = list(PAY_SHORT_UO2 = JOB_PLAYTIME_TIER_0)
	faction_group = list(FACTION_UPP)
	faction = FACTION_UPP
	access_list = ACCESS_LIST_UPP_PLATOON

/datum/equipment_preset/uscm_ship/so/upp/load_gear(mob/living/carbon/human/new_human)
	new_human.undershirt = "Naval Infantry Telnyashka"

/datum/equipment_preset/uscm_ship/so/upp/lesser_rank
	name = parent_type::name + " (Lesser Rank)"
	paygrades = list(PAY_SHORT_UO1 = JOB_PLAYTIME_TIER_0)

/datum/equipment_preset/uscm_ship/so/upp/equipped
	name = "UPP Platoon Commander (Equipped)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE

/datum/equipment_preset/uscm_ship/so/upp/equipped/load_status(mob/living/carbon/human/new_human)
	new_human.nutrition = NUTRITION_NORMAL

/datum/equipment_preset/uscm_ship/so/upp/equipped/load_gear(mob/living/carbon/human/new_human)
	new_human.undershirt = "Naval Infantry Telnyashka"
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress/UPP/command(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap/beret/naval, WEAR_HEAD)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/veteran/UPP/naval(new_human), WEAR_BODY)
	var/obj/item/clothing/under/marine/veteran/UPP/naval/uniform = new()

	new_human.equip_to_slot_or_del(uniform, WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/marine/upp/naval(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/upp, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/upp/naval, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/type47/np92(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/medium(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/medium(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/device/binoculars/range/designator/upp(new_human), WEAR_L_HAND)

/datum/equipment_preset/uscm_ship/so/upp/handle_late_join(mob/living/carbon/human/new_human, late_join)
	if(!late_join)
		add_verb(new_human.client, /client/proc/commander_rename_platoon)
