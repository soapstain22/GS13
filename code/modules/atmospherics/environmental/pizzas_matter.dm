
/datum/gas_reaction/metal
	priority = 9
	name = "Metal formation"
	id = "metal"

/datum/gas_reaction/metalhydrogen/init_reqs()
	min_requirements = list(
		/datum/gas/hydrogen = 100,
		/datum/gas/bz		= 5,
		"TEMP" = METAL_HYDROGEN_MINIMUM_HEAT
		)

/datum/gas_reaction/metalhydrogen/react(datum/gas_mixture/air, datum/holder)
	var/list/cached_gases = air.gases
	var/temperature = air.temperature
	var/old_heat_capacity = air.heat_capacity()
	///the more heat you use the higher is this factor
	var/increase_factor = min((temperature / METAL_HYDROGEN_MINIMUM_HEAT), 5)
	///the more moles you use and the higher the heat, the higher is the efficiency
	var/heat_efficency = cached_gases[/datum/gas/hydrogen][MOLES] * 0.01 * increase_factor
	var/pressure = air.return_pressure()
	var/energy_used = heat_efficency * METAL_HYDROGEN_FORMATION_ENERGY
	var/turf/open/location = isturf(holder) ? holder : null

	if(pressure >= METAL_HYDROGEN_MINIMUM_PRESSURE && temperature >= METAL_HYDROGEN_MINIMUM_HEAT)
		cached_gases[/datum/gas/bz][MOLES] -= heat_efficency * 0.01
		if (prob(20 * increase_factor))
			cached_gases[/datum/gas/hydrogen][MOLES] -= heat_efficency * 10
			if (prob(50 / increase_factor))
				new /obj/item/stack/sheet/mineral/metal_hydrogen(location)
				SSresearch.science_tech.add_point_type(TECHWEB_POINT_TYPE_DEFAULT, min((heat_efficency * increase_factor), METAL_HYDROGEN_RESEARCH_MAX_AMOUNT))

	if(energy_used > 0)
		var/new_heat_capacity = air.heat_capacity()
		if(new_heat_capacity > MINIMUM_HEAT_CAPACITY)
			air.temperature = max(((temperature * old_heat_capacity - energy_used) / new_heat_capacity),TCMB)
		return REACTING
//CRITICAL THIS MAKES A UNIVERSAL SOLIDIFICATION FACTOR
	for (var/gas_id in cached_gases)
		gas_power += (cached_gases[gas_id][GAS_META][META_GAS_FUSION_POWER]*cached_gases[gas_id][MOLES])