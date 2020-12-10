GLOBAL_LIST_INIT(chalk_recipes, list ( \
	new/datum/stack_recipe("chalk piece", /obj/item/toy/crayon/white, 1, 1, 20), \
))
/obj/item/stack/sheet/mineral/rawchalk
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "chalk"
	icon_state = "chalk"
	inhand_icon_state = "chalk"
	singular_name = "rawchalk"
	sheettype = "rawchalk"
	custom_materials = list(/datum/material/chalk=MINERAL_MATERIAL_AMOUNT)
	novariants = TRUE
	grind_results = list(/datum/reagent/carbon = 20)
	point_value = 10
	merge_type = /obj/item/stack/sheet/mineral/chalk
	material_type = /datum/material/chalk
	walltype = /turf/closed/wall/mineral/chalk
/obj/item/stack/sheet/mineral/rawchalk/get_main_recipes()
	. = ..()
	. += GLOB.chalk_recipes
/obj/item/stack/sheet/mineral/wood/attackby(obj/item/W, mob/user, params) // NOTE: sheet_types.dm is where the WOOD stack lives. Maybe move this over there.
	// Taken from /obj/item/stack/rods/attackby in [rods.dm]
	if (W.get_sharpness())
		user.visible_message("[user] begins cutting the [src]", \
				 "<span class='notice'>You begin cutting the [src]</span>", \
				 "<span class='italics'>You hear chipping.</span>")
		// 8 Second Timer
		if (!do_mob(user, src, 80))
			return
		// Make Stake
		var/obj/item/stack/sheet/mineral/chalk/new_item = new(usr.loc)
		user.visible_message("[user] finishes carving a stake out of [src].", \
				 "<span class='notice'>You finish carving a stake out of [src].</span>")
		// Prepare to Put in Hands (if holding wood)
		var/obj/item/stack/sheet/mineral/chalk/thisStack = src
		var/replace = (user.get_inactive_held_item()==thisStack)
		// Use Wood
		thisStack.use(1)
		// If stack depleted, put item in that hand (if it had one)
		if (!thisStack && replace)
			user.put_in_hands(new_item)
/obj/item/stack/sheet/mineral/chalk
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "chalk"
	icon_state = "chalkbrick"
	inhand_icon_state = "chalk"
	singular_name = "chak"
	sheettype = "chalk"
	custom_materials = list(/datum/material/chalk=MINERAL_MATERIAL_AMOUNT)
	novariants = TRUE
	grind_results = list(/datum/reagent/carbon = 20)
	point_value = 10
	merge_type = /obj/item/stack/sheet/mineral/chalk
	material_type = /datum/material/chalk
	walltype = /turf/closed/wall/mineral/chalk
GLOBAL_LIST_INIT(chalkbrick_recipes, list ( \
	new/datum/stack_recipe("chalk piece", /obj/item/toy/crayon/white, 1, 1, 20), \
))
/turf/closed/wall/mineral/chalk
	name = "chalk wall"
	desc = "yoooo"
	icon = 'icons/turf/walls/snow_wall.dmi'
	icon_state = "snow"
	sheet_type = /obj/item/stack/sheet/mineral/chalk
	explosion_block = 0 //gold is a soft metal you dingus.
	canSmoothWith = list(/turf/closed/wall/mineral/chalk, /obj/structure/falsewall/gold)
	girder_type = /obj/item/stack/sheet/mineral/chalk

/obj/item/stack/linen
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "linen"
	icon_state = "linen"
	inhand_icon_state = "linen"
	singular_name = "linen"
	sheettype = "linen"
	custom_materials = list(/datum/material/linen=MINERAL_MATERIAL_AMOUNT)
	novariants = TRUE
	grind_results = list(/datum/reagent/carbon = 20)
	point_value = 10
	merge_type = /obj/item/stack/linen
GLOBAL_LIST_INIT(linen_recipes, list ( \
	new/datum/stack_recipe("clothes", /obj/item/clothing/under/linen 1, 1, 20), \
/obj/item/stack/sheet/mineral/linen/get_main_recipes()
	. = ..()
	. += GLOB.linen_recipes
/obj/item/clothing/under/linen
	gender = PLURAL
	body_parts_covered = GROIN|LEGS
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE
	custom_price = 60
	icon = 'code/game/objects/structures/superpizza/clothicon.dmi'
	worn_icon = 'code/game/objects/structures/superpizza/clothing.dmi'
	icon_state = "linen"

/obj/item/brasstube
	name = "brass tube"
	desc = "wack"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "brasspipe"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	force = 5
	throwforce = 7
	w_class = WEIGHT_CLASS_SMALL
	custom_materials = list(/datum/brass/brass=150)
	drop_sound = 'sound/items/handling/wrench_drop.ogg'
	pickup_sound =  'sound/items/handling/wrench_pickup.ogg'
	attack_verb = list("bashed", "battered", "bludgeoned", "whacked")
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 30)
/obj/item/gear
	name = "gear"
	desc = "gear"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "gear"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	force = 5
	throwforce = 7
	w_class = WEIGHT_CLASS_SMALL
	custom_materials = list(/datum/brass/brass=150)
	drop_sound = 'sound/items/handling/wrench_drop.ogg'
	pickup_sound =  'sound/items/handling/wrench_pickup.ogg'
	attack_verb = list("bashed", "battered", "bludgeoned", "whacked")
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 30)
/obj/item/ammo_casing/homemade
	name = "bullet"
	desc = "a generic bullet"
	caliber = "420"
	projectile_type = /obj/projectile/bullet/a357
/mob/living/simple_animal/barrel
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "barrel"
	desc = "barrel"
	icon_state = "barrel"
	healable = 0
	del_on_death = 1
	wander = 0
	loot = list(/obj/effect/spawner/lootdrop/maintenance)= 1
/obj/structure/spawner/barrel
	mob_types = list(/mob/living/simple_animal/barrel)
	spawn_time = 12000//30 seconds default
	list/spawned_mobs = list()
	spawn_delay = 0
	max_mobs = 1
	spawn_text = ""
/obj/item/gear
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "gear"
	desc = "gear"
	icon_state = "gear"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	force = 5
	throwforce = 7
	w_class = WEIGHT_CLASS_SMALL
	custom_materials = list(/datum/brass/brass=150)
	drop_sound = 'sound/items/handling/wrench_drop.ogg'
	pickup_sound =  'sound/items/handling/wrench_pickup.ogg'
	attack_verb = list("bashed", "battered", "bludgeoned", "whacked")
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 30)