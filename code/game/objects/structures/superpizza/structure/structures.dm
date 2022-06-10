/obj/structure/stopsign
	icon = 'code/game/objects/structures/superpizza/tall.dmi'
	name = "stop sign"
	desc = "RED MEANS STOP ASSHOLE"
	icon_state = "stop"
/obj/machinery/chem_master/lab
	layer = BELOW_OBJ_LAYER
	icon = 'code/game/objects/structures/superpizza/lab.dmi'
	icon_state = "mixer0"
	use_power = NO_POWER_USE
	resistance_flags = FIRE_PROOF | ACID_PROOF
	circuit = null


/obj/structure/filingcabinet/chestdrawer/random
	..()
	var/spawnbin = list(
		/obj/item/paper/crumpled/ = 2,
		/obj/item/pen = 5,
		"" = 200 )
/obj/structure/filingcabinet/chestdrawer/random/Initialize()
	. = ..()
	contents = pick(spawnbin)










/obj/structure/bin
	name = "bin"
	desc = "A square piece of metal standing on four metal legs. It can not move."
	icon = 'code/game/objects/structures/superpizza/machine.dmi'
	icon_state = "bin"
	density = TRUE
	anchored = TRUE
	layer = BELOW_OBJ_LAYER
	climbable = TRUE
	pass_flags = LETPASSTHROW //You can throw objects over this, despite it's density.")
	var/buildstack = /obj/item/stack/sheet/metal
	var/busy = FALSE
	var/buildstackamount = 1
	var/deconstruction_ready = 1
	custom_materials = list(/datum/material/iron = 2000)
	max_integrity = 100
	integrity_failure = 0.33

/obj/structure/bin/examine(mob/user)
	. = ..()
	. += deconstruction_hints(user)

/obj/structure/bin/proc/deconstruction_hints(mob/user)
	return "<span class='notice'>It is bolted in</span>"

/obj/structure/bin/attack_tk()
	return FALSE

/obj/structure/bin/CanAllowThrough(atom/movable/mover, turf/target)
	. = ..()

	if(istype(mover) && (mover.pass_flags & PASSTABLE))
		return TRUE
	if(mover.throwing)
		return TRUE
	if(locate(/obj/structure/bin) in get_turf(mover))
		return TRUE

/obj/structure/bin/CanAStarPass(ID, dir, caller)
	. = !density
	if(ismovable(caller))
		var/atom/movable/mover = caller
		. = . || (mover.pass_flags & PASSTABLE)

/obj/structure/bin/attackby(obj/item/I, mob/user, params)
	if(!(flags_1 & NODECONSTRUCT_1) && user.a_intent != INTENT_HELP)
		if(I.tool_behaviour == TOOL_WRENCH && deconstruction_ready)
			to_chat(user, "<span class='notice'>You start deconstructing [src]...</span>")
			if(I.use_tool(src, user, 40, volume=50))
				playsound(src.loc, 'sound/items/deconstruct.ogg', 50, TRUE)
				deconstruct(TRUE, 1)
			return

	if(istype(I, /obj/item/storage/bag/tray))
		var/obj/item/storage/bag/tray/T = I
		if(T.contents.len > 0) // If the tray isn't empty
			for(var/x in T.contents)
				var/obj/item/item = x
				AfterPutItemOnbin(item, user)
			SEND_SIGNAL(I, COMSIG_TRY_STORAGE_QUICK_EMPTY, drop_location())
			user.visible_message("<span class='notice'>[user] empties [I] on [src].</span>")
			return
		// If the tray IS empty, continue on (tray will be placed on the bin like other items)
	if(user.a_intent != INTENT_HARM && !(I.item_flags & ABSTRACT))
		if(user.transferItemToLoc(I, drop_location(), silent = FALSE))
			var/list/click_params = params2list(params)
			//Center the icon where the user clicked.
			if(!click_params || !click_params["icon-x"] || !click_params["icon-y"])
				return
			//Clamp it so that the icon never moves more than 16 pixels in either direction (thus leaving the bin turf)
			I.pixel_x = clamp(text2num(click_params["icon-x"]) - 16, -(world.icon_size/2), world.icon_size/2)
			I.pixel_y = clamp(text2num(click_params["icon-y"]) - 16, -(world.icon_size/2), world.icon_size/2)
			AfterPutItemOnbin(I, user)
			return TRUE
	else
		return ..()

/obj/structure/bin/proc/AfterPutItemOnbin(obj/item/I, mob/living/user)
	return

/obj/structure/bin/deconstruct(disassembled = TRUE, wrench_disassembly = 0)
	if(!(flags_1 & NODECONSTRUCT_1))
		var/turf/T = get_turf(src)
		if(buildstack)
			new buildstack(T, buildstackamount)
		else
			for(var/i in custom_materials)
				var/datum/material/M = i
				new M.sheet_type(T, FLOOR(custom_materials[M] / MINERAL_MATERIAL_AMOUNT, 1))
		qdel(src)




/obj/structure/table/granite
	name = "granite table"
	buildstack = /obj/item/stack/ore/granite
	custom_materials = list(/datum/material/granite = 2000)
	icon = 'icons/obj/smooth_structures/marbletable.dmi'
	icon_state = "marble_table"
	canSmoothWith = /obj/structure/table/granite

/obj/machinery/power/lampo
	name = "lamp"
	desc = "A lamp"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "lamp"
	density = TRUE
	max_integrity = 100
	integrity_failure = 0.8
	idle_power_usage = 100
	active_power_usage = 1000
	anchored = FALSE
	light_power = 1
	var/list/light_setting_list = list(0, 5, 10, 15)
	var/light_power_coefficient = 200
	var/setting = 0

/obj/machinery/power/lampo/process()
	var/turf/T = get_turf(src)
	var/obj/structure/cable/C = locate() in T
	if(!C && powernet)
		disconnect_from_network()
	if(setting > 0) //If on
		if(avail(active_power_usage))
			add_load(active_power_usage)
		else
			change_setting(0)
	else if(avail(idle_power_usage))
		add_load(idle_power_usage)

/obj/machinery/power/lampo/proc/change_setting(newval, mob/user)
	if((newval < 0) || (newval > light_setting_list.len))
		return
	setting = newval
	active_power_usage = light_setting_list[setting] * light_power_coefficient
	if(!avail(active_power_usage) && setting > 0)
		return change_setting(setting - 1)
	set_light(light_setting_list[setting], light_power)
	var/setting_text = ""
	if(setting > 0)
		icon_state = "[initial(icon_state)]_on"
	else
		icon_state = initial(icon_state)
	switch(setting)
		if(1)
			setting_text = "OFF"
		if(2)
			setting_text = "ON"
	if(user)
		to_chat(user, "<span class='notice'>You set [src] to [setting_text].</span>")

/obj/machinery/power/lampo/attackby(obj/item/O, mob/user, params)
	if(O.tool_behaviour == TOOL_WRENCH)
		default_unfasten_wrench(user, O, time = 20)
		change_setting(1)
		if(anchored)
			connect_to_network()
		else
			disconnect_from_network()
	else
		. = ..()

/obj/machinery/power/floodlight/attack_hand(mob/user)
	. = ..()
	if(.)
		return
	var/current = setting
	if(current == 1)
		current = light_setting_list.len
	else
		current--
	change_setting(current, user)

/obj/machinery/power/floodlight/obj_break(damage_flag)
	. = ..()
	if(!.)
		return
	playsound(loc, 'sound/effects/glassbr3.ogg', 100, TRUE)
	new /obj/item/reagent_containers/food/drinks/bottle(loc)
	new /obj/item/light/bulb/broken(loc)
	qdel(src)

/obj/machinery/power/floodlight/play_attack_sound(damage_amount, damage_type = BRUTE, damage_flag = 0)
	playsound(src, 'sound/effects/glasshit.ogg', 75, TRUE)
