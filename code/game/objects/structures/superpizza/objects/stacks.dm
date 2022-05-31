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
/datum/material/stone
	name = "stone"
	desc = "rocks"
	color = "#9c9c9c"
	categories = list(MAT_CATEGORY_ORE = FALSE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_MASON_RECIPES = TRUE)
	value_per_unit = 0.0025
	armor_modifiers = list("melee" = 3, "bullet" = 3, "laser" = 3, "energy" = 3, "bomb" = 2, "bio" = 0, "rad" =1, "fire" = 5, "acid" = 1.1, "stab" = 1, "slash" = 1, "crush" = 1, "slash" = 3, "stab" = 3, "crush" = 1)
	weight = 0.05
	texture_layer_icon_state = "stone"
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
	custom_materials = list(/datum/material/stone=MINERAL_MATERIAL_AMOUNT)
	material_type = /datum/material/stone
/obj/item/stack/stone/bunch
	amount = 3
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
	spreadChance = 70
	meltingpoint = 1538
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
	armor_modifiers = list("melee" = 0.64, "bullet" = 0.7, "laser" = 0.7, "energy" = 0.1, "bomb" = 1, "bio" = 0, "rad" =1, "fire" = 0.7, "acid" = 1.1, "stab" = 1, "slash" = 1, "crush" = 1, "slash" = 1, "stab" = 1, "crush" = 1)
	integrity_modifier = 0.75
	toolspeed_modifier = 0.75
	strength_modifier = 7
	brittleness = 0.001
	weight = 0.13
/obj/item/stack/ore/malachite
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "malachite"
	desc = "its got copper"
	icon_state = "malachite"
	novariants = FALSE
	grind_results = list(/datum/reagent/copper = 10)
	points = 1
	refined_type = /obj/item/stack/sheet/copper
	mine_experience = 1
	scan_state = "copper"
	spreadChance = 70
	meltingpoint = 1085
	resistance_flags = FIRE_PROOF
/obj/item/stack/ore/tetrahedrite
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "tetrahedrite"
	novariants = TRUE
	desc = "its got copper"
	icon_state = "tetrahedrite"
	grind_results = list(/datum/reagent/copper = 10, /datum/reagent/silver = 2)
	points = 3
	refined_type = /obj/item/stack/sheet/copper
	mine_experience = 1
	scan_state = "tetrahedrite"
	spreadChance = 70
	meltingpoint = 1085
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
//lead
/datum/material/lead
	name = "lead"
	desc = "lead"
	color = "#212121"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/lead
	value_per_unit = 0.0025
	integrity_modifier = 0.375
	armor_modifiers = list("melee" = 1, "bullet" = 1.1, "laser" = 1.15, "energy" = 1.15, "bomb" = 1, "bio" = 0, "rad" = 4, "fire" = 2, "acid" = 1.1, "stab" = 1, "slash" = 1, "crush" = 1, "slash" = 1.2, "stab" = 1, "crush" = 0.5)
	strength_modifier = 1.5
	weight = 0.14
	brittleness = 12
	coldprotection = 1
	coldvulnerable = 1
	heatprotection = 1.5
	heatvulnerable = 0.5
/obj/item/stack/ore/galena
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "galena"
	novariants = FALSE
	desc = "its got lead"
	icon_state = "galena"
	points = 1
	refined_type = /obj/item/stack/sheet/lead
	mine_experience = 1
	scan_state = "lead"
	spreadChance = 85
	meltingpoint = 327.46
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
//tin
/datum/material/tin
	name = "tin"
	desc = "tin"
	color = "#d3d4d5"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/tin
	value_per_unit = 0.0025
	weight = 0.07
	strength_modifier = 0.70
	integrity_modifier = 0.375
	armor_modifiers = list("melee" = 0.8, "bullet" = 0.6, "laser" = 0.9, "energy" = 0.5, "bomb" = 0.3, "bio" = 0, "rad" = 1, "fire" = 0.7, "acid" = 1.1, "stab" = 1, "slash" = 1, "crush" = 1, "slash" = 1, "stab" = 1, "crush" = 0.7)
	coldprotection = 0.9
	coldvulnerable = 1.1
	heatprotection = 0.9
	heatvulnerable = 1.1
	integrity_modifier = 0.25
	toolspeed_modifier = 0.375
	strength_modifier = 0.75
/obj/item/stack/ore/cassiterite
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "cassiterite"
	novariants = FALSE
	desc = "its got tin"
	icon_state = "cassiterite"
	points = 1
	refined_type = /obj/item/stack/sheet/tin
	mine_experience = 1
	scan_state = "tin"
	spreadChance = 91
	meltingpoint = 231
	boilingpoint = 2602
	dens = 61.6
	resistance_flags = FIRE_PROOF
/obj/item/stack/sheet/tin
	novariants = FALSE
	icon_state = "tin"
	name = "tin"
	desc = "tin"
	icon = 'code/game/objects/structures/superpizza/metals.dmi'
	custom_materials = list(/datum/material/tin=MINERAL_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/tin
	material_type = /datum/material/tin
	resistance_flags = FIRE_PROOF
//zinc
/datum/material/zinc
	name = "zinc"
	desc = "zinc"
	color = "#92898a"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/zinc
	value_per_unit = 0.0025
	weight = 0.09
	coldprotection = 1
	coldvulnerable = 1
	heatprotection = 1
	heatvulnerable = 1
	integrity_modifier = 0.625
	toolspeed_modifier = 1.2
	strength_modifier = 1
	brittleness = 1.8
/obj/item/stack/ore/sphalerite
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "sphalerite"
	novariants = FALSE
	desc = "its got zinc"
	icon_state = "sphalerite"
	points = 1
	refined_type = /obj/item/stack/sheet/zinc
	mine_experience = 1
	scan_state = "zinc"
	spreadChance = 80
	meltingpoint = 419.5
	resistance_flags = FIRE_PROOF
/obj/item/stack/sheet/zinc
	novariants = FALSE
	icon_state = "zinc"
	name = "zinc"
	desc = "zinc"
	icon = 'code/game/objects/structures/superpizza/metals.dmi'
	custom_materials = list(/datum/material/zinc=MINERAL_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/zinc
	material_type = /datum/material/zinc
	resistance_flags = FIRE_PROOF
//ALUMINUM
/datum/material/aluminum
	name = "Aluminum"
	desc = "Aluminum"
	color = "#d0d5db"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/aluminum
	value_per_unit = 0.0025
	weight = 0.03
	coldprotection = 0.2
	coldvulnerable = 1.3
	heatprotection = 0.2
	heatvulnerable = 1.3
	integrity_modifier = 0.9
	toolspeed_modifier = 1.2
	strength_modifier = 1
	brittleness = 1
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
	spreadChance = 51
	meltingpoint = 660.3
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
/datum/material/nickel
	name = "nickel"
	desc = "nickel"
	color = "#b5b6b5"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/nickel
	value_per_unit = 0.0025
	weight = 0.13
	coldprotection = 1
	coldvulnerable = 1
	heatprotection = 1
	heatvulnerable = 1
	integrity_modifier = 0.9
	toolspeed_modifier = 1.2
	strength_modifier = 1
	IMPACT_YIELD=70000
	IMPACT_FRACTURE=560000
	IMPACT_STRAIN_AT_YIELD=39
	COMPRESSIVE_YIELD=70000
	COMPRESSIVE_FRACTURE=560000
	COMPRESSIVE_STRAIN_AT_YIELD=39
	TENSILE_YIELD=20000
	TENSILE_FRACTURE=160000
	TENSILE_STRAIN_AT_YIELD=10
	TORSION_YIELD=20000
	TORSION_FRACTURE=160000
	TORSION_STRAIN_AT_YIELD=26
	SHEAR_YIELD=20000
	SHEAR_FRACTURE=160000
	SHEAR_STRAIN_AT_YIELD=26
	BENDING_YIELD=20000
	BENDING_FRACTURE=160000
	BENDING_STRAIN_AT_YIELD=10
/obj/item/stack/ore/garnierite
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "Garnierite"
	novariants = FALSE
	desc = "its got nickel"
	icon_state = "garnierite"
	points = 1
	refined_type = /obj/item/stack/sheet/nickel
	mine_experience = 10
	scan_state = "nickel"
	spreadChance = 85
	meltingpoint = 1455
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
	refined_type = /obj/item/stack/sheet/metal
	mine_experience = 1
	scan_state = "hematite"
	spreadChance = 1
	meltingpoint = 1538
	boilingpoint = 2870
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
	refined_type = /obj/item/stack/sheet/metal
	mine_experience = 1
	scan_state = "magnetite"
	spreadChance = 1
	meltingpoint = 1538
	boilingpoint = 2870
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
	refined_type = /obj/item/stack/sheet/metal
	mine_experience = 1
	scan_state = "limonite"
	spreadChance = 1
	meltingpoint = 1538
	boilingpoint = 2870
	dens = 141
	resistance_flags = FIRE_PROOF
/datum/material/andestite
	name = "andestite"
	desc = "andestite"
	color = "#969696"
	categories = list(MAT_CATEGORY_ORE = FALSE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_MASON_RECIPES = TRUE)
	value_per_unit = 0.0025
	weight = 0.05
	texture_layer_icon_state = "stone"
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
	boilingpoint = 2870
	dens = 141
	resistance_flags = FIRE_PROOF
/datum/material/granite
	name = "granite"
	desc = "granite"
	color = "#e0bcad"
	categories = list(MAT_CATEGORY_ORE = FALSE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_MASON_RECIPES = TRUE)
	value_per_unit = 0.0025
	weight = 0.05
	texture_layer_icon_state = "stone"
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
	boilingpoint = 1749
	dens = 54.7
	material_type = /datum/material/granite
/datum/material/marble
	name = "marble"
	desc = "marble"
	color = "#FFFFFF"
	categories = list(MAT_CATEGORY_ORE = FALSE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_MASON_RECIPES = TRUE)
	value_per_unit = 0.0025
	weight = 0.05
	texture_layer_icon_state = "stone"
/obj/item/stack/ore/marble
	icon = 'code/game/objects/structures/superpizza/rocks.dmi'
	name = "marble"
	novariants = TRUE
	desc = "very common"
	icon_state = "marble"
	points = 0
	mine_experience = 0
	spreadChance = 4
	meltingpoint = 327.46
	boilingpoint = 1749
	dens = 54.7
	custom_materials = list(/datum/material/marble=MINERAL_MATERIAL_AMOUNT)
	material_type = /datum/material/marble
/obj/item/stack/brick
	name = "brick"
	desc = "can clack off your head killing you instantly"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "brick"
	force = 10
	throwforce = 20
	throw_speed = 4
	throw_range = 5
//	texture_layer_icon_state = brick
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
	categories = list(MAT_CATEGORY_ORE = FALSE, MAT_CATEGORY_RIGID = FALSE, MAT_CATEGORY_FABRIC = TRUE, MAT_CATEGORY_FABRIC_RECIPES = TRUE)
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
	categories = list(MAT_CATEGORY_ORE = FALSE, MAT_CATEGORY_RIGID = FALSE, MAT_CATEGORY_FABRIC = TRUE, MAT_CATEGORY_FABRIC_RECIPES = TRUE)
	sheet_type = /obj/item/stack/fabric/linen
	value_per_unit = 0.0025
	weight = 0.0
	coldprotection = 1.1
	coldvulnerable = 1
	heatprotection = 1
	heatvulnerable = 1.1
/obj/item/stack/fabric/silk
	name = "silk"
	desc = "made out of materials(?)"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "silk"
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/fabric/silk
	material_type = /datum/material/silk
	custom_materials = list(/datum/material/silk=MINERAL_MATERIAL_AMOUNT)
/datum/material/leather
	name = "linen"
	desc = "linen"
	color = "#faf0e6"
	categories = list(MAT_CATEGORY_ORE = FALSE, MAT_CATEGORY_RIGID = FALSE, MAT_CATEGORY_FABRIC = TRUE, MAT_CATEGORY_FABRIC_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/leather
	value_per_unit = 0.003
	weight = 0.0
	coldprotection = 1.1
	coldvulnerable = 1
	heatprotection = 1.2
	heatvulnerable = 0.9
