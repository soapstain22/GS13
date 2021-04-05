/mob/living/simple_animal/hostile/squirrel
	name = "squirrel"
	desc = "A fat fucking squirrel"
	icon = 'code/game/objects/structures/superpizza/creatures/creature.dmi'
	icon_state = "squirrel"
	icon_living = "squirrel"
	icon_dead = "squirrel"
	icon_gib = "syndicate_gib"
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	vision_range = 5
	aggro_vision_range = 14
	move_to_delay = 1
	friendly_verb_continuous = "harmlessly rolls into"
	friendly_verb_simple = "harmlessly roll into"
	maxHealth = 2
	health = 2
	harm_intent_damage = 5
	melee_damage_lower = 0
	melee_damage_upper = 0
	attack_verb_continuous = "barrels into"
	attack_verb_simple = "barrel into"
	attack_sound = 'sound/weapons/punch1.ogg'
	a_intent = INTENT_HELP
	speak_emote = list("screeches")
	deathmessage = "fucking dies!"
	status_flags = CANPUSH
	gold_core_spawnable = HOSTILE_SPAWN
	search_objects = 1
	wanted_objects = list(/obj/item/stack/ore/diamond)

	var/chase_time = 100
	var/will_burrow = TRUE
	var/datum/action/innate/goldgrub/spitore/spit
	var/is_burrowed = FALSE

/mob/living/simple_animal/hostile/squirrel/Initialize()
	. = ..()
	var/i = rand(1,3)
	while(i)
		loot += pick(/obj/item/stack/ore/silver)
		i--
	spit = new
	spit.Grant(src)

/mob/living/simple_animal/hostile/squirrel/GiveTarget(new_target)
	target = new_target
	if(target != null)
		if(istype(target, /obj/item/stack/ore))
			visible_message("<span class='notice'>The [name] looks at [target.name] with hungry eyes.</span>")
		else if(isliving(target))
			Aggro()
			visible_message("<span class='danger'>The [name] tries to flee from [target.name]!</span>")
			retreat_distance = 10
			minimum_distance = 20

/mob/living/simple_animal/hostile/squirrel/AttackingTarget()
	if(istype(target, /obj/item/stack/ore))
		EatOre(target)
		return
	return ..()

/mob/living/simple_animal/hostile/squirrel/proc/EatOre(atom/movable/targeted_ore)
	if(targeted_ore && targeted_ore.loc != src)
		targeted_ore.forceMove(src)
		return TRUE
	return FALSE

/mob/living/simple_animal/hostile/squirrel/death(gibbed)
	barf_contents()
	return ..()

/mob/living/simple_animal/hostile/squirrel/proc/barf_contents()
	playsound(src, 'sound/effects/splat.ogg', 50, TRUE)
	for(var/atom/movable/AM in src)
		AM.forceMove(loc)

/mob/living/simple_animal/hostile/squirrel/bullet_act(obj/projectile/P)
	visible_message("<span class='danger'>The [P.name] is repelled by [name]'s girth!</span>")
	return BULLET_ACT_BLOCK

/mob/living/simple_animal/hostile/squirrel/adjustHealth(amount, updating_health = TRUE, forced = FALSE)
	vision_range = 9
	. = ..()


/mob/living/simple_animal/hostile/squirrel/process()
	if(prob(33))
		var/list/nearby = oview(10, src)
		if(nearby.len)
			var/target_atom = pick(nearby)
			walk_to(src, target_atom)
