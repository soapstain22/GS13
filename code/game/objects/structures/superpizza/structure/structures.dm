/obj/structure/barricade/stonewall
	name = "stonewall"
	desc = "stonewall"
	icon = 'icons/obj/smooth_structures/stones.dmi'
	icon_state = "sandbags"
	max_integrity = 400
	proj_pass_rate = 20
	pass_flags = LETPASSTHROW
	climbable = TRUE
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/barricade/stonewall, /obj/structure/barricade/sandbags, /turf/closed/wall, /turf/closed/wall/r_wall, /obj/structure/falsewall, /obj/structure/falsewall/reinforced, /turf/closed/wall/rust, /turf/closed/wall/r_wall/rust, /obj/structure/barricade/security)
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
/obj/structure/flora/ash/flax
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "flaxplant"
	name = "flax"
	desc = "some flowers"
	harvested_name = "flax"
	harvested_desc = "A bunch of formerly-leafed mushrooms, with their sporangiums exposed. Scandalous?"
	harvest = /obj/item/grown/cotton/flax
	needs_sharp_harvest = FALSE
	harvest_amount_high = 4
	harvest_time = 20
	harvest_message_low = "You pluck a single strand"
	harvest_message_med = "You pluck a number of strands, leaving a few unsuitable ones."
	harvest_message_high = "You pluck quite a lot of strands."
	regrowth_time_low = 2400
	regrowth_time_high = 6000
	max_integrity = 35
/obj/structure/flora/ash/aloe
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "aloe"
	name = "leafy mushrooms"
	desc = "A number of mushrooms, each of which surrounds a greenish sporangium with a number of leaf-like structures."
	harvested_name = "leafless mushrooms"
	harvested_desc = "A bunch of formerly-leafed mushrooms, with their sporangiums exposed. Scandalous?"
	harvest = /obj/item/reagent_containers/food/snacks/grown/ash_flora/mushroom_leaf
	needs_sharp_harvest = FALSE
	harvest_amount_high = 4
	harvest_time = 20
	harvest_message_low = "You pluck a single, suitable leaf."
	harvest_message_med = "You pluck a number of leaves, leaving a few unsuitable ones."
	harvest_message_high = "You pluck quite a lot of suitable leaves."
	regrowth_time_low = 2400
	regrowth_time_high = 6000
	max_integrity = 35
