/obj/item/seeds/yam
	name = "pack of yam seeds"
	desc = "These seeds grow into yams"
	icon_state = "seed-yam"
	species = "yam"
	plantname = "yam"
	product = /obj/item/reagent_containers/food/snacks/grown/yam
	lifespan = 55
	endurance = 35
	yield = 5
	growing_icon = 'code/game/objects/structures/superpizza/herblore/herb.dmi'
	icon_grow = "yam-grow"
	icon_dead = "yam-dead"
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	reagents_add = list(/datum/reagent/consumable/nutriment/vitamin = 0.04, /datum/reagent/consumable/nutriment = 0.1)

/obj/item/reagent_containers/food/snacks/grown/yam
	seed = /obj/item/seeds/yam
	icon = 'code/game/objects/structures/superpizza/herblore/herb.dmi'
	name = "yam"
	desc = "It's a yam"
	icon_state = "yam"
	filling_color = "#FF4500"
	bitesize = 15 // Always eat the yam in one bite
	foodtype = FRUIT
	tastes = list("yam" = 1)
	distill_reagent = /datum/reagent/consumable/ethanol/hcider