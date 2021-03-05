GLOBAL_LIST_INIT(hardcoded_gases, list(/datum/gas/oxygen, /datum/gas/nitrogen, /datum/gas/carbon_dioxide, /datum/gas/plasma)) //the main four gases, which were at one time hardcoded
GLOBAL_LIST_INIT(nonreactive_gases, typecacheof(list(/datum/gas/oxygen, /datum/gas/nitrogen, /datum/gas/carbon_dioxide, /datum/gas/pluoxium, /datum/gas/stimulum, /datum/gas/nitryl))) //unable to react amongst themselves

/proc/meta_gas_list()
	. = subtypesof(/datum/gas)
	for(var/gas_path in .)
		var/list/gas_info = new(7)
		var/datum/gas/gas = gas_path

		gas_info[META_GAS_SPECIFIC_HEAT] = initial(gas.specific_heat)
		gas_info[META_GAS_NAME] = initial(gas.name)

		gas_info[META_GAS_MOLES_VISIBLE] = initial(gas.moles_visible)
		if(initial(gas.moles_visible) != null)
			gas_info[META_GAS_OVERLAY] = new /list(FACTOR_GAS_VISIBLE_MAX)
			for(var/i in 1 to FACTOR_GAS_VISIBLE_MAX)
				gas_info[META_GAS_OVERLAY][i] = new /obj/effect/overlay/gas(initial(gas.gas_overlay), i * 255 / FACTOR_GAS_VISIBLE_MAX)

		gas_info[META_GAS_FUSION_POWER] = initial(gas.fusion_power)
		gas_info[META_GAS_DANGER] = initial(gas.dangerous)
		gas_info[META_GAS_LIQUID] = initial(gas.liquidstate)
		gas_info[META_GAS_SOLID] = initial(gas.solidstate)
		gas_info[META_GAS_BOIL] = initial(gas.boiling)
		gas_info[META_GAS_MELT] = initial(gas.melting)
		gas_info[META_GAS_DENS] = initial(gas.dens)
		gas_info[META_GAS_ID] = initial(gas.id)
		.[gas_path] = gas_info

/proc/gas_id2path(id)
	var/list/meta_gas = GLOB.meta_gas_info
	if(id in meta_gas)
		return id
	for(var/path in meta_gas)
		if(meta_gas[path][META_GAS_ID] == id)
			return path
	return ""

/*||||||||||||||/----------\||||||||||||||*\
||||||||||||||||[GAS DATUMS]||||||||||||||||
||||||||||||||||\__________/||||||||||||||||
||||These should never be instantiated. ||||
||||They exist only to make it easier   ||||
||||to add a new gas. They are accessed ||||
||||only by meta_gas_list().            ||||
\*||||||||||||||||||||||||||||||||||||||||*/

/datum/gas
	var/id = ""
	var/specific_heat = 0
	var/name = ""
	var/gas_overlay = "" //icon_state in icons/effects/atmospherics.dmi
	var/moles_visible = null
	var/dangerous = FALSE //currently used by canisters
	var/fusion_power = 0 //How much the gas accelerates a fusion reaction
	var/rarity = 0 // relative rarity compared to other gases, used when setting up the reactions list.
	var/solidstate
	var/liquidstate
	var/dens //grams per mol
	var/boiling
	var/melting
/datum/gas/oxygen
	id = "o2"
	specific_heat = 20
	name = "Oxygen"
	rarity = 900
	dens = 31.998
/datum/gas/iron
	id = "fe"
	specific_heat = 2862
	name = "Iron"
	rarity = 900
	moles_visible = MOLES_GAS_VISIBLE
	gas_overlay = "fe"
	dens = 55.85
	boiling = 2861
	melting = 1538
/datum/gas/gold
	id = "au"
	specific_heat = 1064
	name = "gold"
	rarity = 900
	dens = 196.966569
	moles_visible = MOLES_GAS_VISIBLE
	boiling = 2856
	melting = 1064
/datum/gas/zinc
	id = "zn"
	specific_heat = 907
	name = "Zinc"
	rarity = 900
	dens = 65.39
	moles_visible = MOLES_GAS_VISIBLE
	boiling = 907
	melting = 419.53
/datum/gas/aluminum
	id = "al"
	specific_heat = 20
	name = "aluminum"
	rarity = 900
	dens = 26.9815385
	boiling = 2519
	melting = 660.32
/datum/gas/lead
	id = "pb"
	specific_heat = 20
	name = "lead"
	rarity = 900
	dens = 207.2
	boiling = 1749
	melting = 327.46
/datum/gas/copper
	id = "cu"
	specific_heat = 1084
	name = "Copper"
	rarity = 900
	dens = 63.546
	moles_visible = MOLES_GAS_VISIBLE
	boiling = 1084.62
	melting = 2562
/datum/gas/carbon
	id = "c"
	specific_heat = 3550
	name = "Carbon"
	rarity = 900
	dens = 12.011
	moles_visible = MOLES_GAS_VISIBLE
/datum/gas/nitrogen
	id = "n2"
	specific_heat = 20
	name = "Nitrogen"
	rarity = 1000
	dens = 28.014
/datum/gas/silicon
	id = "si"
	specific_heat = 20
	name = "Silicon"
	rarity = 1000
	moles_visible = MOLES_GAS_VISIBLE
	dens = 28.085
/datum/gas/nickel
	id = "Ni"
	specific_heat = 20
	name = "Nickel"
	rarity = 1000
	dens = 58.69
	boiling = 2913
	melting = 1455
/datum/gas/carbon_dioxide //what the fuck is this?
	id = "co2"
	specific_heat = 30
	name = "Carbon Dioxide"
	rarity = 700
	dens = 44.009
/datum/gas/chlorine
	id = "cl"
	specific_heat = 20
	name = "chlorine"
	rarity = 1000
	dens = 70.9
	boiling = -34.04
	melting = -101.5
/datum/gas/tin
	id = "sn"
	specific_heat = 20
	name = "tin"
	rarity = 1000
	dens = 118.71
	boiling = 2602
	melting = 231.9
/datum/gas/plasma
	id = "plasma"
	specific_heat = 200
	name = "Plasma"
	gas_overlay = "plasma"
	moles_visible = MOLES_GAS_VISIBLE
	dangerous = TRUE
	rarity = 800
	dens = 2.39

/datum/gas/water_vapor
	id = "water_vapor"
	specific_heat = 40
	name = "Water Vapor"
	gas_overlay = "water_vapor"
	moles_visible = MOLES_GAS_VISIBLE
	fusion_power = 8
	rarity = 500

/datum/gas/hypernoblium
	id = "nob"
	specific_heat = 2000
	name = "Hyper-noblium"
	gas_overlay = "freon"
	moles_visible = MOLES_GAS_VISIBLE
	dangerous = TRUE
	rarity = 50

/datum/gas/nitrous_oxide
	id = "n2o"
	specific_heat = 40
	name = "Nitrous Oxide"
	gas_overlay = "nitrous_oxide"
	moles_visible = MOLES_GAS_VISIBLE * 2
	fusion_power = 10
	dangerous = TRUE
	rarity = 600
	dens = 44.013
/datum/gas/nitryl
	id = "no2"
	specific_heat = 20
	name = "Nitryl"
	gas_overlay = "nitryl"
	moles_visible = MOLES_GAS_VISIBLE
	dangerous = TRUE
	fusion_power = 16
	rarity = 100

/datum/gas/tritium
	id = "tritium"
	specific_heat = 10
	name = "Tritium"
	gas_overlay = "tritium"
	moles_visible = MOLES_GAS_VISIBLE
	dangerous = TRUE
	fusion_power = 1
	rarity = 300

/datum/gas/bz
	id = "bz"
	specific_heat = 20
	name = "BZ"
	dangerous = TRUE
	fusion_power = 8
	rarity = 400

/datum/gas/stimulum
	id = "stim"
	specific_heat = 5
	name = "Stimulum"
	fusion_power = 7
	rarity = 1

/datum/gas/pluoxium
	id = "pluox"
	specific_heat = 80
	name = "Pluoxium"
	fusion_power = -10
	rarity = 200

/datum/gas/miasma
	id = "miasma"
	specific_heat = 20
	name = "Miasma"
	gas_overlay = "miasma"
	moles_visible = MOLES_GAS_VISIBLE * 60
	rarity = 250

/datum/gas/freon
	id = "freon"
	specific_heat = 600
	name = "Freon"
	gas_overlay = "freon"
	moles_visible = MOLES_GAS_VISIBLE *30
	fusion_power = -5
	rarity = 10
	dens = 137.4
/datum/gas/hydrogen
	id = "hydrogen"
	specific_heat = 15
	name = "Hydrogen"
	dangerous = TRUE
	rarity = 700
	dens = 2.016
/obj/effect/overlay/gas
	icon = 'icons/effects/atmospherics.dmi'
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT
	anchored = TRUE  // should only appear in vis_contents, but to be safe
	layer = FLY_LAYER
	appearance_flags = TILE_BOUND
	vis_flags = NONE

/obj/effect/overlay/gas/New(state, alph)
	. = ..()
	icon_state = state
	alpha = alph
