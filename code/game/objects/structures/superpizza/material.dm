/datum/crafting_recipe/c38
	name = "38 bullet"
	reqs = list(
			/datum/reagent/gunpowder = 1,
			/obj/item/ammo_casing/c38/ = 1)
	result = /obj/item/ammo_casing/c38
	category = CAT_MISC
/datum/crafting_recipe/a762
	name = "7.62 bullet"
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
	force = 7
	throwforce = 1 // why are you throwing a club do you even weapon
	throw_speed = 1
	throw_range = 7
/obj/effect/barrelpoint
	name = "fucking spawn thing"

/obj/effect/barrelpoint/Initialize()
	name = "fucking spawn thing"
	qdel(src)
/obj/structure/barrel
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "barrel"
	desc = "barrel"
	icon_state = "barrel"
	max_integrity = 25
	anchored = TRUE
	density = 1
/obj/structure/barrel/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/barrel (loc, 3)
	new /obj/effect/barrelpoint (loc, 1)
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
		/obj/structure/flora/ausbushes/sparsegrass = 70,
		/obj/structure/flora/ausbushes/fullgrass = 40,
		/obj/structure/flora/rock = 12,
		/obj/structure/flora/ausbushes/ywflowers = 3,
		/obj/structure/flora/ausbushes/genericbush = 3,
		/obj/structure/flora/grass/jungle/b = 3,
		/obj/structure/flora/rock/jungle = 12,
		/obj/structure/flora/junglebush = 7,
		/obj/effect/decal/remains/robot = 1,
		/obj/effect/decal/cleanable/plastic = 5,
		/obj/item/paper/crumpled/ = 3,
		/obj/structure/flora/ausbushes/brflowers = 6,
		/obj/structure/flora/ausbushes/stalkybush = 6,
		/obj/item/reagent_containers/glass/bottle/ = 4,
		/obj/machinery/hydroponics/soil = 6,
		/obj/item/trash/can = 7,
		/obj/structure/barrel = 10,
		/obj/item/cigbutt/roach = 5,
		/obj/structure/flora/ausbushes/reedbush = 8,
		/obj/structure/flora/tree/jungle = 9,
		/obj/structure/beebox/premade = 1,
		/obj/structure/flora/ausbushes/fernybush = 16,
		/obj/structure/flora/ausbushes/stalkybush = 16,
		/obj/structure/flora/ausbushes/grassybush = 16,
		)
/obj/effect/spawner/lootdrop/oreslmao
	name = "whores"
	lootdoubles = FALSE
	loot = list(
		/obj/item/stack/ore/uranium = 4,
		/obj/item/stack/ore/iron = 17,
		/obj/item/stack/ore/plasma = 5,
		/obj/item/stack/ore/gold = 3,
		/obj/item/stack/ore/silver = 7,
		/obj/item/stack/ore/titanium = 3,
		/obj/item/stack/ore/diamond = 1,
		)
/obj/effect/spawner/lootdrop/barrel
	name = "barrelspawn"
	lootdoubles = TRUE
	lootcount = 6
	loot = list(
		/obj/item/camera = 1,
		/obj/item/weldingtool/mini = 1,
		/obj/item/multitool = 1,
		/obj/item/hatchet = 1,
		/obj/item/roller = 1,
		/obj/item/chain= 5,
		/obj/item/spear = 1,
		/obj/item/shield/riot/buckler = 1,
		/obj/item/grenade/iedcasing/spawned = 1,
		/obj/item/melee/baton/cattleprod = 1,
		/obj/item/brasstube = 5,
		/obj/item/gear = 5,
	 	/obj/item/screwdriver = 5,
		/obj/item/wirecutters = 5,
		/obj/item/wrench = 5,
		/obj/item/crowbar = 5,
		/obj/item/assembly/igniter = 2,
		/obj/item/assembly/prox_sensor = 2,
		/obj/item/assembly/flash = 2,
		/obj/item/mop = 1,
		/obj/item/pushbroom = 1,
		/obj/item/toy/crayon/spraycan = 1,
		/obj/item/seeds/random = 1,
		/obj/item/clothing/mask/gas = 1,
		/obj/item/radio/headset = 1,
		/obj/item/storage/backpack = 1,
		/obj/item/clothing/shoes/sneakers/black = 1,
		/obj/item/clothing/suit/hazardvest = 1,
		/obj/item/clothing/suit/toggle/labcoat = 1,
		/obj/item/clothing/under/color/grey = 1,
		/obj/item/clothing/gloves/color/yellow = 1,
		/obj/item/storage/wallet/random = 3,
		/obj/item/clothing/glasses/science = 1,
		/obj/item/clothing/glasses/meson = 1,
		/obj/item/storage/belt/fannypack = 1,
		/obj/item/stack/cable_coil = 17,
		/obj/item/stock_parts/cell = 1,
		/obj/item/stack/rods/ = 159,
		/obj/item/stack/sheet/metal/ = 190,
		/obj/item/stack/sheet/mineral/plasma = 6,
		/obj/item/stock_parts/cell/high = 1,
		/obj/item/stack/sheet/mineral/wood/ = 1,
		/obj/item/weaponcrafting/receiver = 1,
		/obj/item/paper/fluff/stations/soap = 1,
		/obj/item/hammer = 2,
		/obj/item/handle = 1,
		/obj/item/clothing/gloves/color/yellow = 1,
		/obj/item/solar_assembly = 1,
		/obj/item/circuitboard = 1,
		/obj/item/clothing/under/color/random = 1,
		/obj/item/revp1 = 3,
		/obj/item/revp2 = 3,
		/obj/item/stack/sticky_tape = 4,
		/obj/item/circuitboard/machine/circuit_imprinter = 1,
		/obj/item/secateurs = 5,
		/obj/item/circuitboard/machine/protolathe = 1,
		/obj/item/circuitboard/machine/recycler = 1,
		/obj/item/stock_parts/manipulator = 6,
		/obj/item/stock_parts/micro_laser = 6,
		/obj/item/stock_parts/matter_bin = 6,
		/obj/item/stock_parts/scanning_module = 6,
		/obj/item/stock_parts/electrolite = 6,
		/obj/item/stock_parts/capacitor = 6,
		/obj/item/storage/bag/plants/portaseeder = 6,
		/obj/item/clothing/under/pants/jeans = 5,
		/obj/item/a_gift/anything = 1,
		/obj/item/pickaxe = 1,
		/obj/item/circuitboard/machine/ore_redemption = 1,
		/obj/item/shovel/spade = 1,
		/obj/item/reagent_containers/food/drinks/bottle = 7,
		/obj/item/reagent_containers/syringe = 7,
		/obj/item/reagent_containers/spray = 3,
		)


