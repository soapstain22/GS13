/obj/machinery/computer/roms
	name = "computer"
	icon = 'icons/obj/computer.dmi'
	icon_state = "computer"
	density = TRUE
	use_power = IDLE_POWER_USE
	idle_power_usage = 300
	active_power_usage = 300
	max_integrity = 200
	integrity_failure = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 40, "acid" = 20, "stab" = 1, "slash" = 1, "crush" = 1)
	var/brightness_on = 1
	var/icon_keyboard = "generic_key"
	var/icon_screen = "generic"
	var/time_to_screwdrive = 20
	var/authenticated = 0
/obj/machinery/computer/roms/ui_interact(mob/user)
	. = ..()
	screen_setup(user)
/obj/machinery/computer/roms/proc/screen_setup(mob/user)
	var/dat = "<a href='byond://?src=[REF(src)];close=1'>Close</a>"
	dat += "<center><h4>[enemy_name]</h4></center>"

	dat += "[temp]"
	dat += "<br><center>Health: [player_hp] | Magic: [player_mp] | Enemy Health: [enemy_hp]</center>"

	if (gameover)
		dat += "<center><b><a href='byond://?src=[REF(src)];newgame=1'>New Game</a>"
	else
		dat += "<center><b><a href='byond://?src=[REF(src)];attack=1'>Light attack</a>"
		dat += "<center><b><a href='byond://?src=[REF(src)];defend=1'>Defend</a>"
		dat += "<center><b><a href='byond://?src=[REF(src)];counter_attack=1'>Counter attack</a>"
		dat += "<center><b><a href='byond://?src=[REF(src)];power_attack=1'>Power attack</a>"

	dat += "</b></center>"
	if(user.client) //mainly here to avoid a runtime when the player gets gibbed when losing the emag mode.
		var/datum/browser/popup = new(user, "arcade", "Space Villain 2000")
		popup.set_content(dat)
		popup.set_title_image(user.browse_rsc_icon(icon, icon_state))
		popup.open()
