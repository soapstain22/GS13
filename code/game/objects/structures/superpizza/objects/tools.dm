/obj/item/pickaxe/shitaxe
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "shitaxe"
	name = "shitaxe"
	desc = "no way"
	inhand_icon_state = "ipickaxe"
	worn_icon_state = "pickaxe"
	force = 10
	throwforce = 7
	toolspeed = 2 //3 times slower than a normal pickaxe
	slot_flags = ITEM_SLOT_BELT
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron=12050) //metal needed for a crowbar and for a knife, why the FUCK does a knife cost 6 metal sheets while a crowbar costs 0.025 sheets? shit makes no sense fuck this
/obj/item/storage/bag/tray/pan
	name = "frying pan"
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	icon_state = "pan"
	desc = "A metal tray to lay food on."
	force = 20
	throwforce = 5
	throw_speed = 3
	throw_range = 5
	flags_1 = CONDUCT_1
	custom_materials = list(/datum/material/iron=3000)
	lefthand_file = 'code/game/objects/structures/superpizza/lefthand.dmi'
	righthand_file = 'code/game/objects/structures/superpizza/righthand.dmi'
	slot_flags = null