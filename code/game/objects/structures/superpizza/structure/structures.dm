/obj/structure/stopsign
	icon = 'code/game/objects/structures/superpizza/tall.dmi'
	name = "stop sign"
	desc = "RED MEANS STOP ASSHOLE"
	icon_state = "stop"
/obj/machinery/chem_master/lab
	layer = BELOW_OBJ_LAYER
	icon = 'code/game/objects/structures/superpizza/chemical.dmi'
	icon_state = "mixer0"
	use_power = NO_POWER_USE
	resistance_flags = FIRE_PROOF | ACID_PROOF
	circuit = null


/obj/structure/filingcabinet/chestdrawer/random
	..()
	var/spawntable  = list(/obj/structure/flora/ausbushes/sparsegrass = 60,
		/obj/structure/flora/ausbushes/fullgrass = 100,
		/obj/structure/flora/rock = 30,
		/obj/structure/flora/ausbushes/ywflowers = 9,
		/obj/structure/flora/ausbushes/genericbush = 9,
		/obj/structure/flora/grass/jungle/b = 13,
		/obj/structure/flora/rock/jungle = 32,
		/obj/structure/flora/junglebush = 19,
		/obj/structure/flora/bush = 10,
		/obj/effect/decal/remains/robot = 1,
		/obj/effect/decal/cleanable/plastic = 1,
		/obj/item/paper/crumpled/ = 2,
		/obj/structure/flora/ausbushes/brflowers = 6,
		/obj/item/reagent_containers/glass/bottle/ = 4,
		/obj/machinery/hydroponics/soil = 10,
		/obj/item/trash/can = 5,
		/obj/structure/barrel/shit = 4,
		/obj/item/cigbutt/roach = 2,
		/obj/structure/flora/ausbushes/reedbush = 8,
		/obj/structure/flora/tree/jungle = 90,
		/obj/structure/flora/ausbushes/fernybush = 5,
		/obj/structure/flora/ausbushes/stalkybush = 5,
		/obj/structure/flora/ausbushes/grassybush = 5,
		/obj/item/reagent_containers/glass/bottle/ = 1,
		/obj/item/reagent_containers/food/drinks/waterbottle/empty = 1,
		/obj/effect/landmark/carpspawn = 4,
		/obj/structure/flora/bush = 7,
		/mob/living/simple_animal/chicken = 1,
		/obj/effect/landmark/zombie/ = 20,
		/obj/item/storage/toolbox/mechanical/old/clean/ = 1,
		/obj/structure/closet/cardboard/ = 1,
		/obj/item/stack/component = 20,
		/obj/structure/sink/puddle = 10,
		/obj/structure/flora/ash/cacti = 20,
		/obj/item/analyzer = 1,
		/obj/item/storage/bag/trash = 2,
		/obj/item/storage/pill_bottle/ = 2,
		/obj/structure/flora/ash/flax = 20,
		/obj/effect/spawner/lootdrop/minnyral = 35,
		/obj/item/melee/stick = 100,
		/obj/item/clothing/head/trucker = 1,
		/obj/item/clothing/head/cone = 1,
		/obj/item/storage/toolbox/emergency = 1,
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