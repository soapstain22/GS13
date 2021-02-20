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
/obj/machinery/tv
	name = "tv"
	desc = "An old TV hooked into the station's camera network."
	icon_state = "television"
	pass_flags = PASSTABLE
//toaster - for now its just a microwave that works only on bread and sheets
/obj/machinery/microwave/toaster
	name = "toaster"
	desc = "All toasters toast toast!"
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	icon_state = "toaster"
	pass_flags = PASSTABLE
//hotplate - makes a tile hot
/obj/machinery/hotplate
	name = "toaster"
	desc = "An old TV hooked into the station's camera network."
	icon_state = "toaster"
	pass_flags = PASSTABLE
	var/on = FALSE
	var/hot = 100
/obj/machinery/hotplate/AltClick(mob/user)
	var/deg = input(user, "set the temperature from 30 to 500", "hotplate") as null|num
	if(deg && (deg > 30 && deg <= 500))
		hot = deg
/obj/machinery/hotplate/proc/cook()
	if(on)
		var/turf/current_location = get_turf(src)
		current_location.hotspot_expose(hot,2,1)
		use_power(hot)
/obj/machinery/hotplate/interact(obj/item/O, mob/user, params)
	if(on)
		on = FALSE
	else
		on = TRUE
//hotplate end
//frying pan - you can put shit on it, in the future, make eggs crack when placed on it and make it hold reagents
/obj/item/storage/bag/tray/pan
	name = "frying pan"
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	icon_state = "fryingpan"
	desc = "A metal tray to lay food on."
	force = 5
	throwforce = 10
	throw_speed = 3
	throw_range = 5
	flags_1 = CONDUCT_1
	custom_materials = list(/datum/material/iron=3000)
	lefthand_file = 'code/game/objects/structures/superpizza/lefthand.dmi'
	righthand_file = 'code/game/objects/structures/superpizza/righthand.dmi'
	slot_flags = null
/obj/item/cd/
	name = "cd"
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	desc = "An old cd"
	icon_state = "cd"
	var/list/tracks = null
/obj/item/cdcase/
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	name = "cd case"
	desc = "An old cd case"
	icon_state = "cdcase"
//weezer cd
/obj/item/cd/weezer
	name = "Weezer - Blue Album"
	desc = " The eponymous debut studio album by the American rock band Weezer"
	icon_state = "weezercd"
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	tracks = list(/datum/track/weezer,)
/datum/track/weezer
	song_name = "generic"
	song_path = 'sound/cd/weezer.ogg'
	song_length = 3000
	song_beat = 4
/obj/item/cdcase/weezer/Initialize()
	. = ..()
	new /obj/item/cd/weezer(src)
/obj/item/cdcase/weezer
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	name = "Weezer - Blue Album Case"
	desc = " The eponymous debut studio album by the American rock band Weezer"
	icon_state = "weezercd"
//stopsign
/obj/item/stopsign
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	name = "stop sign"
	desc = "RED MEANS STOP ASSHOLE"
	icon_state = "stopsign"
	force = 5
	throwforce = 10
/obj/structure/stopsign
	icon = 'code/game/objects/structures/superpizza/tall.dmi'
	name = "stop sign"
	desc = "RED MEANS STOP ASSHOLE"
	icon_state = "stop"
/obj/structure/stopsign/deconstruct(disassembled = FALSE)
	new /obj/item/stack/sheet/metal (loc, 1)
	new /obj/item/stopsign (loc, 1)
	qdel(src)