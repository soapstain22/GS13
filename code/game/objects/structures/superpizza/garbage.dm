/obj/item/cdplayer
	name = "Alpine 7909 CD player."
	desc = "despite all these chains i am still just ready to chains!!!!!"
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	icon_state = "chain"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	custom_materials = list(/datum/material/iron=450)
	force = 7
	throwforce = 1 // why are you throwing a club do you even weapon
	throw_speed = 1
	throw_range = 4
/obj/item/chain
	name = "Alpine 7909 CD player."
	desc = "despite all these chains i am still just ready to chains!!!!!"
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	icon_state = "chain"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	custom_materials = list(/datum/material/iron=450)
	force = 7
	throwforce = 1 // why are you throwing a club do you even weapon
	throw_speed = 1
	throw_range = 4
/obj/item/tv
	name = "tv"
	desc = "An old TV "
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	icon_state = "tv"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	custom_materials = list(/datum/material/iron=450)
	force = 7
	throwforce = 1 // why are you throwing a club do you even weapon
	throw_speed = 1
	throw_range = 4
	var/deployable = /obj/item/tv
/obj/machinery/tv
	name = "tv"
	desc = "An old TV hooked into the station's camera network."
	icon_state = "television"
	icon_keyboard = "no_keyboard"
	icon_screen = "detective_tv"
	pass_flags = PASSTABLE

/obj/machinery/tv/MouseDrop(over_object, src_location, over_location)
	. = ..()
	if(over_object == usr && Adjacent(usr))
		if(!ishuman(usr) || !usr.canUseTopic(src, BE_CLOSE))
			return 0
		if(has_buckled_mobs())
			return 0
		usr.visible_message("<span class='notice'>[usr] picks up \the [src.name].</span>", "<span class='notice'>You pick up \the [src.name].</span>")
		var/obj/machinery/tv/B = new deployable(get_turf(src))
		usr.put_in_hands(B)
		qdel(src)
/obj/machinery/tv/attack_self(mob/user)
	deploy_tv(user, user.loc)

/obj/machinery/tv/afterattack(obj/target, mob/user , proximity)
	. = ..()
	if(!proximity)
		return
	if(isopenturf(target))
		deploy(user, target)

/obj/machinery/tv/proc/deploy(mob/user, atom/location)
	var/obj/machinery/tv/R = new /obj/machinery/tv/R(location)
	R.add_fingerprint(user)
	qdel(src)




/obj/item/toaster
	name = "unplugged toaster"
	desc = "a toaster"
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	icon_state = "tv"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	custom_materials = list(/datum/material/iron=450)
	force = 7
	throwforce = 1 // why are you throwing a club do you even weapon
	throw_speed = 1
	throw_range = 4
	var/deployable = /obj/item/tv
/obj/machinery/toaster
	name = "toaster"
	desc = "An old TV hooked into the station's camera network."
	icon_state = "toaster"
	pass_flags = PASSTABLE
	var/deployable = /obj/item/toaster
/obj/machinery/toaster/MouseDrop(over_object, src_location, over_location)
	. = ..()
	if(over_object == usr && Adjacent(usr))
		if(!ishuman(usr) || !usr.canUseTopic(src, BE_CLOSE))
			return 0
		if(has_buckled_mobs())
			return 0
		usr.visible_message("<span class='notice'>[usr] picks up \the [src.name].</span>", "<span class='notice'>You pick up \the [src.name].</span>")
		var/obj/machinery/toaster/B = new deployable(get_turf(src))
		usr.put_in_hands(B)
		qdel(src)
/obj/machinery/toaster/attack_self(mob/user)
	deploy_tv(user, user.loc)

/obj/machinery/toaster/afterattack(obj/target, mob/user , proximity)
	. = ..()
	if(!proximity)
		return
	if(isopenturf(target))
		deploy(user, target)

/obj/machinery/tv/proc/deploy(mob/user, atom/location)
	var/obj/machinery/toaster/R = new /obj/machinery/toaster/R(location)
	R.add_fingerprint(user)
	qdel(src)

/obj/machinery/hotplate
	name = "toaster"
	desc = "An old TV hooked into the station's camera network."
	icon_state = "toaster"
	pass_flags = PASSTABLE
	var/on = FALSE
	var/hot = 100
/obj/machinery/hotplate/attack_self(mob/living/carbon/user)
	var/deg = input(user, "set the temperature from 30 to 500", "hotplate") as null|num
	if(deg && (deg > 30 && deg <= 500))
		hot = deg
/obj/machinery/hotplate/process()
	if(on)
		var/turf/current_location = get_turf(src)
		current_location.hotspot_expose(hot,2,1)
		active_power_usage = hot/2