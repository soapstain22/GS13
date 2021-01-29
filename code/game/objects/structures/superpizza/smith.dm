/obj/structure/table/anvil
	name = "anvil"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	desc = "for metal i think"
	icon_state = "anvil"
	density = TRUE
	anchored = TRUE
	layer = TABLE_LAYER
	climbable = TRUE
	pass_flags = LETPASSTHROW //You can throw objects over this, despite it's density.
	custom_materials = list(/datum/material/iron = 2000)
	max_integrity = 400
	integrity_failure = 0.33
	smooth = SMOOTH_FALSE
	deconstruction_ready = 0
/obj/item/handfile
	name = "file"
	desc = "you can use it."
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "file"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	custom_materials = list(/datum/material/iron=150)
	force = 5
	throwforce = 1 // why are you throwing a club do you even weapon
	throw_speed = 1
	throw_range = 6
/obj/item/hammer
	name = "hammer"
	desc = "A fuckin hammer dude lol."
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "hammer"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	custom_materials = list(/datum/material/iron=150)
	tool_behaviour = TOOL_HAMMER
	toolspeed = 1
	force = 6
	throwforce = 5 // why are you throwing a club do you even weapon
	throw_speed = 1
	throw_range = 6
/obj/item/chain
	name = "chain"
	desc = "despite all these chains i am still just ready to chains!!!!!"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "chain"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	custom_materials = list(/datum/material/iron=450)
	force = 7
	throwforce = 1 // why are you throwing a club do you even weapon
	throw_speed = 1
	throw_range = 4
/obj/item/chisel
	name = "chisel"
	desc = "god i love my chisel"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "chisel"
	custom_materials = list(/datum/material/iron=150)
	tool_behaviour = TOOL_CHISEL
	toolspeed = 1
/obj/item/revp1
	name = "cylinder and bits"
	desc = "its got little things in it"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "cyl"
	custom_materials = list(/datum/material/iron=150)
/obj/item/revp2
	name = "revolver base"
	desc = "finish that shit yo"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "revpart"
	custom_materials = list(/datum/material/iron=150)
/obj/item/handle
	name = "handle"
	desc = "cut things if you want"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "handle"
	custom_materials = list(/datum/material/wood=150)
/datum/crafting_recipe/revolver
	name = "revolver"
	reqs = list(
			/obj/item/revp1 = 1,
			/obj/item/handle = 1,
			/obj/item/revp2 = 1)
	result = /obj/item/gun/ballistic/revolver
	category = CAT_WEAPON
/obj/vehicle/ridden/atv/kart
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "kart"
	desc = "An all-terrain vehicle built for traversing rough terrain with ease. One of the few old-Earth technologies that are still relevant on most planet-bound outposts."
	icon_state = "kart"
	max_integrity = 150
	armor = list("melee" = 50, "bullet" = 25, "laser" = 20, "energy" = 0, "bomb" = 50, "bio" = 0, "rad" = 0, "fire" = 60, "acid" = 60)
	key_type = /obj/item/key
	integrity_failure = 0.5
	movedelay = 1
/obj/vehicle/ridden/atv/kart/Initialize()
	. = ..()
	var/datum/component/riding/D = LoadComponent(/datum/component/riding)
	D.vehicle_move_delay = 0.6
	D.set_riding_offsets(RIDING_OFFSET_ALL, list(TEXT_NORTH = list(0, 4), TEXT_SOUTH = list(0, 4), TEXT_EAST = list(0, 4), TEXT_WEST = list( 0, 4)))
	D.set_vehicle_dir_layer(SOUTH, OBJ_LAYER)
	D.set_vehicle_dir_layer(NORTH, ABOVE_MOB_LAYER)
	D.set_vehicle_dir_layer(EAST, OBJ_LAYER)
	D.set_vehicle_dir_layer(WEST, OBJ_LAYER)
/obj/item/clothing/suit/armor/cardboard
	icon = 'code/game/objects/structures/superpizza/clothicon.dmi'
	worn_icon = 'code/game/objects/structures/superpizza/clothing.dmi'
	body_parts_covered = CHEST
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 60
	equip_delay_other = 40
	max_integrity = 250
	resistance_flags = NONE
	armor = list("melee" = 5, "bullet" = 5, "laser" = 5, "energy" = 5, "bomb" = 5, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 10, "wound" = 10)
	slowdown = 0.15
	icon_state = "cardboard"
/obj/item/clothing/head/serf
	name = "serf hood"
	desc = "protects yo hed"
	icon = 'code/game/objects/structures/superpizza/clothicon.dmi'
	worn_icon = 'code/game/objects/structures/superpizza/clothing.dmi'
	clothing_flags = SNUG_FIT
	flags_inv = HIDEEARS|HIDEHAIR
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 60
	equip_delay_other = 40
	max_integrity = 250
	resistance_flags = NONE
	armor = list("melee" = 5, "bullet" = 5, "laser" = 5, "energy" = 5, "bomb" = 5, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 10, "wound" = 10)
	slowdown = 0.05
	icon_state = "serf"
/obj/item/clothing/under/serf
	name = "serf clothing"
	desc = "protects yo tits"
	icon = 'code/game/objects/structures/superpizza/clothicon.dmi'
	worn_icon = 'code/game/objects/structures/superpizza/clothing.dmi'
	body_parts_covered = CHEST|GROIN
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 60
	equip_delay_other = 40
	max_integrity = 250
	resistance_flags = NONE
	armor = list("melee" = 5, "bullet" = 5, "laser" = 5, "energy" = 5, "bomb" = 5, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 10, "wound" = 10)
	slowdown = 0.1
	icon_state = "lin"
/obj/item/clothing/shoes/serf
	name = "the little booties"
	desc = "protects yo toes"
	icon = 'code/game/objects/structures/superpizza/clothicon.dmi'
	worn_icon = 'code/game/objects/structures/superpizza/clothing.dmi'
	body_parts_covered = CHEST|GROIN
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 60
	equip_delay_other = 40
	max_integrity = 250
	resistance_flags = NONE
	armor = list("melee" = 5, "bullet" = 5, "laser" = 5, "energy" = 5, "bomb" = 5, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 10, "wound" = 10)
	slowdown = 0.05
	icon_state = "serfshoe"
/obj/item/clothing/suit/armor/wood
	icon = 'code/game/objects/structures/superpizza/clothicon.dmi'
	worn_icon = 'code/game/objects/structures/superpizza/clothing.dmi'
	body_parts_covered = CHEST
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 60
	equip_delay_other = 40
	max_integrity = 250
	resistance_flags = NONE
	armor = list("melee" = 20, "bullet" = 15, "laser" = 15, "energy" = 20, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 10, "wound" = 10)
	slowdown = 0.15
	icon_state = "wood"
/obj/item/clothing/suit/armor/metal
	icon = 'code/game/objects/structures/superpizza/clothicon.dmi'
	worn_icon = 'code/game/objects/structures/superpizza/clothing.dmi'
	body_parts_covered = CHEST
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 60
	equip_delay_other = 40
	max_integrity = 250
	resistance_flags = NONE
	armor = list("melee" = 30, "bullet" = 30, "laser" = 30, "energy" = 30, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 10, "wound" = 10)
	slowdown = 0.30
	icon_state = "steel"
/obj/item/clothing/suit/armor/tit
	icon = 'code/game/objects/structures/superpizza/clothicon.dmi'
	worn_icon = 'code/game/objects/structures/superpizza/clothing.dmi'
	body_parts_covered = CHEST
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 60
	equip_delay_other = 40
	max_integrity = 250
	resistance_flags = NONE
	armor = list("melee" = 40, "bullet" = 40, "laser" = 40, "energy" = 40, "bomb" = 40, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 10, "wound" = 10)
	slowdown = 0.4
	icon_state = "tit"
/obj/item/stack/linen
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "linen"
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/linen
/obj/item/storage/backpack/sack
	name = "sack"
	desc = "things go in it"
	icon_state = "giftbag0"
	inhand_icon_state = "giftbag"
/obj/item/stack/linen/get_main_recipes()
	. = ..()
	. += GLOB.linen_recipes

GLOBAL_LIST_INIT(linen_recipes, list ( \
	new/datum/stack_recipe("shirt", /obj/item/clothing/under/serf, 10, time = 5, one_per_turf = 0), \
	new/datum/stack_recipe("the hat", /obj/item/clothing/head/serf, 5, time = 5, one_per_turf = 0), \
	new/datum/stack_recipe("little booties", /obj/item/clothing/shoes/serf, 5, time = 5, one_per_turf = 0), \
	new/datum/stack_recipe("sack", /obj/item/storage/backpack/sack, 20), \
	null, \
	new/datum/stack_recipe("plant bag", /obj/item/storage/bag/plants, 10), \
	new/datum/stack_recipe("book bag", /obj/item/storage/bag/books, 10), \
	new/datum/stack_recipe("mining satchel", /obj/item/storage/bag/ore, 10), \
	new/datum/stack_recipe("chemistry bag", /obj/item/storage/bag/chemistry, 10), \
	new/datum/stack_recipe("bio bag", /obj/item/storage/bag/bio, 10), \
	new/datum/stack_recipe("construction bag", /obj/item/storage/bag/construction, 10), \
	new/datum/stack_recipe("rug", /obj/item/stack/tile/carpet, 1), \
	))
/obj/item/clothing/head/thenam
	name = "thenam helmet"
	desc = "fite"
	body_parts_covered = HEAD
	icon = 'code/game/objects/structures/superpizza/clothicon.dmi'
	worn_icon = 'code/game/objects/structures/superpizza/clothing.dmi'
	icon_state = "thenam"
	armor = list("melee" = 20, "bullet" = 30, "laser" = 30, "energy" = 40, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 10, "wound" = 10)
	slowdown = 0.05
/obj/item/stack/string
	name = "string"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "string"
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/string
	var/pull_effort = 30
	var/loom_result = /obj/item/stack/linen
/obj/item/seeds/flax
	name = "pack of flax seeds"
	desc = "A pack of seeds that'll grow into a flax plant. Assistants make good free labor if neccesary."
	icon_state = "seed-flax"
	species = "flax"
	plantname = "Flax"
	icon_harvest = "flax-harvest"
	product = /obj/item/grown/flax
	lifespan = 35
	endurance = 25
	maturation = 15
	production = 1
	yield = 2
	potency = 50
	instability = 15
	growthstages = 3
	growing_icon = 'icons/obj/hydroponics/growing.dmi'
	icon_dead = "flax-dead"
	mutatelist = list(/obj/item/seeds/flax)

/obj/item/grown/flax
	seed = /obj/item/seeds/flax
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "flax"
	desc = "Flax"
	icon_state = "flax"
	force = 0
	throwforce = 0
	w_class = WEIGHT_CLASS_TINY
	throw_speed = 2
	throw_range = 3
	attack_verb = list("whipped")
	var/flax_type = /obj/item/stack/string
	var/flax_name = "string"
/obj/item/grown/flax/attack_self(mob/user)
	user.show_message("<span class='notice'>You pull some [flax_name] out of the [name]!</span>", MSG_VISUAL)
	var/seed_modifier = 0
	if(seed)
		seed_modifier = round(seed.potency / 25)
	var/obj/item/stack/string = new flax_type(user.loc, 1 + seed_modifier)
	var/old_flax_amount = string.amount
	for(var/obj/item/stack/ST in user.loc)
		if(ST != string && istype(ST, flax_type) && ST.amount < ST.max_amount)
			ST.attackby(string, user)
	if(string.amount > old_flax_amount)
		to_chat(user, "<span class='notice'>You add the newly-formed [flax_name] to the stack. It now contains [string.amount] [flax_name].</span>")
	qdel(src)