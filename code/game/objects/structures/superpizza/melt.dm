/datum/gas_reaction/iron/init_reqs()
	min_requirements = list(
		/datum/gas/iron = IRON_DENSITY,
		"TEMP" < IRON_BOILING_POINT
		)
/datum/gas_reaction/iron/react(datum/gas_mixture/air)
	var/list/cached_gases = air.gases
	var/temperature = air.temperature
	if(temperature < 2870 && cached_gases[/datum/gas/iron][MOLES] > 0.141)
		cached_gases[/datum/gas/iron][MOLES] -= 0.141
		new /obj/item/stack/metaldust(src)
