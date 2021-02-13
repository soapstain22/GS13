/obj/item/stringstick
	name = "string stick"
	desc = "A rod with some wire wrapped around the top. It'd be easy to attach something to the top bit."
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "stringstick"
	inhand_icon_state = "rods"
	flags_1 = CONDUCT_1
	force = 2
	throwforce = 1
	w_class = WEIGHT_CLASS_NORMAL
	attack_verb = list("hit", "bludgeoned", "whacked", "bonked")

/obj/item/stickrock
	name = "rock stick"
	desc = "A rod with some wire wrapped around the top. It'd be easy to attach something to the top bit."
	icon_state = "rockstick"
	inhand_icon_state = "rods"
	flags_1 = CONDUCT_1
	force = 9
	throwforce = 10
	w_class = WEIGHT_CLASS_NORMAL
	attack_verb = list("hit", "bludgeoned", "whacked", "bonked")

/obj/item/melee/stick/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/stack/sheet/cotton/flax))
		var/obj/item/stringstick/s = new /obj/item/stringstick

		remove_item_from_storage(user)
		if (!user.transferItemToLoc(I, S))
			return
		S.CheckParts(list(I))
		qdel(src)

		user.put_in_hands(S)
		to_chat(user, "<span class='notice'>you tie the string to the stick</span>")

/obj/item/stringstick/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/rock/rock))
		var/obj/item/stickrock/s = new /obj/item/stickrock

		remove_item_from_storage(user)
		if (!user.transferItemToLoc(I, S))
			return
		S.CheckParts(list(I))
		qdel(src)

		user.put_in_hands(S)
		to_chat(user, "<span class='notice'>you tie the rock to the stick</span>")