/obj/machinery/atmospherics/miner/geyser
	max_ext_kpa = 130
	spawn_mol = 9
	idle_power_usage = 0
	active_power_usage = 0
	desc = "Vents gasses from the planet's mantle"
	name = "geyser"
	icon = 'icons/obj/lavaland/terrain.dmi'
	icon_state = "geyser"
	use_power = 0
/obj/machinery/atmospherics/miner/geyser/water
	spawn_id = /datum/gas/water_vapor
/obj/machinery/atmospherics/miner/geyser/n2o
	spawn_id = /datum/gas/nitrous_oxide
/obj/machinery/atmospherics/miner/geyser/plasma
	spawn_id = /datum/gas/plasma
/obj/machinery/atmospherics/miner/geyser/hydrogen
	spawn_id = /datum/gas/hydrogen