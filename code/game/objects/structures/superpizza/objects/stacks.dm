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

// this is everything else


/obj/structure/barrel/shit
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "barrel"
	desc = "barrel"
	icon_state = "barrel6"
	max_integrity = 25
	anchored = TRUE
	density = 1
/obj/structure/barrel/shit/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/barrel/shit (loc, 1)
	qdel(src)
/obj/item/ammo_casing/homemade
	name = "bullet"
	desc = "a generic bullet"
	caliber = "420"
	projectile_type = /obj/projectile/bullet/a357
/obj/item/brasstube
	name = "brass tube"
	desc = "wack"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "brasspipe"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	custom_materials = list(/datum/material/brass=450)
	force = 7
	throwforce = 1 // why are you throwing a club do you even weapon
	throw_speed = 1
	throw_range = 7

/obj/structure/barrel/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/barrel/ (loc, 1)
	qdel(src)

/obj/structure/barrel/bota
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "barrel"
	desc = "barrel"
	icon_state = "barrel3"
	max_integrity = 25
	anchored = TRUE
	density = 1
/obj/structure/barrel/bota/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/bota/ (loc, 1)
	qdel(src)

/
/obj/structure/barrel/parts
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "barrel"
	desc = "barrel"
	icon_state = "barrel2"
	max_integrity = 25
	anchored = TRUE
	density = 1
/obj/structure/barrel/parts/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/parts/ (loc, 1)
	qdel(src)


/obj/effect/spawner/lootdrop/tool
	name = "barrelspawn"
	lootdoubles = TRUE
	lootcount = 3
	loot = list(

		/obj/item/hammer = 6,

		/obj/item/construction/plumbing = 1,
		)

/obj/structure/barrel/tool
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "barrel"
	desc = "barrel"
	icon_state = "barrel4"
	max_integrity = 25
	anchored = TRUE
	density = 1
// MATS
/obj/structure/barrel/tool/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/tool/ (loc, 1)
	qdel(src)


/obj/structure/barrel/mats
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "barrel"
	desc = "barrel"
	icon_state = "barrel1"
	max_integrity = 25
	anchored = TRUE
	density = 1
/obj/structure/barrel/mats/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/mats/ (loc, 1)
	qdel(src)
// CIRC

/obj/structure/barrel/circ
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "barrel"
	desc = "barrel"
	icon_state = "barrel5"
	max_integrity = 25
	anchored = TRUE
	density = 1
/obj/structure/barrel/circ/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/circ/ (loc, 1)
	qdel(src)

/obj/structure/closet/crate/wooden/chest
	name = "chest"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "lootchest"

/obj/structure/closet/crate/wooden/chest/PopulateContents()
	..()
	for(var/i in 1 to 3)
		new /obj/effect/spawner/lootdrop/treasureloot(src, 1, FALSE)
/obj/machinery/atmospherics/miner/geyser
	max_ext_kpa = 130
	spawn_mol = 9
	idle_power_usage = 0
	active_power_usage = 0
	desc = "Vents gasses from the planet's mantle"
	name = "geyser"
	icon = 'icons/obj/lavaland/terrain.dmi'
	icon_state = "geyser"
	use_power = 0
/obj/machinery/atmospherics/miner/geyser/water
	spawn_id = /datum/gas/water_vapor
/obj/machinery/atmospherics/miner/geyser/n2o
	spawn_id = /datum/gas/nitrous_oxide
/obj/machinery/atmospherics/miner/geyser/plasma
	spawn_id = /datum/gas/plasma
/obj/machinery/atmospherics/miner/geyser/hydrogen
	spawn_id = /datum/gas/hydrogen


/obj/item/stack/brick
	name = "brick"
	desc = "unfortunately it is no longer brown"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "brick"
/obj/item/stack/brick/update_icon_state()
	if(novariants)
		return
	icon_state = "[initial(icon_state)][amount < 7 ? amount : ""]"
	name = "brick"
	desc = "brown bricks"
/turf/closed/wall/brick
	name = "brickwall"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "brickwall"
	desc = "the wall"
	canSmoothWith = null
	hardness = 35
	slicing_duration = 150 //welding through the ice+metal
	bullet_sizzle = TRUE
	thermal_conductivity = 0.025
/obj/item/stack/stone
	name = "stone"
	desc = "stone"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "rock"
	inhand_icon_state = "rock"
	w_class = WEIGHT_CLASS_NORMAL
	force = 10
	throwforce = 10
	throw_speed = 3
	throw_range = 7
	attack_verb = list("hit", "bludgeoned", "whacked")
/obj/item/stack/stone/get_main_recipes()
	. = ..()
	. += GLOB.stone_recipe

/obj/item/stack/ore/cinnabar
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "cinnabar"
	name = "cinnabar"
	desc = "its got mercury in it and stuff"
	grind_results = list(/datum/reagent/mercury = 10)
	points = 1
	custom_materials = list(/datum/material/mercury=MINERAL_MATERIAL_AMOUNT)
	refined_type = null
	mine_experience = 1
	scan_state = "rock_Iron"
	spreadChance = 20
	meltingpoint = 1538
	burningpoint = 2870
	dens = 141
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
	desc = "essentially just stone"
	color = "#808080"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/lithium
	value_per_unit = 0.0025
/obj/item/stack/ore/lithium
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "Pegmatite"
	desc = "do not use this or i will kill you"
	grind_results = list(/datum/reagent/lithium = 10)
	icon_state = "pegmatite"
	points = 1
	custom_materials = list(/datum/material/lithium=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/lithium
	mine_experience = 1
	scan_state = "rock_Iron"
	spreadChance = 20
	meltingpoint = 1538
	burningpoint = 2870
	dens = 141
/obj/item/stack/sheet/lithium
	novariants = FALSE
	name = "lithium"
	desc = "highly reactive and flammable"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "lithium"
	grind_results = list(/datum/reagent/lithium = 10)

//SULFUR
/datum/material/sulphur
	name = "sulphur"
	desc = "sulphur"
	color = "#f2ec44"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = FALSE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sulphur
	value_per_unit = 0.0025
/obj/item/stack/ore/sulphur
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "sulphur"
	desc = "its got stank"
	icon_state = "sulphur"
	grind_results = list(/datum/reagent/sulfur = 10)
	points = 1
	custom_materials = list(/datum/material/sulphur=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sulphur
	mine_experience = 1
	scan_state = "rock_Iron"
	spreadChance = 20
	meltingpoint = 1538
	burningpoint = 2870
	dens = 141
/obj/item/stack/sulphur
	novariants = FALSE
	name = "sulphur"
	desc = "for bombs"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "sulphur"


//COPPER
/datum/material/copper
	name = "copper"
	desc = "copper"
	color = "#B87333"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/copper
	value_per_unit = 0.0025
/obj/item/stack/ore/copper
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
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
	spreadChance = 20
	meltingpoint = 1538
	burningpoint = 2870
	dens = 141
/obj/item/stack/sheet/copper
	novariants = FALSE
	name = "copper"
	desc = "for copper"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "copper"
	grind_results = list(/datum/reagent/copper = 10)


//ALUMINUM
/datum/material/Aluminum
	name = "Aluminum"
	desc = "Aluminum"
	color = "#878687"
	categories = list(MAT_CATEGORY_ORE = TRUE, MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = TRUE)
	sheet_type = /obj/item/stack/sheet/Aluminum
	value_per_unit = 0.0025
/obj/item/stack/ore/Aluminum
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "bauxite"
	novariants = FALSE
	desc = "its got Aluminum"
	icon_state = "bauxite"
	grind_results = list(/datum/reagent/aluminium = 10)
	points = 1
	custom_materials = list(/datum/material/Aluminum=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/Aluminum
	mine_experience = 1
	scan_state = "aluminum"
	spreadChance = 20
	meltingpoint = 1538
	burningpoint = 2870
	dens = 141
/obj/item/stack/sheet/Aluminum
	novariants = FALSE
	icon_state = "Aluminum"
	name = "Aluminum"
	desc = "Aluminum"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	grind_results = list(/datum/reagent/aluminium = 10)

/obj/item/stack/niter
	name = "niter"
	desc = "nitre if you are bri'ish"
	icon_state = "niter"
	grind_results = list(/datum/reagent/saltpetre = 10)

/obj/item/stack/salt
	name = "salt"
	desc = "salt rock"
	icon_state = "salt"
	grind_results = list(/datum/reagent/consumable/sodiumchloride = 10)

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
/obj/item/stack/linen
	name = "linen"
	desc = "its like cloth but its cloth"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "linen"
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/linen
/obj/item/stack/linen/get_main_recipes()
	. = ..()
	. += GLOB.linen_recipes

