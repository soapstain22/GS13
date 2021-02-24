/obj/vehicle/ridden/atv/kart
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "kart"
	desc = "An all-terrain vehicle built for traversing rough terrain with ease. One of the few old-Earth technologies that are still relevant on most planet-bound outposts."
	icon_state = "kart"
	max_integrity = 150
	armor = list("melee" = 50, "bullet" = 25, "laser" = 20, "energy" = 0, "bomb" = 50, "bio" = 0, "rad" = 0, "fire" = 60, "acid" = 60)
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
/obj/item/stopsign
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	name = "stop sign"
	desc = "RED MEANS STOP ASSHOLE"
	icon_state = "stopsign"
	force = 5
	throwforce = 10
/obj/item/wirecutters/bolt
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	name = "bolt cutters"
	desc = "can circumsize you and cut rods like nobodys buisness"
	icon_state = "boltcutters"
	force = 5
	throwforce = 10
	toolspeed = 0


	layer = ABOVE_MOB_LAYER
/obj/structure/stopsign/deconstruct(disassembled = FALSE)
	new /obj/item/stack/sheet/metal (loc, 1)
	new /obj/item/stopsign (loc, 1)
	qdel(src)