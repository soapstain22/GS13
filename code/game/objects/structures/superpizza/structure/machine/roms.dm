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
		dat = {"

			<html>
			<head>
			<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
			<style>
				iframe {
					display: none;
				}
			</style>
			</head>
			<body>
			<script type="text/javascript">
				function pageloaded(myframe) {
					document.getElementById("loading").style.display = "none";
					myframe.style.display = "inline";
    			}
			</script>
			<p id='loading'>You start skimming through the manual...</p>
			<iframe width='100%' height='97%' onload="pageloaded(this)" src="https://superpizzatest.neocities.org/release/stable/4.0/embedded/index.html" frameborder="0" id="main_frame"></iframe>
			</body>

			</html>

			"}