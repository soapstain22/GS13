/datum/skill/engineering
	name = "Engineering"
	title = "Engineering"
	desc = "fuk ye"
	modifiers = list(SKILL_SPEED_MODIFIER = list(1, 0.95, 0.9, 0.85, 0.75, 0.6, 0.5),SKILL_PROBS_MODIFIER=list(10, 15, 20, 25, 30, 35, 40))
	skill_cape_path = /obj/item/clothing/neck/cloak/skill_reward/mining
	var/crafting_recipe_types = null
/datum/skill/engineering/level_gained(var/datum/mind/mind, new_level, old_level)//just for announcements (doesn't go off if the xp gain is silent)
	. = ..()
	to_chat(mind.current, levelUpMessages[new_level])

	switch(new_level) //new_level will be a value from 1 to 6, so we get appropriate message from the 6-element levelUpMessages list
		if(1)
			crafting_recipe_types = list(/datum/crafting_recipe/manip1, /datum/crafting_recipe/matbin1, /datum/crafting_recipe/capac1, /datum/crafting_recipe/laser1, /datum/crafting_recipe/battery1, /datum/crafting_recipe/scan1)
		if(2)
			crafting_recipe_types = list(/datum/crafting_recipe/manip2, /datum/crafting_recipe/matbin2, /datum/crafting_recipe/capac2, /datum/crafting_recipe/laser2, /datum/crafting_recipe/battery2, /datum/crafting_recipe/scan2)
		if(3)
			crafting_recipe_types = list(/datum/crafting_recipe/manip1, /datum/crafting_recipe/matbin1, /datum/crafting_recipe/capac1, /datum/crafting_recipe/laser1, /datum/crafting_recipe/battery1)
		if(4)
			crafting_recipe_types = list(/datum/crafting_recipe/manip1, /datum/crafting_recipe/matbin1, /datum/crafting_recipe/capac1, /datum/crafting_recipe/laser1, /datum/crafting_recipe/battery1)
		if(5)
			crafting_recipe_types = list(/datum/crafting_recipe/manip1, /datum/crafting_recipe/matbin1, /datum/crafting_recipe/capac1, /datum/crafting_recipe/laser1, /datum/crafting_recipe/battery1)
		if(6)
			crafting_recipe_types = list(/datum/crafting_recipe/manip1, /datum/crafting_recipe/matbin1, /datum/crafting_recipe/capac1, /datum/crafting_recipe/laser1, /datum/crafting_recipe/battery1)
	for(var/crafting_recipe_type in crafting_recipe_types)
		var/datum/crafting_recipe/R = crafting_recipe_type
		mind.teach_crafting_recipe(crafting_recipe_type)
		to_chat(mind.current,"<span class='notice'>You learned how to make [initial(R.name)].</span>")