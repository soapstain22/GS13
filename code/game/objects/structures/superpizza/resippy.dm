/datum/crafting_recipe/ivdrip
	name = "IV Drip"
	reqs = list(
           /obj/item/stack/rods = 8,
           /obj/item/reagent_containers/syringe = 1,
           /obj/item/stack/sticky_tape = 1)
	result = /obj/machinery/iv_drip
	category = CAT_MISC
	time = 120
/obj/item/pickaxe/shitaxe
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "shitaxe"
	name = "shitaxe"
	desc = "no way"
	inhand_icon_state = "ipickaxe"
	worn_icon_state = "pickaxe"
	force = 10
	throwforce = 7
	toolspeed = 2 //3 times slower than a normal pickaxe
	slot_flags = ITEM_SLOT_BELT
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron=12050) //metal needed for a crowbar and for a knife, why the FUCK does a knife cost 6 metal sheets while a crowbar costs 0.025 sheets? shit makes no sense fuck this
/datum/crafting_recipe/shitaxe
	name = "shitty pickaxe"
	reqs = list(
           /obj/item/stack/rods = 1,
           /obj/item/stack/sheet/mineral/wood = 1)
	result = /obj/item/pickaxe/shitaxe
	category = CAT_MISC
	always_availible = TRUE
	time = 60
/datum/crafting_recipe/axe
	name = "hatchet"
	reqs = list(
           /obj/item/stack/sheet/metal = 1,
           /obj/item/stack/sheet/mineral/wood = 1)
	result = /obj/item/hatchet/wooden
	time = 60
	category = CAT_MISC
	always_availible = TRUE
/obj/item/book/granter/crafting_recipe/guns
	name = "what is guns"
	desc = "thats so funny"
	crafting_recipe_types = list(/datum/crafting_recipe/revolver, /datum/crafting_recipe/ishotgun, /datum/crafting_recipe/c38,)
	icon = 'icons/obj/library.dmi'
	icon_state = "bullot"
	oneuse = FALSE
	remarks = list("woah", "fuckin hell", "bullet in gun...", "bang",)
/obj/item/book/granter/crafting_recipe/medi
	name = "meddysin"
	desc = "degree lmao"
	crafting_recipe_types = list(/datum/crafting_recipe/ivdrip,/datum/crafting_recipe/wheelchair)
	icon = 'icons/obj/library.dmi'
	icon_state = "boneworking_learing"
	oneuse = FALSE
	remarks = list("1 + 1 = 2..........", "drugs.......", "readin...", "pills here",)
//Pickaxe recipes
/datum/crafting_recipe/diamondpick
	name = "diamond pickaxe"
	reqs = list(
           /obj/item/stack/sheet/mineral/diamond = 5,
           /obj/item/stack/sheet/mineral/wood = 1)
	result = /obj/item/pickaxe/diamond
	category = CAT_MISC
	always_availible = TRUE
	time = 60
/datum/crafting_recipe/silverpick
	name = "silver pickaxe"
	reqs = list(
           /obj/item/stack/sheet/mineral/silver = 5,
           /obj/item/stack/sheet/mineral/wood = 1)
	result = /obj/item/pickaxe/silver
	category = CAT_MISC
	always_availible = TRUE
	time = 60
/datum/crafting_recipe/jackhammer
	name = "jackhammer"
	reqs = list(
           /obj/item/stack/sheet/mineral/silver = 5,
           /obj/item/stack/sheet/mineral/titanium = 5,
           /obj/item/stack/sheet/mineral/diamond = 5,
           /obj/item/stack/sheet/mineral/silver = 5,
           /obj/item/stack/sheet/metal = 20,)
	result = /obj/item/pickaxe/drill/jackhammer
	category = CAT_MISC
	always_availible = TRUE
	time = 60

/obj/item/book/granter/crafting_recipe/minecraft
	name = "minecraft players guide"
	desc = "brown bricks"
	crafting_recipe_types = list(/datum/crafting_recipe/diamondpick,/datum/crafting_recipe/silverpick, /datum/crafting_recipe/jackhammer)
	icon = 'icons/obj/library.dmi'
	icon_state = "boneworking_learing"
	oneuse = FALSE
	remarks = list("woah", "how curious", "readin...", "fuk",)
/obj/effect/spawner/lootdrop/research
	name = "resercsh"
	lootdoubles = FALSE
	loot = list(
		/obj/item/book/granter/crafting_recipe/guns = 3,
		/obj/item/book/granter/spell/summonitem = 3,
		/obj/item/book/granter/crafting_recipe/medi = 3,
		/obj/item/book/granter/crafting_recipe/minecraft = 3,
		)

/datum/crafting_recipe/research
	name = "conduct research experiment"
	reqs = list(
           /obj/item/paper/ = 5)
	tools = list(/obj/item/pen = 1)
	result = /obj/effect/spawner/lootdrop/research
	category = CAT_MISC
	always_availible = TRUE
	time = 60

