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

/obj/item/melee/stick/attackby(obj/item/W, mob/user, params)
	if(CheckAccepted(W))
		var/obj/item/reagent_containers/food/snacks/grown/leaf = W
		if(leaf.dry)
			user.show_message("<span class='notice'>You wrap \the [W] around the log, turning it into a torch!</span>")
			var/obj/item/flashlight/flare/torch/T = new /obj/item/flashlight/flare/torch(user.loc)
			usr.dropItemToGround(W)
			usr.put_in_active_hand(T)
			qdel(leaf)
			qdel(src)
			return
		else
			user.show_message("<span class='notice'>You wrap \the [W] around the log, turning it into a torch!</span>")
			var/obj/item/flashlight/flare/torch/T = new /obj/item/flashlight/flare/torch(user.loc)
			usr.dropItemToGround(W)
			usr.put_in_active_hand(T)
			qdel(leaf)
			qdel(src)
			return
	else
		return ..()

/obj/item/melee/stick/proc/CheckAccepted(obj/item/I)
	return is_type_in_typecache(I, accepted)

/obj/item/stringstick
	name = "string stick"
	desc = "A rod with some wire wrapped around the top. It'd be easy to attach something to the top bit."
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "stringstick"
	inhand_icon_state = "rods"
	flags_1 = CONDUCT_1
	force = 3
	throwforce = 1
	attackspeed = 0.8
	w_class = WEIGHT_CLASS_NORMAL
	attack_verb = list("hit", "bludgeoned", "whacked", "bonked")
	tool_behaviour = TOOL_SHOVEL
	toolspeed = 2
/obj/item/stickrock
	name = "rock stick"
	desc = "A rod with some wire wrapped around the top. It'd be easy to attach something to the top bit."
	icon_state = "rockstick"
	inhand_icon_state = "rods"
	flags_1 = CONDUCT_1
	force = 9
	throwforce = 5
	w_class = WEIGHT_CLASS_NORMAL
	attack_verb = list("hit", "bludgeoned", "whacked", "bonked")

/obj/item/melee/stick/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/stack/sheet/cotton/flax))
		var/obj/item/stack/sheet/cotton/flax/st = I
		var/obj/item/stringstick/S = new /obj/item/stringstick
		if(st.get_amount() < 5)
			to_chat(user, "<span class='warning'>You need five lengths of string</span>")
			return
		st.use(5)
		remove_item_from_storage(user)
		if (!user.transferItemToLoc(I, S))
			return
		S.CheckParts(list(I))
		qdel(src)

		user.dropItemToGround(S)
		to_chat(user, "<span class='notice'>you tie the string to the stick</span>")

/obj/item/stringstick/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/rock/rock))
		var/obj/item/stickrock/S = new /obj/item/stickrock

		remove_item_from_storage(user)
		if (!user.transferItemToLoc(I, S))
			return
		S.CheckParts(list(I))
		qdel(src)

		user.put_in_hands(S)
