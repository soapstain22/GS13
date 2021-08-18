/obj/item/seeds/chickweed
	name = "pack of chickweed seeds"
	desc = "These seeds grow into chickweed."
	icon_state = "chickweedseeds"
	icon = 'code/game/objects/structures/superpizza/herblore/herb.dmi'
	species = "chickweed"
	plantname = "chickweed"
	product = /obj/item/reagent_containers/food/snacks/grown/chickweed
	lifespan = 55
	endurance = 35
	yield = 5
	growing_icon = 'code/game/objects/structures/superpizza/herblore/herb.dmi'
	icon_grow = "chickweed-grow"
	icon_dead = "chickweed-dead"
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	reagents_add = list(/datum/reagent/consumable/menthol = 0.01, /datum/reagent/consumable/nutriment = 0.01)

/obj/item/reagent_containers/food/snacks/grown/chickweed
	seed = /obj/item/seeds/chickweed
	icon = 'code/game/objects/structures/superpizza/herblore/herb.dmi'
	name = "chickweed"
	desc = "It's a little piece of shit."
	icon_state = "chickweed"
	filling_color = "#FF4500"
	bitesize = 100 // Always eat the chickweed in one bite
	foodtype = FRUIT
	tastes = list("chickweed" = 1)
	distill_reagent = /datum/reagent/consumable/ethanol/hcider