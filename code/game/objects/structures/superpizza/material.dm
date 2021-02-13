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
/obj/machinery/chem_master/lab
	layer = BELOW_OBJ_LAYER
	icon = 'code/game/objects/structures/superpizza/chemical.dmi'
	icon_state = "mixer0"
	use_power = NO_POWER_USE
	resistance_flags = FIRE_PROOF | ACID_PROOF
	circuit = null
/obj/item/stack/component/get_main_recipes()
	. = ..()
	. += GLOB.component_recipes

GLOBAL_LIST_INIT(component_recipes, list ( \
	new/datum/stack_recipe("solar panel base", /obj/item/solar_assembly, 4, time = 10, on_floor = FALSE), \
	new/datum/stack_recipe("conveyor switch", /obj/item/conveyor_switch_construct, 2, time = 5, one_per_turf = 0), \
	new/datum/stack_recipe("conveyor belt", /obj/item/stack/conveyor, 2, time = 5, one_per_turf = 0), \
	new/datum/stack_recipe("apc electronics", /obj/item/electronics/apc, 1, time = 18), \
	new/datum/stack_recipe("airlock electronics", /obj/item/electronics/airalarm, 1, time = 18), \
	new/datum/stack_recipe("fire alarm electronics", /obj/item/electronics/firealarm, 1, time = 18),
	new/datum/stack_recipe("firelock electronics", /obj/item/electronics/firelock, 1, time = 18),
	new/datum/stack_recipe("air alarm electronics", /obj/item/electronics/airlock, 1, time = 18),
	new/datum/stack_recipe("tracker electronics", /obj/item/electronics/tracker, 1, time = 18),
	new/datum/stack_recipe("scrubber", /obj/machinery/portable_atmospherics/scrubber, 20, time = 50),
	new/datum/stack_recipe("pump", /obj/machinery/portable_atmospherics/pump, 20, time = 50),
	new/datum/stack_recipe("stasis machine", /obj/machinery/stasis, 20, time = 50),
	new/datum/stack_recipe("selling computer", /obj/machinery/computer/piratepad_control/ , 20, time = 50),
	new/datum/stack_recipe("selling machine", /obj/machinery/piratepad, 20, time = 50),
	))
// this is everything else
/obj/structure/flora/ash/flax
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "flaxplant"
	name = "flax"
	desc = "some flowers"
	harvested_name = "flax"
	harvested_desc = "A bunch of formerly-leafed mushrooms, with their sporangiums exposed. Scandalous?"
	harvest = /obj/item/grown/cotton/flax
	needs_sharp_harvest = FALSE
	harvest_amount_high = 4
	harvest_time = 20
	harvest_message_low = "You pluck a single strand"
	harvest_message_med = "You pluck a number of strands, leaving a few unsuitable ones."
	harvest_message_high = "You pluck quite a lot of strands."
	regrowth_time_low = 2400
	regrowth_time_high = 6000
	max_integrity = 35
/obj/structure/flora/ash/aloe
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "aloe"
	name = "leafy mushrooms"
	desc = "A number of mushrooms, each of which surrounds a greenish sporangium with a number of leaf-like structures."
	harvested_name = "leafless mushrooms"
	harvested_desc = "A bunch of formerly-leafed mushrooms, with their sporangiums exposed. Scandalous?"
	harvest = /obj/item/reagent_containers/food/snacks/grown/ash_flora/mushroom_leaf
	needs_sharp_harvest = FALSE
	harvest_amount_high = 4
	harvest_time = 20
	harvest_message_low = "You pluck a single, suitable leaf."
	harvest_message_med = "You pluck a number of leaves, leaving a few unsuitable ones."
	harvest_message_high = "You pluck quite a lot of suitable leaves."
	regrowth_time_low = 2400
	regrowth_time_high = 6000
	max_integrity = 35
/datum/crafting_recipe/hydrobin
	name = "hydroponics bin"
	always_availible = TRUE
	reqs = list(
			/obj/item/reagent_containers/glass/bucket = 2,
			/obj/item/stack/sheet/metal/ = 4)
	result = /obj/machinery/hydroponics
	category = CAT_MISC
	always_availible = TRUE
/datum/crafting_recipe/chemlab
	name = "chem lab"
	always_availible = TRUE
	reqs = list(
			/obj/item/reagent_containers/glass/beaker = 3,
			/obj/item/stack/component = 4,
			/obj/item/stack/sheet/metal/ = 3)
	result = /obj/machinery/chem_master/lab
	category = CAT_MISC
	always_availible = TRUE
/datum/crafting_recipe/c38
	name = "reshell 38 bullet"
	reqs = list(
			/datum/reagent/gunpowder = 1,
			/obj/item/ammo_casing/c38/ = 1)
	result = /obj/item/ammo_casing/c38
	category = CAT_MISC

/datum/crafting_recipe/a762
	name = "reshell 7.62 bullet"
	reqs = list(/datum/reagent/gunpowder = 1,
				/obj/item/ammo_casing/a762 = 1)
	result = /obj/item/ammo_casing/a762
	category = CAT_MISC
/obj/item/gear
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "gear"
	desc = "gear"
	icon_state = "gear"
	custom_materials = list(/datum/material/brass=450)
	force = 2
	throwforce = 1 // why are you throwing a club do you even weapon
	throw_speed = 1
	throw_range = 7

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
/obj/effect/spawner/lootdrop/grass
	name = "grassass"
	lootdoubles = FALSE
	loot = list(
		/obj/structure/flora/ausbushes/sparsegrass = 60,
		/obj/structure/flora/ausbushes/fullgrass = 100,
		/obj/structure/flora/rock = 30,
		/obj/structure/flora/ausbushes/ywflowers = 9,
		/obj/structure/flora/ausbushes/genericbush = 9,
		/obj/structure/flora/grass/jungle/b = 13,
		/obj/structure/flora/rock/jungle = 32,
		/obj/structure/flora/junglebush = 19,
		/obj/structure/flora/bush = 10,
		/obj/effect/decal/remains/robot = 1,
		/obj/effect/decal/cleanable/plastic = 1,
		/obj/item/paper/crumpled/ = 2,
		/obj/structure/flora/ausbushes/brflowers = 6,
		/obj/item/reagent_containers/glass/bottle/ = 4,
		/obj/machinery/hydroponics/soil = 10,
		/obj/item/trash/can = 1,
		/obj/structure/barrel/shit = 4,
		/obj/item/cigbutt/roach = 1,
		/obj/structure/flora/ausbushes/reedbush = 8,
		/obj/structure/flora/tree/jungle = 30,
		/obj/structure/flora/ausbushes/fernybush = 5,
		/obj/structure/flora/ausbushes/stalkybush = 5,
		/obj/structure/flora/ausbushes/grassybush = 5,
		/obj/item/reagent_containers/glass/bottle/ = 1,
		/obj/item/reagent_containers/food/drinks/waterbottle/empty = 1,
		/obj/effect/landmark/carpspawn = 1,
		/obj/structure/flora/bush = 3,
		/mob/living/simple_animal/chicken = 1,
		/obj/effect/landmark/zombie/ = 1,
		/obj/item/storage/toolbox/mechanical/old/clean/ = 1,
		/obj/structure/closet/cardboard/ = 1,
		"" = 300
		)
/obj/effect/spawner/lootdrop/oreslmao
	name = "whores"
	lootdoubles = TRUE
	lootcount = 10
	loot = list(
		/obj/item/stack/ore/uranium = 5,
		/obj/item/stack/ore/iron = 500,
		/obj/item/stack/ore/plasma = 15,
		/obj/item/stack/ore/gold = 30,
		/obj/item/stack/ore/silver = 60,
		/obj/item/stack/ore/titanium = 9,
		/obj/item/stack/ore/diamond = 3,
		/obj/item/rock = 800,
		/obj/item/rock/cinnabar = 40,
		/obj/item/rock/lith = 50,
		/obj/item/rock/niter = 50,
		/obj/item/rock/sulf = 60,
		/obj/item/rock/baux = 300,
		/obj/item/rock/malachite = 200,
		/obj/item/rock/salt = 100,
		)
/obj/effect/spawner/lootdrop/barrel/shit
	name = "barrelspawn"
	lootdoubles = TRUE
	lootcount = 3
	loot = list(
		/obj/item/kitchen/fork/plastic = 1,
		/obj/item/kitchen/knife/plastic = 1,
		/obj/item/mop = 6,
		/obj/item/reagent_containers/glass/beaker = 5,
		/obj/item/reagent_containers/glass/bowl = 6,
		/obj/item/bedsheet = 6,
		/obj/item/kitchen/fork = 4,
		/obj/item/kitchen/knife = 4,
		/obj/item/lighter/greyscale = 2,
		/obj/item/storage/fancy/cigarettes/cigpack_uplift = 3,
		/obj/item/storage/box/syringes = 1,
		/obj/item/storage/box/lights/mixed = 1,
		/obj/item/storage/box/ = 2,
		/obj/item/storage/box/beakers = 1,
		/obj/item/healthanalyzer = 1,
		/obj/item/soap = 1,
		/obj/item/pen = 1,
		/obj/item/storage/belt/utility = 3,
		/obj/item/hatchet = 2,
		/obj/item/plant_analyzer = 4,
		/obj/item/storage/bag/plants/portaseeder = 3,
		/obj/item/reagent_containers/glass/bucket = 3,
		/obj/item/storage/box/stockparts/basic = 1,
		/obj/item/stock_parts/manipulator = 6,
		/obj/item/stock_parts/micro_laser = 6,
		/obj/item/stock_parts/matter_bin = 6,
		/obj/item/stock_parts/scanning_module = 6,
		/obj/item/stock_parts/electrolite = 2,
		/obj/item/stock_parts/capacitor = 3,
		/obj/item/clothing/gloves/color/yellow = 1,
		/obj/item/stack/cable_coil = 2,
		/obj/item/stock_parts/cell = 1,
		/obj/item/pickaxe = 3,
		/obj/item/shovel = 3,
		/obj/item/stack/sticky_tape = 2,
		/obj/item/pipe_dispenser = 1,
		/obj/item/weldingtool/ = 3,
		/obj/item/multitool = 3,
	 	/obj/item/screwdriver = 3,
		/obj/item/wirecutters = 3,
		/obj/item/wrench = 3,
		/obj/item/crowbar = 3,
		/obj/item/plant_analyzer = 4,
		/obj/item/storage/part_replacer = 1,
		/obj/item/throwing_star = 1,
		/obj/item/flashlight/flare/ = 1,
		/obj/item/flashlight/ = 1,
		/obj/item/firing_pin/ = 1,
		/obj/item/trash/waffles/ = 1,
		/obj/item/paper/crumpled/ = 1,
		/obj/item/lighter = 1,
		/obj/item/laser_pointer = 1,
		/obj/item/storage/wallet/random = 1,
		)
/obj/effect/spawner/lootdrop/minnyral
	name = "mineralz"
	lootdoubles = TRUE
	lootcount = 1
	loot = list(
	/obj/item/rock/rock = 5,
	/obj/item/rock/cinnabar = 1,
	/obj/item/rock/lith = 1,
	/obj/item/rock/niter = 2,
	/obj/item/rock/sulf = 1,
	/obj/item/rock/baux = 2,
	/obj/item/rock/malachite = 2,
	/obj/item/rock/salt = 2,
	/obj/item/stack/clay = 4,)
/obj/structure/barrel/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/barrel/ (loc, 1)
	qdel(src)
/obj/effect/spawner/lootdrop/bota
	name = "botany"
	lootdoubles = TRUE
	lootcount = 3
	loot = list(
		/obj/item/hatchet = 5,
		/obj/item/seeds/random = 40,
		/obj/item/storage/bag/plants/portaseeder = 6,
		/obj/item/reagent_containers/glass/bucket = 6,
		/obj/item/clothing/suit/apron = 6,
		/obj/item/secateurs = 3,
		/obj/item/shovel/spade = 4,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/plant_analyzer = 4,
		/obj/item/scythe = 1,
		)
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

/obj/effect/spawner/lootdrop/parts
	name = "barrelspawn"
	lootdoubles = TRUE
	lootcount = 5
	loot = list(
		/obj/item/chain= 1,
		/obj/item/brasstube = 1,
		/obj/item/gear = 1,
		/obj/item/handle = 1,
		/obj/item/revp1 = 1,
		/obj/item/revp2 = 1,
		/obj/item/stock_parts/manipulator = 6,
		/obj/item/stock_parts/micro_laser = 6,
		/obj/item/stock_parts/matter_bin = 6,
		/obj/item/stock_parts/scanning_module = 3,
		/obj/item/stock_parts/electrolite = 2,
		/obj/item/stock_parts/capacitor = 3,
		/obj/item/stack/component = 120,
		/obj/item/stack/cable_coil = 15,
		/obj/item/storage/box/stockparts/basic = 1,
		)
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

/obj/effect/spawner/lootdrop/mats
	name = "barrelspawn"
	lootdoubles = TRUE
	lootcount = 1
	loot = list(
		/obj/item/stack/sheet/metal/ = 180,
		/obj/item/stack/sheet/glass/ = 50,
		/obj/item/stack/sheet/cloth = 30,
		)
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
/obj/effect/spawner/lootdrop/circ
	name = "barrelspawn"
	lootdoubles = TRUE
	lootcount = 3
	loot = list(
		/obj/item/circuitboard/machine/generator = 15,
		/obj/item/circuitboard/machine/microwave = 5,
		/obj/item/circuitboard/machine/mining_equipment_vendor = 15,
		/obj/item/circuitboard/machine/smes = 7,
		/obj/item/circuitboard/machine/stasis = 5,
		/obj/item/circuitboard/machine/thermomachine = 15,
		/obj/item/circuitboard/machine/reagentgrinder = 3,
		/obj/item/circuitboard/machine/recharger = 5,
		/obj/item/circuitboard/machine/recycler = 15,
		/obj/item/circuitboard/machine/ore_redemption = 3,
		/obj/item/circuitboard/machine/ore_silo = 13,
		/obj/item/circuitboard/machine/rdserver = 13,
		/obj/item/circuitboard/machine/circuit_imprinter = 13,
		/obj/item/circuitboard/machine/autolathe = 15,
		/obj/item/circuitboard/machine/protolathe = 8,
		/obj/item/circuitboard/computer/solar_control = 15,
		/obj/item/circuitboard/computer/research = 15,
		/obj/item/circuitboard/computer/rdservercontrol = 15,
		/obj/item/circuitboard/machine/ltsrbt = 6,
		/obj/item/circuitboard/machine/electrolyzer = 10,
		/obj/item/circuitboard/machine/mining_equipment_vendor/golem = 15,
		/obj/item/circuitboard/computer/rdconsole = 15,
		/obj/item/circuitboard/computer/arcade/battle = 15,
		/obj/item/circuitboard/computer/arcade/orion_trail = 15,
		/obj/item/circuitboard/machine/circulator = 15,

		)
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
/obj/effect/spawner/lootdrop/treasureloot
	name = "barrelspawn"
	lootdoubles = TRUE
	lootcount = 1
	loot = list(
		/obj/item/katana = 1,
		/obj/item/clothing/suit/armor/vest = 3,
		/obj/item/stack/medical/suture = 15,
		/obj/item/stack/medical/mesh = 15,
		/obj/item/ammo_box/a357 = 5,
		/obj/item/ammo_box/magazine/m9mm = 5,
		/obj/item/ammo_box/magazine/uzim9mm = 5,
		/obj/item/claymore/weak = 1,
		/obj/item/gun/medbeam/ = 1,
		/obj/item/gun/syringe = 3,
		/obj/item/clothing/suit/jacket/miljacket = 4,
		/obj/item/clothing/head/thenam = 3,
		/obj/item/clothing/under/pants/camo = 3,
		/obj/item/switchblade = 3,
		/obj/item/clothing/glasses/meson/night = 3,
		/obj/item/shield/riot = 3,
		/obj/item/book/granter/crafting_recipe/guns = 3,
		/obj/item/circuitboard/machine/autolathe = 3,
		/obj/item/circuitboard/machine/protolathe/department/cargo = 1,
		/obj/item/circuitboard/machine/protolathe/department/engineering = 1,
		/obj/item/circuitboard/machine/protolathe/department/medical = 1,
		/obj/item/circuitboard/machine/protolathe/department/service = 1,
		/obj/item/circuitboard/machine/protolathe/department/security = 1,
		/obj/item/circuitboard/machine/protolathe/department/science = 1,
		/obj/item/gun/ballistic/revolver/ = 1,
		/obj/item/reagent_containers/hypospray = 1,
		/obj/item/reagent_containers/pill/charcoal = 15,
		/obj/item/reagent_containers/pill/probital = 10,
		/obj/item/reagent_containers/pill/patch/synthflesh = 2,
		/obj/item/grenade/frag = 5,

		)
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
/obj/effect/spawner/lootdrop/minecraft
	name = "barrelspawn"
	lootdoubles = TRUE
	lootcount = 1
	loot = list(
		/obj/machinery/atmospherics/miner/geyser/n2o = 5,
		/obj/machinery/atmospherics/miner/geyser/water = 5,
		/obj/machinery/atmospherics/miner/geyser/plasma = 5,
		/obj/machinery/atmospherics/miner/geyser/hydrogen = 5,
		/obj/structure/closet/crate/wooden/chest = 15,
		/obj/structure/flora/rock = 50,
		"" = 700
		)

