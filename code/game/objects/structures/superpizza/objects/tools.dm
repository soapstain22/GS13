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
	desc = "cut rods like nobodys buisness"
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
/obj/item/wrench/greyscale
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS//Can change color and add prefix
/obj/item/wirecutters/greyscale
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS//Can change color and add prefix
/obj/item/screwdriver/greyscale
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS//Can change color and add prefix
/obj/item/crowbar/greyscale
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS//Can change color and add prefix
/obj/structure/girder
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS//Can change color and add prefix
/obj/item/claymore/weak
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS//Can change color and add prefix
/obj/item/melee/waraxe
	name = "waraxe"
	desc = "KILL"
	icon = 'code/game/objects/structures/superpizza/bbguns.dmi'
	icon_state = "waraxe"
	attacktype = "slash"
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS
/obj/item/melee/longsword
	name = "longsword"
	desc = "KILL"
	icon = 'code/game/objects/structures/superpizza/bbguns.dmi'
	icon_state = "longsword"
	attacktype = "slash"
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS
/obj/item/melee/shortsword
	name = "shortsword"
	desc = "KILL"
	icon = 'code/game/objects/structures/superpizza/bbguns.dmi'
	icon_state = "shortsword"
	attacktype = "slash"
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS
/obj/item/melee/mace
	name = "mace"
	desc = "KILL"
	icon = 'code/game/objects/structures/superpizza/bbguns.dmi'
	icon_state = "mace"
	attacktype = "crush"
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS
	//fuk u