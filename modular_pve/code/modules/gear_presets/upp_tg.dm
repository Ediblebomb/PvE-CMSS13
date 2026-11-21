////////////////////////////////////////[UPP Territorial Guard Rifleman]////////////////////////////////////////

/datum/equipment_preset/upp/militia
	name = "UPP People's Territorial Guardsman"
	flags = EQUIPMENT_PRESET_EXTRA
	assignment = "People's Territorial Guard Rifleman"
	role_comm_title = "PTG-RFN"
	paygrades = list(PAY_SHORT_UE1 = JOB_PLAYTIME_TIER_0, PAY_SHORT_UE2 = JOB_PLAYTIME_TIER_1)
	skills = /datum/skills/pfc
	access = list(ACCESS_UPP_GENERAL, ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_BRIG, ACCESS_CIVILIAN_COMMAND)

/datum/equipment_preset/upp/militia/load_gear(mob/living/carbon/human/new_human)

	if(SSmapping.configs[GROUND_MAP].environment_traits[MAP_COLD])
		new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf, WEAR_FACE)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap/ushanka, WEAR_HEAD)
	new_human.undershirt = "Territorial Guard Telnyashka"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp, WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/tool/hatchet, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/fancy/cigar/matchbook/brown, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/brown, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/flashlight/flare/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/flashlight/flare/upp, WEAR_IN_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/upp/territorial, WEAR_L_EAR)
	//head
	var/random_hat= rand(1,3)
	switch(random_hat)
		if(1)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap, WEAR_HEAD)
		if(2 to 3)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap/boonie, WEAR_HEAD)
	//uniform
	var/obj/item/clothing/under/marine/veteran/UPP/uniform = new()
	var/random_uniform = rand(1,2)
	switch(random_uniform)
		if(1)
			uniform.roll_suit_jacket(new_human)
		if(2)
			uniform.roll_suit_sleeves(new_human)
	new_human.equip_to_slot_or_del(uniform, WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/upp, WEAR_ACCESSORY)
	var/random_storage = pick(/obj/item/clothing/accessory/storage/webbing, /obj/item/clothing/accessory/storage/droppouch)
	new_human.equip_to_slot_or_del(new random_storage, WEAR_ACCESSORY)
	//jacket
	var/random_jacket= rand(1,5)
	switch(random_jacket)
		if(1 to 2)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/jacket, WEAR_JACKET)
		if(3 to 4)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/lamp, WEAR_JACKET)
		if(5)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/light, WEAR_JACKET)
	if(prob(95))
		new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type71, WEAR_IN_ACCESSORY)
		new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type71, WEAR_IN_ACCESSORY)
		new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type71, WEAR_IN_ACCESSORY)
		new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/type71, WEAR_J_STORE)
	else
		new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/handful/shotgun/buckshot, WEAR_IN_ACCESSORY)
		new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/handful/shotgun/buckshot, WEAR_IN_ACCESSORY)
		new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/handful/shotgun/buckshot, WEAR_IN_ACCESSORY)
		new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/shotgun/double/upp, WEAR_J_STORE)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp/guard, WEAR_FEET)
	//waist
	new_human.equip_to_slot_or_del(new /obj/item/storage/large_holster/machete/arnold/weak, WEAR_WAIST)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate, WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/medium, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/prop/helmetgarb/compass, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/shovel/etool/upp/folded, WEAR_IN_R_STORE)

/datum/equipment_preset/upp/militia/at
	name = "UPP People's Territorial Guardsman (RPG)"
	flags = EQUIPMENT_PRESET_EXTRA
	assignment = "People's Territorial Guard Rifleman"
	role_comm_title = "PTG-RFN"
	paygrades = list(PAY_SHORT_UE1 = JOB_PLAYTIME_TIER_0, PAY_SHORT_UE2 = JOB_PLAYTIME_TIER_1)
	skills = /datum/skills/pfc
	access = list(ACCESS_UPP_GENERAL, ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_BRIG, ACCESS_CIVILIAN_COMMAND)

/datum/equipment_preset/upp/militia/at/load_gear(mob/living/carbon/human/new_human)

	if(SSmapping.configs[GROUND_MAP].environment_traits[MAP_COLD])
		new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf, WEAR_FACE)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap/ushanka, WEAR_HEAD)
	new_human.undershirt = "Territorial Guard Telnyashka"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/launcher/rocket/upp, WEAR_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/upp/territorial, WEAR_L_EAR)
	//head
	var/random_hat= rand(1,3)
	switch(random_hat)
		if(1)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap, WEAR_HEAD)
		if(2 to 3)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap/boonie, WEAR_HEAD)
	//uniform
	var/obj/item/clothing/under/marine/veteran/UPP/uniform = new()
	var/random_uniform = rand(1,2)
	switch(random_uniform)
		if(1)
			uniform.roll_suit_jacket(new_human)
		if(2)
			uniform.roll_suit_sleeves(new_human)
	new_human.equip_to_slot_or_del(uniform, WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/upp, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/droppouch, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen, WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/tool/hatchet, WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/storage/fancy/cigar/matchbook/brown, WEAR_IN_ACCESSORY)
	//jacket
	var/random_jacket= rand(1,5)
	switch(random_jacket)
		if(1 to 2)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/jacket, WEAR_JACKET)
		if(3 to 4)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/lamp, WEAR_JACKET)
		if(5)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/light, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/general_belt/upp, WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/upp/at, WEAR_IN_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/upp/at, WEAR_IN_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/upp/at, WEAR_IN_J_STORE)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp/guard, WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/brown, WEAR_HANDS)
	//waist
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/type47/t73, WEAR_WAIST)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate, WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/medium, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/prop/helmetgarb/compass, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/shovel/etool/upp/folded, WEAR_IN_R_STORE)

////////////////////////////////////////[UPP Territorial Guard Sanitar]////////////////////////////////////////

/datum/equipment_preset/upp/militia/medic
	name = "UPP People's Territorial Guardsman Sanitar"
	flags = EQUIPMENT_PRESET_EXTRA
	assignment = "People's Territorial Guard Sanitar"
	role_comm_title = "PTG-SNA"
	paygrades = list(PAY_SHORT_UE3 = JOB_PLAYTIME_TIER_0)
	skills = /datum/skills/medic
	access = list(ACCESS_UPP_GENERAL, ACCESS_CIVILIAN_BRIG, ACCESS_CIVILIAN_COMMAND, ACCESS_CIVILIAN_MEDBAY, ACCESS_UPP_MEDICAL)

/datum/equipment_preset/upp/militia/medic/load_gear(mob/living/carbon/human/new_human)

	if(SSmapping.configs[GROUND_MAP].environment_traits[MAP_COLD])
		new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf, WEAR_FACE)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap/ushanka, WEAR_HEAD)
	new_human.undershirt = "Territorial Guard Telnyashka"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp, WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/firstaid/softpack/regular/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/roller/bedroll, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/healthanalyzer/soul, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/tool/surgery/surgical_line, WEAR_IN_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/upp/territorial, WEAR_L_EAR)
	//head
	var/random_hat= rand(1,3)
	switch(random_hat)
		if(1)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap, WEAR_HEAD)
		if(2 to 3)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap/boonie, WEAR_HEAD)
	//uniform
	var/obj/item/clothing/under/marine/veteran/UPP/uniform = new()
	var/random_uniform = rand(1,2)
	switch(random_uniform)
		if(1)
			uniform.roll_suit_jacket(new_human)
		if(2)
			uniform.roll_suit_sleeves(new_human)
	new_human.equip_to_slot_or_del(uniform, WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/upp, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/armband/med, WEAR_ACCESSORY)
	var/random_storage = rand(1,2)
	switch(random_storage)
		if(1)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/webbing, WEAR_ACCESSORY)
			new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/bizon, WEAR_IN_ACCESSORY)
			new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/bizon, WEAR_IN_ACCESSORY)
			new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/bizon, WEAR_IN_ACCESSORY)
		if(2)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/droppouch, WEAR_ACCESSORY)
			new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/bizon, WEAR_IN_ACCESSORY)
			new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/bizon, WEAR_IN_ACCESSORY)
	//jacket
	var/random_jacket= rand(1,5)
	switch(random_jacket)
		if(1 to 2)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/jacket, WEAR_JACKET)
		if(3 to 4)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/lamp, WEAR_JACKET)
		if(5)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/light, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/smg/bizon/upp, WEAR_J_STORE)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp/guard, WEAR_FEET)
	//waist
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/medical/lifesaver/upp/lesser, WEAR_WAIST)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/medical, WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/hypospray/tricordrazine, WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/hypospray/autoinjector/bicaridine, WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/hypospray/autoinjector/kelotane, WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/medium, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/prop/helmetgarb/compass, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/shovel/etool/upp/folded, WEAR_IN_R_STORE)

////////////////////////////////////////[UPP Territorial Guard Squad Leader]////////////////////////////////////////

/datum/equipment_preset/upp/militia/nco
	name = "UPP People's Territorial Guardsman Sergeant"
	flags = EQUIPMENT_PRESET_EXTRA
	assignment = "People's Territorial Guard Squad Leader"
	role_comm_title = "PTG-NCO"
	paygrades = list(PAY_SHORT_UE4 = JOB_PLAYTIME_TIER_0)
	skills = /datum/skills/pfc
	access = list(ACCESS_UPP_GENERAL, ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_BRIG, ACCESS_CIVILIAN_COMMAND)

/datum/equipment_preset/upp/militia/nco/load_gear(mob/living/carbon/human/new_human)

	if(SSmapping.configs[GROUND_MAP].environment_traits[MAP_COLD])
		new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf, WEAR_FACE)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap/ushanka, WEAR_HEAD)
	new_human.undershirt = "Territorial Guard Telnyashka"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp, WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/high_explosive/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/flashlight/flare/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/flashlight/flare/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/flashlight/flare/upp, WEAR_IN_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/upp/territorial, WEAR_L_EAR)
	//head
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap/beret, WEAR_HEAD)
	//uniform
	var/obj/item/clothing/under/marine/veteran/UPP/uniform = new()
	var/random_uniform = rand(1,2)
	switch(random_uniform)
		if(1)
			uniform.roll_suit_jacket(new_human)
		if(2)
			uniform.roll_suit_sleeves(new_human)
	new_human.equip_to_slot_or_del(uniform, WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/upp, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/armband, WEAR_ACCESSORY)

	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/droppouch, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/device/binoculars/civ, WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/prop/helmetgarb/compass, WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/tool/shovel/etool/upp/folded, WEAR_IN_ACCESSORY)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/light, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/type71, WEAR_J_STORE)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp/guard, WEAR_FEET)
	//waist
	new_human.equip_to_slot_or_del(new /obj/item/storage/large_holster/machete/arnold/weak, WEAR_WAIST)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate, WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/magazine, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type71, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type71, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type71, WEAR_IN_R_STORE)

////////////////////////////////////////[UPP Territorial Guard Technician]////////////////////////////////////////

/datum/equipment_preset/upp/militia/tech
	name = "UPP People's Territorial Guardsman Technician"
	flags = EQUIPMENT_PRESET_EXTRA
	assignment = "People's Territorial Guard Technician"
	role_comm_title = "PTG-TCH"
	paygrades = list(PAY_SHORT_UE3 = JOB_PLAYTIME_TIER_0)
	skills = /datum/skills/eng_tech
	access = list(ACCESS_UPP_GENERAL, ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_BRIG, ACCESS_CIVILIAN_COMMAND, ACCESS_CIVILIAN_ENGINEERING, ACCESS_UPP_ENGINEERING)

/datum/equipment_preset/upp/militia/tech/load_gear(mob/living/carbon/human/new_human)

	if(SSmapping.configs[GROUND_MAP].environment_traits[MAP_COLD])
		new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf, WEAR_FACE)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap/ushanka, WEAR_HEAD)
	new_human.undershirt = "Territorial Guard Telnyashka"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp, WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/tool/hatchet, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/fancy/cigar/matchbook/brown, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/brown, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/plastic/breaching_charge, WEAR_IN_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/upp/territorial, WEAR_L_EAR)
	//head
	var/random_hat= rand(1,3)
	switch(random_hat)
		if(1)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap, WEAR_HEAD)
		if(2 to 3)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap/boonie, WEAR_HEAD)
	//uniform
	var/obj/item/clothing/under/marine/veteran/UPP/uniform = new()
	var/random_uniform = rand(1,2)
	switch(random_uniform)
		if(1)
			uniform.roll_suit_jacket(new_human)
		if(2)
			uniform.roll_suit_sleeves(new_human)
	new_human.equip_to_slot_or_del(uniform, WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/upp, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/armband/engine, WEAR_ACCESSORY)
	var/random_storage = rand(1,2)
	switch(random_storage)
		if(1)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/webbing, WEAR_ACCESSORY)
			new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/bizon, WEAR_IN_ACCESSORY)
			new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/bizon, WEAR_IN_ACCESSORY)
			new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/bizon, WEAR_IN_ACCESSORY)
		if(2)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/droppouch, WEAR_ACCESSORY)
			new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/bizon, WEAR_IN_ACCESSORY)
			new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/bizon, WEAR_IN_ACCESSORY)
	//jacket
	var/random_jacket= rand(1,5)
	switch(random_jacket)
		if(1 to 2)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/jacket, WEAR_JACKET)
		if(3 to 4)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/lamp, WEAR_JACKET)
		if(5)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/light, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/smg/bizon/upp, WEAR_J_STORE)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp/guard, WEAR_FEET)
	//waist
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/utility/full, WEAR_WAIST)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate, WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/construction/low_grade_full, WEAR_R_STORE)

////////////////////////////////////////[UPP Territorial Guard Officer]////////////////////////////////////////

/datum/equipment_preset/upp/militia/officer
	name = "UPP People's Territorial Guardsmen Officer"
	flags = EQUIPMENT_PRESET_EXTRA
	assignment = "People's Territorial Guard Officer"
	role_comm_title = "PTG-LT"
	paygrades = list(PAY_SHORT_UO1 = JOB_PLAYTIME_TIER_0)
	skills = /datum/skills/lt
	access = list(ACCESS_UPP_GENERAL, ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_BRIG, ACCESS_CIVILIAN_COMMAND, ACCESS_UPP_LEADERSHIP)

/datum/equipment_preset/upp/militia/officer/load_gear(mob/living/carbon/human/new_human)

	if(SSmapping.configs[GROUND_MAP].environment_traits[MAP_COLD])
		new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf, WEAR_FACE)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap/ushanka, WEAR_HEAD)
	new_human.undershirt = "Territorial Guard Telnyashka"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/satchel, WEAR_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/upp/territorial, WEAR_L_EAR)
	//head
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/uppcap/peaked, WEAR_HEAD)
	//uniform
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/veteran/UPP/service, WEAR_BODY)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/marine/upp, WEAR_JACKET)
	//waist
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/type47/t73, WEAR_WAIST)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/laceup, WEAR_FEET)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/medium, WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/notepad, WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/pen/clicky, WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate, WEAR_R_STORE)
