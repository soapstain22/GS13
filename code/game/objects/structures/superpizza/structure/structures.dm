/obj/structure/stopsign
	icon = 'code/game/objects/structures/superpizza/tall.dmi'
	name = "stop sign"
	desc = "RED MEANS STOP ASSHOLE"
	icon_state = "stop"
/obj/machinery/chem_master/lab
	layer = BELOW_OBJ_LAYER
	icon = 'code/game/objects/structures/superpizza/lab.dmi'
	icon_state = "mixer0"
	use_power = NO_POWER_USE
	resistance_flags = FIRE_PROOF | ACID_PROOF
	circuit = null


/obj/structure/filingcabinet/chestdrawer/random
	..()
	var/spawntable  = list(
		/obj/item/paper/crumpled/ = 2,
		/obj/item/trash/can = 5,
		/obj/item/pen = 5,
		"" = 200 )
/obj/structure/filingcabinet/chestdrawer/random/Initialize(mapload)
	..()

/obj/structure/filingcabinet/chestdrawer/random/proc/SpawnShit(turf/T)
	if(prob(60))
		var/shit = pickweight(spawntable)
		if(!shit)
			return
		new shit(T)
		return TRUE