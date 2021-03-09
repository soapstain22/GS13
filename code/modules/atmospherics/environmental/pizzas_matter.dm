/datum/gas_reaction/slag/
	priority = -3

/datum/gas_reaction/slag/init_reqs()
	name = "slag solidification"
	id = "solid"

/datum/gas_reaction/slag/react(datum/gas_mixture/air)
	var/list/cached_gases = air.gases
	var/temperature = air.temperature

	var/meltingpoint = 0
	for (var/gas_id in cached_gases)
		meltingpoint = (cached_gases[gas_id][GAS_META][META_GAS_MELT])

	var/dens = 0
	for (var/gas_id in cached_gases)
		dens = (cached_gases[gas_id][MOLES])/(cached_gases[gas_id][GAS_META][META_GAS_DENS])

	var/solidstate = ""
	for (var/gas_id in cached_gases)
		solidstate = (cached_gases[gas_id][GAS_META][META_GAS_SOLID])
	var/currentgas
	for (var/gas_id in cached_gases)
		currentgas = (cached_gases[gas_id])
	if(temperature < meltingpoint && cached_gases[currentgas][MOLES] > dens)
		if(solidstate)
			new solidstate(src)