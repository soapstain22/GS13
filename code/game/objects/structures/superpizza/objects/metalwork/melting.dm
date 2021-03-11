//iron melting
/obj/item/stack/ore/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature > meltingpoint)
		if(!refined_type)
			return
		if(refined_type)
			new refined_type(drop_location(), 1) // sheet to molten
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
	resistance_flags = FIRE_PROOF
	novariants = FALSE
	dens = 0.1 // one mol will create this much
	custom_materials = list(/datum/material/iron=1)
	var/buildstacktype = /obj/item/stack/sheet/metal
	gaseousstate = /datum/gas/iron
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS//Can change color and add prefix
	//gas doesnt know what a custom material is :)

/obj/item/stack/metaldust/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature > 2562)
		atmos_spawn_air("[gaseousstate]=[dens];TEMP=exposed_temperature") // molten to gas
		use(1)



//molten glass

/obj/item/stack/moltenglass
	name = "molten glass"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	desc = "haha blow glass ripass"
	icon_state = "molten"
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
