/datum/gas_reaction/iron/react(datum/gas_mixture/air)
	var/list/cached_gases = air.gases
	var/temperature = air.temperature
	var/consumed_fuel = 0
	if(temperature < IRON_BOILING_POINT && cached_gases[/datum/gas/iron][MOLES] > IRON_DENSITY)
		consumed_fuel = (cached_gases[/datum/gas/iron][MOLES] / IRON_DENSITY)
		cached_gases[/datum/gas/iron][MOLES] -= consumed_fuel
		new /obj/item/stack/metaldust(src)