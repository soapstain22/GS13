/obj/item/stack/component/get_main_recipes()
	. = ..()
	. += GLOB.component_recipes

GLOBAL_LIST_INIT(component_recipes, list ( \
	new/datum/stack_recipe("circuit_imprinter", 		/obj/item/circuitboard/machine/circuit_imprinter, 2, time = 50),
	new/datum/stack_recipe("sewing machine board", 		/obj/item/circuitboard/machine/sewingmachine, 2, time = 50),
	new/datum/stack_recipe("masonry machine board", 	/obj/item/circuitboard/machine/masonry, 2, time = 50),
	new/datum/stack_recipe("smithing machine board", 	/obj/item/circuitboard/machine/smithy, 2, time = 50),
	new/datum/stack_recipe("power compressor", 			/obj/item/circuitboard/machine/power_compressor, 2, time = 10, on_floor = FALSE),
	new/datum/stack_recipe("power turbine", 			/obj/item/circuitboard/machine/power_turbine, 2, time = 10, on_floor = FALSE),
	new/datum/stack_recipe("apc electronics",			/obj/item/electronics/apc, 1, time = 18),
	new/datum/stack_recipe("air alarm electronics",		/obj/item/electronics/airlock, 1, time = 18),
	new/datum/stack_recipe("tracker electronics", 		/obj/item/electronics/tracker, 1, time = 18),
	new/datum/stack_recipe("selling computer", 			/obj/machinery/computer/piratepad_control/ , 20, time = 50),
	new/datum/stack_recipe("selling machine", 			/obj/machinery/piratepad, 20, time = 50),
	new/datum/stack_recipe("fan", 						/obj/structure/fans/tiny, 1, time = 20),
	new/datum/stack_recipe("stairs",					/obj/structure/stairs, 3, 1, 3, one_per_turf = TRUE, on_floor = TRUE, applies_mats = FALSE),
	new/datum/stack_recipe("THE MACHINE!!!!!!!!",		/obj/item/circuitboard/machine/themachine, 3, 1, 3, one_per_turf = TRUE, on_floor = TRUE, applies_mats = FALSE),
	))

GLOBAL_LIST_INIT(clayrec, list ( \
	new/datum/stack_recipe("clay bowl", 				/obj/item/pottery/wetbowl, 4, time = 10, on_floor = FALSE),
	new/datum/stack_recipe("brick", 					/obj/item/pottery/brick, 1, time = 10, on_floor = FALSE),
	))
GLOBAL_LIST_INIT(brick_recipe, list ( \
	new/datum/stack_recipe("brick wall", 				/turf/closed/wall/brick, 8, time = 60, one_per_turf = 1)
	))
GLOBAL_LIST_INIT(linen_recipes, list ( \
	new/datum/stack_recipe("forager sock", /obj/item/storage/bag/plants/portaseeder, 10),
	null,
	new/datum/stack_recipe("mining satchel", /obj/item/storage/bag/ore, 10),
	new/datum/stack_recipe("chemistry bag", /obj/item/storage/bag/chemistry, 10),
	new/datum/stack_recipe("bio bag", /obj/item/storage/bag/bio, 10),
	new/datum/stack_recipe("construction bag", /obj/item/storage/bag/construction, 10),
	new/datum/stack_recipe("rug", /obj/item/stack/tile/carpet, 1),
	))





GLOBAL_LIST_INIT(rigid_stack_recipes, list(
	new /datum/stack_recipe("Wall",			/turf/closed/wall/material, 4, 3, 20,  one_per_turf = TRUE, on_floor = TRUE, applies_mats = TRUE),
	new /datum/stack_recipe("Floor tile",	/obj/item/stack/tile/material, 1, 1, 20, applies_mats = TRUE),
	new /datum/stack_recipe("stairs",		/obj/structure/stairs, 3, 1, 20, one_per_turf = TRUE, on_floor = FALSE, applies_mats = FALSE),
//	new /datum/stack_recipe("Start work",	/obj/item/work, 1, 1, 20, one_per_turf = false, on_floor = FALSE, applies_mats = TRUE),
	))
GLOBAL_LIST_INIT(fabric_stack_recipes, list(
	new /datum/stack_recipe("hood", 		/obj/item/clothing/head/beanie/greyscale, 10, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
	new /datum/stack_recipe("hat",			/obj/item/clothing/head/hat/greyscale, 13, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
	new /datum/stack_recipe("smock", 		/obj/item/clothing/under/smock/greyscale, 22, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
	new /datum/stack_recipe("clothing", 	/obj/item/clothing/under/greyscale, 20, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
	new /datum/stack_recipe("jumpsuit",		/obj/item/clothing/under/color/greyscale, 20, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
	new /datum/stack_recipe("sack",			/obj/item/storage/backpack/sack/greyscale, 20, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),


	))
GLOBAL_LIST_INIT(mason_stack_recipes, list(
	new /datum/stack_recipe("carving block", 	/obj/structure/carving_block, 15, 1, 20, one_per_turf = TRUE, on_floor = FALSE, applies_mats = TRUE),
	new /datum/stack_recipe("Wall",			/obj/structure/barricade/stonewall, 4, 1, 20,  one_per_turf = TRUE, on_floor = 1, applies_mats = TRUE),
	new /datum/stack_recipe("Floor tile",	/obj/item/stack/tile/material, 1, 1, 20, applies_mats = TRUE),
	new /datum/stack_recipe("stairs",		/obj/structure/stairs, 3, 1, 3, one_per_turf = TRUE, on_floor = TRUE, applies_mats = FALSE),
	))