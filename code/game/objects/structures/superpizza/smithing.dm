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

/obj/item/hammer
	name = "hammer"
	desc = "A fuckin hammer dude lol."
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "hammer"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	flags_1 = CONDUCT_1
	slot_flags = ITEM_SLOT_BELT
	force = 5
	throwforce = 7
	w_class = WEIGHT_CLASS_SMALL
	usesound = 'sound/items/ratchet.ogg'
	custom_materials = list(/datum/material/iron=150)
	drop_sound = 'sound/items/handling/wrench_drop.ogg'
	pickup_sound =  'sound/items/handling/wrench_pickup.ogg'

	attack_verb = list("bashed", "battered", "bludgeoned", "whacked")
	tool_behaviour = TOOL_HAMMER
	toolspeed = 1
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 30)

/obj/item/hammer/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is beating [user.p_them()]self to death with [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	playsound(loc, 'sound/weapons/genhit.ogg', 50, TRUE, -1)
	return (BRUTELOSS)

/obj/item/chisel
	name = "chisel"
	desc = "god i love my chisel"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "chisel"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	flags_1 = CONDUCT_1
	slot_flags = ITEM_SLOT_BELT
	force = 5
	throwforce = 7
	w_class = WEIGHT_CLASS_SMALL
	usesound = 'sound/items/ratchet.ogg'
	custom_materials = list(/datum/material/iron=150)
	drop_sound = 'sound/items/handling/wrench_drop.ogg'
	pickup_sound =  'sound/items/handling/wrench_pickup.ogg'

	attack_verb = list("bashed", "battered", "bludgeoned", "whacked")
	tool_behaviour = TOOL_CHISEL
	toolspeed = 1
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 30)

/obj/item/saw
	name = "saw"
	desc = "cut things if you want"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "saw"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	flags_1 = CONDUCT_1
	slot_flags = ITEM_SLOT_BELT
	force = 5
	throwforce = 7
	w_class = WEIGHT_CLASS_SMALL
	usesound = 'sound/items/ratchet.ogg'
	custom_materials = list(/datum/material/iron=150)
	drop_sound = 'sound/items/handling/wrench_drop.ogg'
	pickup_sound =  'sound/items/handling/wrench_pickup.ogg'

	attack_verb = list("sawed", "chopped", "smashed", "whacked")
	tool_behaviour = TOOL_SAW
	toolspeed = 1
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 30)
/datum/crafting_recipe/c38
	name = "38 bullet"
	reqs = list(
			/datum/reagent/gunpowder = 1,
			/obj/item/ammo_casing/c38/ = 1)
	result = /obj/item/ammo_casing/c38
	category = CAT_MISC

/datum/crafting_recipe/a762
	name = "7.62 bullet"
	reqs = list(/datum/reagent/gunpowder = 1,
				/obj/item/ammo_casing/a762 = 1)
	result = /obj/item/ammo_casing/a762
	category = CAT_MISC
/datum/crafting_recipe/revolver
	name = "38 bullet"
	reqs = list(
			/obj/item/revp1 = 1,
			/obj/item/handle = 1,
			/obj/item/revp2 = 1)
	result = /obj/item/gun/ballistic/revolver/crap
	category = CAT_WEAPON
/obj/item/revp1
	name = "cylinder and bits"
	desc = "its got little things in it"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "cyl"
/obj/item/revp2
	name = "revolver base"
	desc = "finish that shit yo"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "revpart"
/obj/item/handle
	name = "handle"
	desc = "cut things if you want"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "handle"