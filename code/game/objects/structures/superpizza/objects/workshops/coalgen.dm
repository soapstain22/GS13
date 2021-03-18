/obj/machinery/power/port_gen/pacman/coal
	name = "\improper coal generator"
	icon = 'code/game/objects/structures/superpizza/machine.dmi'
	base_icon = "portgen0"
	icon_state = "portgen0_0"
	circuit = /obj/item/circuitboard/machine/coalgen
	sheet_path = /obj/item/stack/sheet/mineral/coal
	power_gen = 400
	time_per_sheet = 40

/obj/machinery/power/port_gen/pacman/coal/overheat()
	explosion(src.loc, 1, 1, 1, -1)

/obj/item/circuitboard/machine/coalgen
	name = "PACMAN-type Generator (Machine Board)"
	icon_state = "engineering"
	build_path = /obj/machinery/power/port_gen/pacman/coal
	req_components = list(
		/obj/item/stock_parts/matter_bin = 1,
		/obj/item/stock_parts/micro_laser = 1,
		/obj/item/stack/cable_coil = 2,
		/obj/item/stock_parts/capacitor = 1)
	needs_anchored = FALSE