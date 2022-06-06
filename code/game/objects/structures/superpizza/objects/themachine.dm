/obj/item/circuitboard/machine/themachine
	name = "The Machine (Machine Board)"
	icon_state = "command"
	build_path = /obj/machine/themachine/ //No freebies!
	req_components = list(
		/obj/item/stock_parts/capacitor/quadratic = 5,
		/obj/item/stack/cable_coil = 2,
		/obj/item/stack/sheet/mineral/metal_hydrogen = 2,
		/obj/item/stack/sheet/hot_ice = 1)
/obj/machine/themachine/
	name = "The Machine"
	icon = 'code/game/objects/structures/superpizza/themachine.dmi'
	icon_state = "machine"

/obj/machine/themachine/attackby(obj/item/O, mob/user, params)
	. = ..()
	icon_state = "act"
	addtimer(CALLBACK(src, .proc/victory), 450)
	sound_to_playing_players('sound/machines/themachine.ogg')
/obj/machine/themachine/proc/victory()

	sleep(100)
	SSticker.news_report = VICTORY
	SSticker.force_ending = 1

