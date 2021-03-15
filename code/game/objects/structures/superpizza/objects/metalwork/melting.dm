//iron melting
/obj/item/stack/ore/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature > meltingpoint)
		if(!refined_type)
			return
		if(refined_type)
			new refined_type(drop_location(), 1) // sheet to molten
			use(1)