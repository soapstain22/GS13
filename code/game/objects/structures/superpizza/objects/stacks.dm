//component things
/obj/item/stack/component
	name = "components"
	desc = "just a bunch of shit."
	singular_name = "component"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "components"
	inhand_icon_state = "rods"
	flags_1 = CONDUCT_1
	w_class = WEIGHT_CLASS_NORMAL
	force = 0
	throwforce = 0
	throw_speed = 3
	throw_range = 7
	custom_materials = list(/datum/material/iron=1000)
	max_amount = 50
	attack_verb = list("hit", "bludgeoned", "whacked")
	hitsound = 'sound/weapons/gun/general/grenade_launch.ogg'
	novariants = TRUE
/obj/item/stack/brick
	name = "brick"
	desc = "unfortunately it is no longer brown"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "brick"
/obj/item/stack/stone
	name = "stone"
	desc = "stone"
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	icon_state = "rock"
	inhand_icon_state = "rock"
	w_class = WEIGHT_CLASS_NORMAL
	force = 10
	throwforce = 10
	throw_speed = 3
	throw_range = 7
	novariants = 0
	attack_verb = list("hit", "bludgeoned", "whacked")
/obj/item/stack/stone/get_main_recipes()
	. = ..()
	. += GLOB.stone_recipe

/obj/item/stack/ore/cinnabar
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	icon_state = "cinnabar"
	name = "cinnabar"
	desc = "its got mercury in it and stuff"
	grind_results = list(/datum/reagent/mercury = 10)
	points = 1
	custom_materials = list(/datum/material/mercury=MINERAL_MATERIAL_AMOUNT)
	refined_type = null
	mine_experience = 1
	scan_state = "cinnabar"
	spreadChance = 20
	meltingpoint = 1538
	burningpoint = 2870
	dens = 141
	resistance_flags = FIRE_PROOF
/datum/material/mercury
	name = "mercury"
	desc = "mercury"
	color = "#484848"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = FALSE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = null
	value_per_unit = 0.0025

//LITHIUM
/datum/material/lithium
	name = "lithium"
	desc = "low density, reactive metal"
	color = "#808080"
	categories = list(MAT_CATEGORY_ORE = FALSE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/lithium
	value_per_unit = 0.0025
/obj/item/stack/sheet/lithium
	novariants = FALSE
	name = "lithium"
	desc = "reactive to nitrogen and oxygen, but very slowly."
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "lithium"
	grind_results = list(/datum/reagent/lithium = 10)
	custom_materials = list(/datum/material/lithium=MINERAL_MATERIAL_AMOUNT)
//SULFUR
/datum/material/sulphur
	name = "sulphur"
	desc = "sulphur"
	color = "#f2ec44"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = FALSE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sulphur
	value_per_unit = 0.0025
/obj/item/stack/ore/sulphur
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "sulphur"
	desc = "its got stank"
	icon_state = "sulphur"
	grind_results = list(/datum/reagent/sulfur = 10)
	points = 1
	custom_materials = list(/datum/material/sulphur=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sulphur
	mine_experience = 1
	scan_state = "sulphur"
	spreadChance = 3
	meltingpoint = 1538
	burningpoint = 2870
	dens = 141
	resistance_flags = FIRE_PROOF
/obj/item/stack/sulphur
	novariants = FALSE
	name = "sulphur"
	desc = "for bombs"
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	icon_state = "sulphur"
	grind_results = list(/datum/reagent/sulfur = 10)
	resistance_flags = FIRE_PROOF
//COPPER
/datum/material/copper
	name = "copper"
	desc = "copper"
	color = "#B87333"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/copper
	value_per_unit = 0.0025
	armor_modifiers = list("melee" = 1.1, "bullet" = 1.1, "laser" = 1.15, "energy" = 1.15, "bomb" = 1, "bio" = 0, "rad" = 1.8, "fire" = 0.7, "acid" = 1.1)
/obj/item/stack/ore/malachite
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "malachite"
	desc = "its got copper"
	icon_state = "malachite"
	novariants = FALSE
	grind_results = list(/datum/reagent/copper = 10)
	points = 1
	custom_materials = list(/datum/material/copper=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/copper
	mine_experience = 1
	scan_state = "copper"
	spreadChance = 1
	meltingpoint = 1538
	burningpoint = 2870
	dens = 141
	resistance_flags = FIRE_PROOF
/obj/item/stack/ore/tetrahedrite
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "tetrahedrite"
	novariants = TRUE
	desc = "its got copper"
	icon_state = "tetrahedrite"
	grind_results = list(/datum/reagent/copper = 10, /datum/reagent/silver = 2)
	points = 3
	custom_materials = list(/datum/material/copper=MINERAL_MATERIAL_AMOUNT,)
	refined_type = /obj/item/stack/sheet/copper
	mine_experience = 1
	scan_state = "tetrahedrite"
	spreadChance = 4
	meltingpoint = 327.46
	burningpoint = 1749
	dens = 54.7
	resistance_flags = FIRE_PROOF
/obj/item/stack/sheet/copper
	novariants = FALSE
	name = "copper"
	desc = "for copper"
	icon = 'code/game/objects/structures/superpizza/metals.dmi'
	icon_state = "copper"
	grind_results = list(/datum/reagent/copper = 10)
	point_value = 20
	custom_materials = list(/datum/material/copper=MINERAL_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/copper
	material_type = /datum/material/copper
	resistance_flags = FIRE_PROOF
	gaseousstate = /datum/gas/copper
//lead
/datum/material/lead
	name = "lead"
	desc = "lead"
	color = "#878687"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/lead
	value_per_unit = 0.0025
	armor_modifiers = list("melee" = 1.1, "bullet" = 1.1, "laser" = 1.15, "energy" = 1.15, "bomb" = 1, "bio" = 0, "rad" = 1.8, "fire" = 0.7, "acid" = 1.1)
	strength_modifier = 1.5
	weight = 0.1
	coldprotection = 1.2
	coldvulnerable = 0.9
	heatprotection = 1.2
	heatvulnerable = 0.9
/obj/item/stack/ore/galena
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "galena"
	novariants = FALSE
	desc = "its got lead"
	icon_state = "galena"
	grind_results = list(/datum/reagent/aluminium = 10)
	points = 1
	custom_materials = list(/datum/material/lead=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/lead
	mine_experience = 1
	scan_state = "lead"
	spreadChance = 4
	meltingpoint = 327.46
	burningpoint = 1749
	dens = 54.7
	resistance_flags = FIRE_PROOF
/obj/item/stack/sheet/lead
	novariants = FALSE
	icon_state = "lead"
	name = "lead"
	desc = "lead"
	icon = 'code/game/objects/structures/superpizza/metals.dmi'
	custom_materials = list(/datum/material/lead=MINERAL_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/lead
	material_type = /datum/material/lead
	resistance_flags = FIRE_PROOF
	meltingpoint = 327.46
	burningpoint = 1749
	dens = 54.7
	gaseousstate = /datum/gas/lead
//tin
/datum/material/tin
	name = "tin"
	desc = "tin"
	color = "#878687"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/tin
	value_per_unit = 0.0025
	weight = 0.05
	armor_modifiers = list("melee" = 1.1, "bullet" = 1.1, "laser" = 1.15, "energy" = 1.15, "bomb" = 1, "bio" = 0, "rad" = 1.8, "fire" = 0.7, "acid" = 1.1)
	coldprotection = 0.9
	coldvulnerable = 1.1
	heatprotection = 0.9
	heatvulnerable = 1.1
/obj/item/stack/ore/cassiterite
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "cassiterite"
	novariants = FALSE
	desc = "its got tin"
	icon_state = "cassiterite"
	grind_results = list(/datum/reagent/aluminium = 10)
	points = 1
	custom_materials = list(/datum/material/tin=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/tin
	mine_experience = 1
	scan_state = "tin"
	spreadChance = 7
	meltingpoint = 1538
	burningpoint = 2870
	dens = 61.6
	resistance_flags = FIRE_PROOF
/obj/item/stack/sheet/tin
	novariants = FALSE
	icon_state = "tin"
	name = "tin"
	desc = "tin"
	icon = 'code/game/objects/structures/superpizza/metals.dmi'
	grind_results = list(/datum/reagent/aluminium = 10)
	custom_materials = list(/datum/material/tin=MINERAL_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/tin
	material_type = /datum/material/tin
	resistance_flags = FIRE_PROOF
	meltingpoint = 1538
	burningpoint = 2870
	dens = 61.6
	gaseousstate = /datum/gas/tin
//zinc
/datum/material/zinc
	name = "zinc"
	desc = "zinc"
	color = "#878687"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/zinc
	value_per_unit = 0.0025
	weight = 0.05
	coldprotection = 1
	coldvulnerable = 1
	heatprotection = 1
	heatvulnerable = 1
/obj/item/stack/ore/sphalerite
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "sphalerite"
	novariants = FALSE
	desc = "its got zinc"
	icon_state = "sphalerite"
	grind_results = list(/datum/reagent/aluminium = 10)
	points = 1
	custom_materials = list(/datum/material/zinc=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/zinc
	mine_experience = 1
	scan_state = "zinc"
	spreadChance = 12
	meltingpoint = 419.5
	burningpoint = 907
	dens = 138
	resistance_flags = FIRE_PROOF
/obj/item/stack/sheet/zinc
	novariants = FALSE
	icon_state = "zinc"
	name = "zinc"
	desc = "zinc"
	icon = 'code/game/objects/structures/superpizza/metals.dmi'
	grind_results = list(/datum/reagent/aluminium = 10)
	custom_materials = list(/datum/material/zinc=MINERAL_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/zinc
	material_type = /datum/material/zinc
	resistance_flags = FIRE_PROOF
	meltingpoint = 419.5
	burningpoint = 907
	dens = 138
	gaseousstate = /datum/gas/zinc
//ALUMINUM
/datum/material/aluminum
	name = "Aluminum"
	desc = "Aluminum"
	color = "#878687"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/aluminum
	value_per_unit = 0.0025
	weight = 0.02
	coldprotection = 1
	coldvulnerable = 1.3
	heatprotection = 1
	heatvulnerable = 1.3
/obj/item/stack/ore/aluminum
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "native aluminum"
	novariants = FALSE
	desc = "its got Aluminum"
	icon_state = "aluminum"
	grind_results = list(/datum/reagent/aluminium = 10)
	points = 1
	custom_materials = list(/datum/material/aluminum=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/aluminum
	mine_experience = 1
	scan_state = "aluminum"
	spreadChance = 20
	meltingpoint = 660.3
	burningpoint = 2470
	dens = 100
	resistance_flags = FIRE_PROOF
/obj/item/stack/sheet/aluminum
	novariants = FALSE
	icon_state = "aluminum"
	name = "Aluminum"
	desc = "Aluminum"
	icon = 'code/game/objects/structures/superpizza/metals.dmi'
	grind_results = list(/datum/reagent/aluminium = 10)
	custom_materials = list(/datum/material/aluminum=MINERAL_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/aluminum
	material_type = /datum/material/aluminum
	resistance_flags = FIRE_PROOF
	meltingpoint = 660.3
	burningpoint = 2470
	dens = 100
	gaseousstate = /datum/gas/aluminum
/datum/material/nickel
	name = "nickel"
	desc = "nickel"
	color = "#878687"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/nickel
	value_per_unit = 0.0025
	weight = 0.05
	coldprotection = 1
	coldvulnerable = 1
	heatprotection = 1
	heatvulnerable = 1
/obj/item/stack/ore/garnierite
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "Garnierite"
	novariants = FALSE
	desc = "its got nickel"
	icon_state = "garnierite"
	points = 1
	custom_materials = list(/datum/material/nickel=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/nickel
	mine_experience = 10
	scan_state = "nickel"
	spreadChance = 20
	meltingpoint = 1455
	burningpoint = 2913
	dens = 152
	resistance_flags = FIRE_PROOF
/obj/item/stack/sheet/nickel
	novariants = FALSE
	icon_state = "nickel"
	name = "nickel"
	desc = "nickel"
	icon = 'code/game/objects/structures/superpizza/metals.dmi'
	custom_materials = list(/datum/material/nickel=MINERAL_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/nickel
	material_type = /datum/material/nickel
	resistance_flags = FIRE_PROOF
	meltingpoint = 1455
	burningpoint = 2913
	dens = 152
	gaseousstate = /datum/gas/nickel
/obj/item/stack/niter
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "niter"
	desc = "nitre if you are bri'ish"
	icon_state = "niter"
	grind_results = list(/datum/reagent/saltpetre = 10)
	resistance_flags = FIRE_PROOF
/obj/item/stack/salt
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "salt"
	desc = "salt rock"
	icon_state = "salt"
	grind_results = list(/datum/reagent/consumable/sodiumchloride = 10)
	resistance_flags = FIRE_PROOF


/obj/item/stack/ore/hematite
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "hematite"
	desc = "its got iron"
	icon_state = "hematite"
	novariants = FALSE
	grind_results = list(/datum/reagent/iron = 10)
	points = 1
	custom_materials = list(/datum/material/iron=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/metal
	mine_experience = 1
	scan_state = "hematite"
	spreadChance = 1
	meltingpoint = 1538
	burningpoint = 2870
	dens = 141
	resistance_flags = FIRE_PROOF
/obj/item/stack/ore/magnetite
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "magnetite"
	desc = "its got iron"
	icon_state = "magnetite"
	novariants = FALSE
	grind_results = list(/datum/reagent/iron = 10)
	points = 1
	custom_materials = list(/datum/material/iron=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/metal
	mine_experience = 1
	scan_state = "magnetite"
	spreadChance = 1
	meltingpoint = 1538
	burningpoint = 2870
	dens = 141
	resistance_flags = FIRE_PROOF
/obj/item/stack/ore/limonite
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "limonite"
	desc = "its got iron"
	icon_state = "limonite"
	novariants = FALSE
	grind_results = list(/datum/reagent/iron = 10)
	points = 1
	custom_materials = list(/datum/material/iron=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/metal
	mine_experience = 1
	scan_state = "limonite"
	spreadChance = 1
	meltingpoint = 1538
	burningpoint = 2870
	dens = 141
	resistance_flags = FIRE_PROOF
/obj/item/stack/ore/andestite
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "andestite"
	desc = "its got andestite"
	icon_state = "andestite"
	novariants = FALSE
	mine_experience = 1
	scan_state = ""
	spreadChance = 1
	meltingpoint = 1538
	burningpoint = 2870
	dens = 141
	resistance_flags = FIRE_PROOF
/obj/item/stack/ore/granite
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "granite"
	novariants = TRUE
	desc = "very common"
	icon_state = "granite"
	points = 3
	mine_experience = 1
	spreadChance = 4
	meltingpoint = 327.46
	burningpoint = 1749
	dens = 54.7
/obj/item/stack/ore/marble
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "marble"
	novariants = TRUE
	desc = "very common"
	icon_state = ""
	points = 0
	mine_experience = 0
	spreadChance = 4
	meltingpoint = 327.46
	burningpoint = 1749
	dens = 54.7

/obj/item/stack/brick
	name = "brick"
	desc = "can clack off your head killing you instantly"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "brick"
	force = 10
	throwforce = 20
	throw_speed = 4
	throw_range = 5
/obj/item/stack/brick/get_main_recipes()
	. = ..()
	. += GLOB.brick_recipe
//lead
//clay and wet clay. CHECK POTTERY.dm FOR REACTIONS TO WATER AND FIREACT
/obj/item/stack/clay
	name = "clay"
	desc = "dry"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "clay"
	inhand_icon_state = "rods"
	w_class = WEIGHT_CLASS_NORMAL
	force = 1
	throwforce = 1
	throw_speed = 3
	throw_range = 7
	max_amount = 10
	attack_verb = list("hit", "bludgeoned", "whacked")

/obj/item/stack/wetclay
	name = "wet clay"
	desc = "wet"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "wetclay"
	inhand_icon_state = "rods"
	w_class = WEIGHT_CLASS_NORMAL
	force = 0
	throwforce = 0
	throw_speed = 3
	throw_range = 7
	max_amount = 10
	attack_verb = list("hit", "bludgeoned", "whacked")
/obj/item/stack/wetclay/get_main_recipes()
	. = ..()
	. += GLOB.clayrec
//linen
/datum/material/linen
	name = "linen"
	desc = "linen"
	color = "#faf0e6"
	categories = list(MAT_CATEGORY_ORE = FALSE, MAT_CATEGORY_RIGID = FALSE, MAT_CATEGORY_FABRIC_RECIPES = TRUE)
	sheet_type = /obj/item/stack/fabric/linen
	value_per_unit = 0.0025
	weight = 0.0
	coldprotection = 1.1
	coldvulnerable = 1
	heatprotection = 1
	heatvulnerable = 1.1
/obj/item/stack/fabric/linen
	name = "linen"
	desc = "its like cloth but its cloth"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "linen"
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/fabric/linen
	material_type = /datum/material/linen
	custom_materials = list(/datum/material/linen=MINERAL_MATERIAL_AMOUNT)

//linen
/datum/material/silk
	name = "linen"
	desc = "linen"
	color = "#faf0e6"
	categories = list(MAT_CATEGORY_ORE = FALSE, MAT_CATEGORY_RIGID = FALSE, MAT_CATEGORY_FABRIC_RECIPES = TRUE)
	sheet_type = /obj/item/stack/fabric/linen
	value_per_unit = 0.0025
	weight = 0.0
	coldprotection = 1.1
	coldvulnerable = 1
	heatprotection = 1
	heatvulnerable = 1.1
/obj/item/stack/fabric/silk
	name = "silk"
	desc = "its like cloth but its cloth"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "linen"
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/fabric/silk
	material_type = /datum/material/silk
	custom_materials = list(/datum/material/silk=MINERAL_MATERIAL_AMOUNT)

