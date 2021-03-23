/obj/vehicle/ridden/atv/kart
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "kart"
	desc = "An all-terrain vehicle built for traversing rough terrain with ease. One of the few old-Earth technologies that are still relevant on most planet-bound outposts."
	icon_state = "kart"
	max_integrity = 150
	armor = list("melee" = 50, "bullet" = 25, "laser" = 20, "energy" = 0, "bomb" = 50, "bio" = 0, "rad" = 0, "fire" = 60, "acid" = 60, "stab" = 1, "slash" = 1, "crush" = 1)
	key_type = /obj/item/key
	integrity_failure = 0.5
	movedelay = 1
/obj/vehicle/ridden/atv/kart/Initialize()
	. = ..()
	var/datum/component/riding/D = LoadComponent(/datum/component/riding)
	D.vehicle_move_delay = 0.6
	D.set_riding_offsets(RIDING_OFFSET_ALL, list(TEXT_NORTH = list(0, 4), TEXT_SOUTH = list(0, 4), TEXT_EAST = list(0, 4), TEXT_WEST = list( 0, 4)))
	D.set_vehicle_dir_layer(SOUTH, OBJ_LAYER)
	D.set_vehicle_dir_layer(NORTH, ABOVE_MOB_LAYER)
	D.set_vehicle_dir_layer(EAST, OBJ_LAYER)
	D.set_vehicle_dir_layer(WEST, OBJ_LAYER)

//stopsign


	layer = ABOVE_MOB_LAYER
/obj/structure/stopsign/deconstruct(disassembled = FALSE)
	new /obj/item/stack/sheet/metal (loc, 1)
	new /obj/item/stopsign (loc, 1)
	qdel(src)
// this is everything else
/obj/item/ammo_casing/homemade
	name = "bullet"
	desc = "a generic bullet"
	caliber = "420"
	projectile_type = /obj/projectile/bullet/a357

/obj/structure/closet/crate/wooden/chest
	name = "chest"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "lootchest"

/obj/structure/closet/crate/wooden/chest/PopulateContents()
	..()
	for(var/i in 1 to 3)
		new /obj/effect/spawner/lootdrop/treasureloot(src, 1, FALSE)


/obj/item/reagent_containers/food/drinks/jug
	name = "plastic jug"
	desc = "A jug"
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	icon_state = "jug"
	inhand_icon_state = "bottle"
	custom_materials = list(/datum/material/plastic=1000)
	volume = 100
	amount_per_transfer_from_this = 10
	fill_icon_thresholds = list(0, 10, 20, 30, 40, 50, 60, 70, 80, 90)
	isGlass = FALSE
	// The 2 bottles have separate cap overlay icons because if the bottle falls over while bottle flipping the cap stays fucked on the moved overlay
	custom_price = 30
/obj/item/reagent_containers/food/drinks/trophy/greyscale
	name = "mug"
	desc = "mug"
	icon_state = "pewter_cup"
	w_class = WEIGHT_CLASS_TINY
	force = 1
	throwforce = 1
	amount_per_transfer_from_this = 5
	custom_materials = list(MAT_CATEGORY_STONE=500)
	possible_transfer_amounts = list()
	volume = 5
	spillable = TRUE
	resistance_flags = FIRE_PROOF