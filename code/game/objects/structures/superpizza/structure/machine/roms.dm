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
	var/settings =null
	var/rom="https://www.dropbox.com/s/o6pow0pq7cwe5t2/Pitfall%21.bin"
	var/thecode = 1930
/obj/machinery/computer/roms/ui_interact(mob/user)
	. = ..()
	screen_setup(user)
/obj/machinery/computer/roms/proc/screen_setup(mob/user)
	var/datum/asset/spritesheet/assets = get_asset_datum(/datum/asset/simple/javatari)
	assets.send(user)
	var/dat = {"<html>

    <head lang="en">

        <meta charset="UTF-8">
        <title>Javatari</title>
        <meta name="description" content="Javatari - The online Atari 2600 emulator">

    </head>

    <body>

        <div id="javatari" style="text-align: center; margin: 20px auto 0; padding: 0 10px;">
            <div id="javatari-screen" style="box-shadow: 2px 2px 10px rgba(0, 0, 0, .7);"></div>
        </div>

        <script src="javatari.js"></script>

    </body>

</html>"}
	if(user.client) //mainly here to avoid a runtime when the player gets gibbed when losing the emag mode.
		var/datum/browser/popup = new(user, "arcade", "Space Villain 2000")
		popup.set_content(dat)
		popup.set_title_image(user.browse_rsc_icon(icon, icon_state))
		popup.open()
