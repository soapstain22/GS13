//iron melting

/obj/item/stack/molteniron
	name = "iron ore"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	desc = "for metal i think"
	icon_state = "molteniron"
	dens = 141 //1000 cm3 iron in mol
	gaseousstate = /datum/gas/iron
	resistance_flags = FIRE_PROOF
/obj/item/stack/molteniron/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume) // molten to sheet
	..()
	if(exposed_temperature < 1538)
		new /obj/item/stack/sheet/metal (drop_location(), 1)
		use(1)

/obj/item/stack/sheet/metal/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature > 1538)
		new /obj/item/stack/molteniron(drop_location(), 1) // sheet to molten
		use(1)
	if(exposed_temperature > 2870)
		atmos_spawn_air("fe=[dens];TEMP=2871") // molten to gas
		use(1)


//iron dust

/datum/gas_reaction/iron/react(datum/gas_mixture/air)
	var/list/cached_gases = air.gases
	var/temperature = air.temperature
	if(temperature < 2870 && cached_gases[/datum/gas/iron][MOLES] > 0.141)
		cached_gases[/datum/gas/iron][MOLES] -= 0.141
		new /obj/item/stack/metaldust(src)
/obj/item/stack/metaldust //iron enters the gaseous state but doesnt have enough to form a sheet when it comes back down, this is where the dust comes in
	name = "metal dust"
	max_amount = 100000
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	desc = "for metal i think"
	icon_state = "metaldust"
	custom_materials = list(/datum/material/iron=MINERAL_MATERIAL_AMOUNT)
	resistance_flags = FIRE_PROOF
	dens = 0.141 //how many molecules it takes for a single fragment to form
	custom_materials = list(/datum/material/iron=1)
	novariants = FALSE
/obj/item/stack/metaldust/get_main_recipes()
	. = ..()
	. += GLOB.dustrecipies
GLOBAL_LIST_INIT(dustrecipies, list ( \
	new/datum/stack_recipe("make into sheet", /obj/item/stack/sheet/metal, 1000, time = 0, one_per_turf = 0), ))

//Copper melting

/obj/item/stack/ore/copper/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature > 1085)
		new /obj/item/stack/moltencopper (drop_location(), 1)
		use(1)
/obj/item/stack/moltencopper
	name = "molten copper"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	desc = "molty"
	icon_state = "moltencopper"
	resistance_flags = FIRE_PROOF
	custom_materials = list(/datum/material/copper=1000)
	dens = 141 //1000 cm3 copper in mol
/obj/item/stack/sheet/copper/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature > 1085)
		new /obj/item/stack/moltencopper(drop_location(), 1)
		use(1)
/obj/item/stack/moltencopper/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature < 1085)
		new /obj/item/stack/sheet/copper(drop_location(), 1)
		use(1)
	if(exposed_temperature > 2562)
		atmos_spawn_air("cu=[dens];TEMP=2563") // molten to gas
		use(1)


//copper dust

/obj/item/stack/copperdust //iron enters the gaseous state but doesnt have enough to form a sheet when it comes back down, this is where the dust comes in
	name = "copper dust"
	max_amount = 100000
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	desc = "for metal i think"
	icon_state = "copperdust"
	custom_materials = list(/datum/material/copper=MINERAL_MATERIAL_AMOUNT)
	resistance_flags = FIRE_PROOF
	dens = 0.141 //how many molecules it takes for a single fragment to form
	novariants = FALSE
/obj/item/stack/copperdust/get_main_recipes()
	. = ..()
	. += GLOB.copperdust
GLOBAL_LIST_INIT(copperdust, list ( \
	new/datum/stack_recipe("make into sheet", /obj/item/stack/sheet/copper, 1000, time = 0, one_per_turf = 0), ))

/obj/item/stack/copperdust/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature > 2562)
		atmos_spawn_air("cu=[dens];TEMP=2563") // molten to gas
		use(1)



//molten glass

/obj/item/stack/moltenglass
	name = "molten glass"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	desc = "haha blow glass ripass"
	icon_state = "moltenglass"
	resistance_flags = FIRE_PROOF
/obj/item/stack/ore/glass/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature < 1723)
		new /obj/item/stack/moltenglass (drop_location(), 1)
		use(1)
/obj/item/stack/moltenglass/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature > 1723)
		new /obj/item/stack/sheet/glass (drop_location(), 1)
		use(1)
