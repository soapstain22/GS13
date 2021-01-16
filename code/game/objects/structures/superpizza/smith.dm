/obj/structure/table/anvil
	name = "anvil"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	desc = "for metal i think"
	icon_state = "anvil"
	density = TRUE
	anchored = TRUE
	layer = TABLE_LAYER
	climbable = TRUE
	pass_flags = LETPASSTHROW //You can throw objects over this, despite it's density.
	custom_materials = list(/datum/material/iron = 2000)
	max_integrity = 400
	integrity_failure = 0.33
	smooth = SMOOTH_FALSE
	deconstruction_ready = 0
/obj/item/handfile
	name = "file"
	desc = "you can use it."
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "file"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	custom_materials = list(/datum/material/iron=150)
	force = 5
	throwforce = 1 // why are you throwing a club do you even weapon
	throw_speed = 1
	throw_range = 6
/obj/item/hammer
	name = "hammer"
	desc = "A fuckin hammer dude lol."
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "hammer"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	custom_materials = list(/datum/material/iron=150)
	tool_behaviour = TOOL_HAMMER
	toolspeed = 1
	force = 6
	throwforce = 5 // why are you throwing a club do you even weapon
	throw_speed = 1
	throw_range = 6
/obj/item/chain
	name = "chain"
	desc = "despite all these chains i am still just ready to chains!!!!!"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "chain"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	custom_materials = list(/datum/material/iron=450)
	force = 7
	throwforce = 1 // why are you throwing a club do you even weapon
	throw_speed = 1
	throw_range = 4
/obj/item/chisel
	name = "chisel"
	desc = "god i love my chisel"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "chisel"
	custom_materials = list(/datum/material/iron=150)
	tool_behaviour = TOOL_CHISEL
	toolspeed = 1
/obj/item/revp1
	name = "cylinder and bits"
	desc = "its got little things in it"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "cyl"
	custom_materials = list(/datum/material/iron=150)
/obj/item/revp2
	name = "revolver base"
	desc = "finish that shit yo"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "revpart"
	custom_materials = list(/datum/material/iron=150)
/obj/item/handle
	name = "handle"
	desc = "cut things if you want"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "handle"
	custom_materials = list(/datum/material/wood=150)
/datum/crafting_recipe/revolver
	name = "revolver"
	reqs = list(
			/obj/item/revp1 = 1,
			/obj/item/handle = 1,
			/obj/item/revp2 = 1)
	result = /obj/item/gun/ballistic/revolver
	category = CAT_WEAPON
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

/obj/item/clothing/suit/armor/wood
	icon = 'code/game/objects/structures/superpizza/clothicon.dmi'
	worn_icon = 'code/game/objects/structures/superpizza/clothing.dmi'
	body_parts_covered = CHEST
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 60
	equip_delay_other = 40
	max_integrity = 250
	resistance_flags = NONE
	armor = list("melee" = 30, "bullet" = 15, "laser" = 15, "energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 50, "wound" = 10)
	slowdown = 0.15
	icon_state = "wood"

/obj/item/clothing/head/thenam
	name = "thenam helmet"
	desc = "fite"
	body_parts_covered = HEAD
	icon = 'code/game/objects/structures/superpizza/clothicon.dmi'
	worn_icon = 'code/game/objects/structures/superpizza/clothing.dmi'
	icon_state = "thenam"
	armor = list("melee" = 20, "bullet" = 30, "laser" = 30, "energy" = 40, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 50, "wound" = 10)
	slowdown = 0.05