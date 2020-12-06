/obj/structure/table/anvil
	name = "anvil"
	desc = "A square piece of metal standing on four metal legs. It can not move."
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "anvil"
	density = TRUE
	anchored = TRUE
	layer = TABLE_LAYER
	climbable = TRUE
	pass_flags = LETPASSTHROW //You can throw objects over this, despite it's density.")
	custom_materials = list(/datum/material/iron = 2000)
	max_integrity = 400
	integrity_failure = 0.33
	smooth = SMOOTH_FALSE