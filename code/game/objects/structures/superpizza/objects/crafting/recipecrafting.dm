/datum/crafting_recipe/ivdrip
	name = "IV Drip"
	reqs = list(
           /obj/item/stack/rods = 8,
           /obj/item/reagent_containers/syringe = 1,
           /obj/item/stack/sticky_tape = 1)
	result = /obj/machinery/iv_drip
	category = CAT_MISC
	time = 120
/datum/crafting_recipe/bike
	name = "hatchet"
	reqs = list(
           /obj/item/bikewheel = 2,
           /obj/item/bike_body = 1)
	result = /obj/vehicle/ridden/bicycle
	time = 60
	category = CAT_MISC
	always_availible = FALSE
/datum/crafting_recipe/shitaxe
	name = "shitty pickaxe"
	reqs = list(
           /obj/item/stack/rods = 1,
           /obj/item/stack/sheet/mineral/wood = 1)
	result = /obj/item/pickaxe/shitaxe
	category = CAT_MISC
	always_availible = TRUE
	time = 60
/datum/crafting_recipe/axe
	name = "hatchet"
	reqs = list(
           /obj/item/stack/sheet/metal = 3,
           /obj/item/stack/sheet/mineral/wood = 5)
	result = /obj/item/hatchet/wooden
	time = 60
	category = CAT_MISC
	always_availible = TRUE

//Pickaxe recipes

//bb gun
/datum/crafting_recipe/bbgun
	name = "bb gun"
	reqs = list(
           /obj/item/pipe = 1,
           /obj/item/stack/minipart/spring = 3,
           /obj/item/stack/minipart/bolt = 2,
           /obj/item/stack/sheet/metal = 4,
           /obj/item/weaponcrafting/stock = 1,
           /obj/machinery/atmospherics/components/binary/passive_gate = 1
           )
	result = /obj/item/gun/ballistic/rifle/bb
	category = CAT_MISC
	always_availible = TRUE
	time = 60
/datum/crafting_recipe/revolver
	name = "revolver"
	reqs = list(
			/obj/item/stack/minipart/bolt = 1,
			/obj/item/stack/minipart/spring =1,
			/obj/item/stack/sheet/metal/ = 4)
	result = /obj/item/gun/ballistic/revolver
	category = CAT_WEAPON
	time = 120
/datum/crafting_recipe/hydrobin
	name = "hydroponics bin"
	always_availible = TRUE
	reqs = list(
			/obj/item/reagent_containers/glass/bucket = 2,
			/obj/item/stack/sheet/metal/ = 4,
			/obj/item/stack/minipart/bolt = 8)
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
/datum/crafting_recipe/component
	name = "make component"
	reqs = list(/obj/item/stack/sheet/copper = 1,
				/obj/item/stack/sheet/metal = 1)
	result = /obj/item/stack/component
	category = CAT_MISC
	always_availible = TRUE