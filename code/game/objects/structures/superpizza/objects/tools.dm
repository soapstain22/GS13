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
/obj/item/pickaxe/copper
	name = "copper pickaxe"
	icon_state = "cpickaxe"
	inhand_icon_state = "cpickaxe"
	worn_icon_state = "cpickaxe"
	toolspeed = 1.5
	desc = "A pickaxe with a diamond pick head. Extremely robust at cracking rock walls and digging up dirt."
	force = 5
/obj/item/shovel/copper
	name = "copper shovel"
	icon_state = "cshovel"
	inhand_icon_state = "cshovel"
	worn_icon_state = "cshovel"
	toolspeed = 1.5
	desc = "A shitty shovel"
	force = 5
/obj/item/wirecutters/bolt
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	name = "bolt cutters"
	desc = "can circumsize you and cut rods like nobodys buisness"
	icon_state = "boltcutters"
	force = 5
	throwforce = 10
	toolspeed = 0
/obj/item/shovel/greyscale
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS//Can change color and add prefix
/obj/item/pickaxe/greyscale
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS//Can change color and add prefix
/obj/item/scalpel/greyscale
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS//Can change color and add prefix
/obj/item/hemostat/greyscale
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS//Can change color and add prefix
/obj/item/retractor/greyscale
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS//Can change color and add prefix
/obj/item/cautery/greyscale
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS//Can change color and add prefix
/obj/item/bonesetter/greyscale
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS//Can change color and add prefix