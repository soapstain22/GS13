/obj/item/melee/stick
	name = "stick"
	desc = "brown and sticky"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "stick"
	inhand_icon_state = "wood"
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	force = 3
	throwforce = 1
	attackspeed = 0.8
	attack_verb = list("smacked")
	w_class = WEIGHT_CLASS_SMALL
	tool_behaviour = TOOL_SHOVEL
	toolspeed = 2
	var/static/list/accepted = typecacheof(list(/obj/item/reagent_containers/food/snacks/grown/tobacco,
	/obj/item/reagent_containers/food/snacks/grown/tea,
	/obj/item/reagent_containers/food/snacks/grown/ambrosia/vulgaris,
	/obj/item/reagent_containers/food/snacks/grown/ambrosia/deus,
	/obj/item/reagent_containers/food/snacks/grown/wheat, /obj/item/reagent_containers/food/snacks/grown/grass))
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
/obj/item/pickaxehead
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "pickhead"
	name = "pickaxe head"
	desc = "minefuckis"
	inhand_icon_state = "ipickaxe"
	force = 10
	throwforce = 7
/obj/item/copperpickaxehead
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "copperpickaxehead"
	name = "copper pickaxe head"
	desc = "minefuckis"
	inhand_icon_state = "ipickaxe"
	force = 7
	throwforce = 5
/obj/item/coppershovelhead
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "coppershovelhead"
	name = "pickaxe head"
	desc = "minefuckis"
	inhand_icon_state = "ipickaxe"
	force = 7
	throwforce = 5
/obj/item/shovelhead
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "shovelhead"
	name = "pickaxe head"
	desc = "minefuckis"
	inhand_icon_state = "ipickaxe"
	force = 10
	throwforce = 7
/obj/item/axehead
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "shovelhead"
	name = "axe head"
	desc = "minefuckis"
	inhand_icon_state = "ipickaxe"
	force = 10
	throwforce = 7
/obj/item/gear
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "gear"
	desc = "gear"
	icon_state = "gear"
	custom_materials = list(/datum/material/brass=450)
	force = 2
	throwforce = 1 // why are you throwing a club do you even weapon
	throw_speed = 1
	throw_range = 7
/obj/item/spring
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	name = "spring"
	desc = "boing"
	icon_state = "spring"
	force = 1
	throwforce = 5
/obj/item/stopsign
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	name = "stop sign"
	desc = "RED MEANS STOP ASSHOLE"
	icon_state = "stopsign"
	force = 5
	throwforce = 10

