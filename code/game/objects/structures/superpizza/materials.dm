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