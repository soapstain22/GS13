/obj/item/stack/sheet/metal/fire_act(datum/source, exposed_temperature, exposed_volume)
	if(exposed_temperature > T0C + 1538)
		atmos_spawn_air("iron=[amount*7.874];TEMP=[exposed_temperature]")
		qdel(src)
	else if (exposed_temperature > T0C + 1538)
	qdel(src)
//  < IRON_MELTING_POINT
/datum/gas_reaction/iron/init_reqs()
	min_requirements = list(
		/datum/gas/iron = IRON_DENSITY,
		"TEMP" > IRON_BOILING_POINT
		)

/datum/gas_reaction/iron/react(datum/gas_mixture/air)
	var/list/cached_gases = air.gases
	var/temperature = air.temperature
	var/consumed_fuel = 0
	if(temperature < IRON_BOILING_POINT && temperature > T0C && cached_gases[/datum/gas/iron][MOLES] > IRON_DENSITY)
		consumed_fuel = (cached_gases[/datum/gas/iron][MOLES] / IRON_DENSITY)
		cached_gases[/datum/gas/iron][MOLES] -= consumed_fuel
		new /obj/item/stack/sheet/metal(src)