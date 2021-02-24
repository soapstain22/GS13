//things made of clay will be pottery
/obj/item/pottery/
	var/cooked = null
	var/amt = null
/obj/item/pottery/fire_act(exposed_temperature, exposed_volume)
	new cooked()
	qdel()
/obj/item/pottery/attack_self(mob/user)
	to_chat(user, "<span class='notice'>You smush the clay.</span>")
	new /obj/item/stack/wetclay(drop_location(), amt)
	qdel(src)

/obj/item/pottery/wetbowl
	cooked = /obj/item/reagent_containers/glass/bowl/claybowl
	amt = 4
	name = "bowl"
	desc = "a wet bowl"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "wetbowl"
/obj/item/pottery/mould
	cooked = /obj/item/stack/clay
	amt = 1
	name = "bowl"
	desc = "a wet bowl"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "mould"
/obj/item/pottery/brick
	cooked = /obj/item/stack/brick
	amt = 1
	name = "brick"
	desc = "brown bricks!"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "wetbrick"
/obj/item/pottery/amuletmould
	cooked = /obj/item/stack/clay
	amt = 1
	name = "mould"
	desc = "a mould"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "amuletmould"
/obj/item/reagent_containers/amuletmould

/obj/item/reagent_containers/glass/bowl/claybowl
	name = "bowl"
	desc = "A bowl made out of mushrooms. Not food, though it might have contained some at some point."
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "drybowl"

/obj/item/reagent_containers/glass/bowl/claybowl/update_overlays()
	. = ..()
	if(reagents && reagents.total_volume)
		var/mutable_appearance/filling = mutable_appearance('code/game/objects/structures/superpizza/smithingicon.dmi', "fullbowl")
		filling.color = mix_color_from_reagents(reagents.reagent_list)
		. += filling

/obj/item/reagent_containers/glass/bowl/claybowl/update_icon_state()
	if(!reagents || !reagents.total_volume)
		icon_state = "claybowl"

/obj/item/reagent_containers/glass/bowl/claybowl/attackby(obj/item/I,mob/user, params)
	if(istype(I, /obj/item/reagent_containers/food/snacks))
		var/obj/item/reagent_containers/food/snacks/S = I
		if(I.w_class > WEIGHT_CLASS_SMALL)
			to_chat(user, "<span class='warning'>The ingredient is too big for [src]!</span>")
		else if(contents.len >= 20)
			to_chat(user, "<span class='warning'>You can't add more ingredients to [src]!</span>")
		else
			if(reagents.has_reagent(/datum/reagent/water, 10)) //are we starting a soup or a salad?
				var/obj/item/reagent_containers/food/snacks/customizable/A = new/obj/item/reagent_containers/food/snacks/customizable/soup/(get_turf(src))
				A.initialize_custom_food(src, S, user)
			else
				var/obj/item/reagent_containers/food/snacks/customizable/A = new/obj/item/reagent_containers/food/snacks/customizable/salad/(get_turf(src))
				A.initialize_custom_food(src, S, user)
		. = ..()


/datum/reagent/water/expose_obj(obj/O, reac_volume)
	if(istype(O, /obj/item/stack/clay))
		var/obj/item/stack/clay/M = O
		reac_volume = min(reac_volume, M.amount)
		new/obj/item/stack/wetclay(get_turf(M), reac_volume)
		M.use(reac_volume)


