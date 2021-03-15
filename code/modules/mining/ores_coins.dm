
#define GIBTONITE_QUALITY_HIGH 3
#define GIBTONITE_QUALITY_MEDIUM 2
#define GIBTONITE_QUALITY_LOW 1

#define ORESTACK_OVERLAYS_MAX 10

/**********************Mineral ores**************************/

/obj/item/stack/ore
	name = "rock"
	icon = 'icons/obj/mining.dmi'
	icon_state = "ore"
	inhand_icon_state = "ore"
	full_w_class = WEIGHT_CLASS_BULKY
	singular_name = "ore chunk"
	var/points = 0 //How many points this ore gets you from the ore redemption machine
	var/refined_type = null //What this ore defaults to being refined into
	var/mine_experience = 5 //How much experience do you get for mining this ore?
	novariants = TRUE // Ore stacks handle their icon updates themselves to keep the illusion that there's more going
	var/list/stack_overlays
	var/scan_state = "" //Used by mineral turfs for their scan overlay.
	var/spreadChance = 0 //Also used by mineral turfs for spreading veins
	var/meltingpoint
/obj/item/stack/ore/update_overlays()
	. = ..()
	var/difference = min(ORESTACK_OVERLAYS_MAX, amount) - (LAZYLEN(stack_overlays)+1)
	if(difference == 0)
		return
	else if(difference < 0 && LAZYLEN(stack_overlays))			//amount < stack_overlays, remove excess.
		if (LAZYLEN(stack_overlays)-difference <= 0)
			stack_overlays = null
		else
			stack_overlays.len += difference
	else if(difference > 0)			//amount > stack_overlays, add some.
		for(var/i in 1 to difference)
			var/mutable_appearance/newore = mutable_appearance(icon, icon_state)
			newore.pixel_x = rand(-8,8)
			newore.pixel_y = rand(-8,8)
			LAZYADD(stack_overlays, newore)
	if (stack_overlays)
		. += stack_overlays

/obj/item/stack/ore/welder_act(mob/living/user, obj/item/I)
	..()
	if(!refined_type)
		return TRUE

	if(I.use_tool(src, user, 0, volume=50, amount=15))
		new refined_type(drop_location())
		use(1)

	return TRUE

/obj/item/stack/ore/uranium
	name = "uranium ore"
	icon_state = "Uranium ore"
	inhand_icon_state = "Uranium ore"
	singular_name = "uranium ore chunk"
	points = 30
	material_flags = MATERIAL_NO_EFFECTS
	custom_materials = list(/datum/material/uranium=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/mineral/uranium
	mine_experience = 6
	scan_state = "rock_Uranium"
	spreadChance = 5
	meltingpoint = 1132
/obj/item/stack/ore/iron
	name = "iron ore"
	icon_state = "Iron ore"
	inhand_icon_state = "Iron ore"
	singular_name = "iron ore chunk"
	points = 1
	custom_materials = list(/datum/material/iron=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/metal
	mine_experience = 1
	scan_state = "rock_Iron"
	spreadChance = 20
	meltingpoint = 1538
/obj/item/stack/ore/emerald
	icon = 'code/game/objects/structures/superpizza/jewels.dmi'
	name = "emerald"
	icon_state = "emerald"
	inhand_icon_state = "emerald"
	singular_name = "emerald"
	scan_state = "emerald"
	w_class = WEIGHT_CLASS_TINY
	mine_experience = 80
	custom_materials = list(/datum/material/emerald=MINERAL_MATERIAL_AMOUNT)
/obj/item/stack/ore/sapphire
	icon = 'code/game/objects/structures/superpizza/jewels.dmi'
	name = "sapphire"
	icon_state = "sapphire"
	inhand_icon_state = "sapphire"
	singular_name = "sapphire"
	w_class = WEIGHT_CLASS_TINY
	mine_experience = 40
	scan_state = "sapphire"
	custom_materials = list(/datum/material/sapphire=MINERAL_MATERIAL_AMOUNT)
/obj/item/stack/ore/amethyst
	icon = 'code/game/objects/structures/superpizza/jewels.dmi'
	name = "amethyst"
	icon_state = "amethyst"
	inhand_icon_state = "amethyst"
	singular_name = "amethyst"
	scan_state = "amethyst"
	w_class = WEIGHT_CLASS_TINY
	custom_materials = list(/datum/material/amethyst=MINERAL_MATERIAL_AMOUNT)
	mine_experience = 10
//lmao ore only moment
/obj/item/stack/ore/fake
	mine_experience = 3
	scan_state = "trash"
	var/bypass_spawn = null
/obj/item/stack/ore/fake/Initialize(mapload)
	..()
	new bypass_spawn(loc)
	qdel (src)

/obj/item/stack/ore/fake/trash
	mine_experience = 3
	scan_state = "trash"
	bypass_spawn = /obj/effect/spawner/lootdrop/barrel/shit
/obj/item/stack/ore/fake/salt
	mine_experience = 3
	scan_state = "salt"
	bypass_spawn = /obj/effect/spawner/lootdrop/salt
/obj/item/stack/ore/fake/coal
	mine_experience = 6
	scan_state = "coal"
	bypass_spawn = /obj/item/stack/sheet/mineral/coal
/obj/item/stack/ore/fake/niter
	mine_experience = 6
	scan_state = "niter"
	bypass_spawn = /obj/item/stack/niter
/obj/item/stack/ore/fake/stone
	bypass_spawn = /obj/item/stack/stone
/obj/item/stack/ore/fake/granite
	bypass_spawn = /obj/item/stack/ore/granite
/obj/item/stack/ore/fake/marble
	bypass_spawn = /obj/item/stack/ore/marble
/obj/item/stack/ore/fake/sandstone
	bypass_spawn = /obj/item/stack/sheet/mineral/sandstone
/obj/item/stack/ore/topaz
	icon = 'code/game/objects/structures/superpizza/jewels.dmi'
	name = "topaz"
	icon_state = "topaz"
	inhand_icon_state = "topaz"
	singular_name = "topaz"
	w_class = WEIGHT_CLASS_TINY
	mine_experience = 20
	scan_state = "topaz"
	custom_materials = list(/datum/material/topaz=MINERAL_MATERIAL_AMOUNT)
/obj/item/stack/ore/ruby
	icon = 'code/game/objects/structures/superpizza/jewels.dmi'
	name = "ruby"
	icon_state = "ruby"
	inhand_icon_state = "ruby"
	singular_name = "ruby"
	scan_state = "ruby"
	w_class = WEIGHT_CLASS_TINY
	mine_experience = 160
	custom_materials = list(/datum/material/ruby=MINERAL_MATERIAL_AMOUNT)
/obj/item/stack/ore/glass
	name = "sand pile"
	icon_state = "Glass ore"
	inhand_icon_state = "Glass ore"
	singular_name = "sand pile"
	points = 1
	custom_materials = list(/datum/material/glass=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/glass
	w_class = WEIGHT_CLASS_TINY
	mine_experience = 0 //its sand
	meltingpoint = 1400
GLOBAL_LIST_INIT(sand_recipes, list(\
		new /datum/stack_recipe("sandstone", /obj/item/stack/sheet/mineral/sandstone, 1, 1, 50),\
		new /datum/stack_recipe("aesthetic volcanic floor tile", /obj/item/stack/tile/basalt, 2, 1, 50)\
))

/obj/item/stack/ore/glass/get_main_recipes()
	. = ..()
	. += GLOB.sand_recipes

/obj/item/stack/ore/glass/throw_impact(atom/hit_atom, datum/thrownthing/throwingdatum)
	if(..() || !ishuman(hit_atom))
		return
	var/mob/living/carbon/human/C = hit_atom
	if(C.is_eyes_covered())
		C.visible_message("<span class='danger'>[C]'s eye protection blocks the sand!</span>", "<span class='warning'>Your eye protection blocks the sand!</span>")
		return
	C.adjust_blurriness(6)
	C.adjustStaminaLoss(15)//the pain from your eyes burning does stamina damage
	C.confused += 5
	to_chat(C, "<span class='userdanger'>\The [src] gets into your eyes! The pain, it burns!</span>")
	qdel(src)

/obj/item/stack/ore/glass/ex_act(severity, target)
	if (severity == EXPLODE_NONE)
		return
	qdel(src)

/obj/item/stack/ore/glass/basalt
	name = "volcanic ash"
	icon_state = "volcanic_sand"
	inhand_icon_state = "volcanic_sand"
	singular_name = "volcanic ash pile"
	mine_experience = 0

/obj/item/stack/ore/plasma
	name = "plasma ore"
	icon_state = "Plasma ore"
	inhand_icon_state = "Plasma ore"
	singular_name = "plasma ore chunk"
	points = 15
	custom_materials = list(/datum/material/plasma=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/mineral/plasma
	mine_experience = 5
	scan_state = "rock_Plasma"
	spreadChance = 8
	meltingpoint = 2300
/obj/item/stack/ore/plasma/welder_act(mob/living/user, obj/item/I)
	to_chat(user, "<span class='warning'>You can't hit a high enough temperature to smelt [src] properly!</span>")
	return TRUE

/obj/item/stack/ore/silver
	name = "silver ore"
	icon_state = "Silver ore"
	inhand_icon_state = "Silver ore"
	singular_name = "silver ore chunk"
	points = 16
	mine_experience = 3
	custom_materials = list(/datum/material/silver=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/mineral/silver
	scan_state = "rock_Silver"
	spreadChance = 5
	meltingpoint = 962
/obj/item/stack/ore/gold
	name = "gold ore"
	icon_state = "Gold ore"
	inhand_icon_state = "Gold ore"
	singular_name = "gold ore chunk"
	points = 18
	mine_experience = 5
	custom_materials = list(/datum/material/gold=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/mineral/gold
	scan_state = "rock_Gold"
	spreadChance = 5
	meltingpoint = 1064
/obj/item/stack/ore/diamond
	name = "diamond ore"
	icon_state = "Diamond ore"
	inhand_icon_state = "Diamond ore"
	singular_name = "diamond ore chunk"
	points = 50
	custom_materials = list(/datum/material/diamond=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/mineral/diamond
	mine_experience = 10
	scan_state = "rock_Diamond"
	meltingpoint = 4027
/obj/item/stack/ore/bananium
	name = "bananium ore"
	icon_state = "Bananium ore"
	inhand_icon_state = "Bananium ore"
	singular_name = "bananium ore chunk"
	points = 60
	custom_materials = list(/datum/material/bananium=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/mineral/bananium
	mine_experience = 15
	scan_state = "rock_Bananium"

/obj/item/stack/ore/titanium
	name = "titanium ore"
	icon_state = "Titanium ore"
	inhand_icon_state = "Titanium ore"
	singular_name = "titanium ore chunk"
	points = 50
	custom_materials = list(/datum/material/titanium=MINERAL_MATERIAL_AMOUNT)
	refined_type = /obj/item/stack/sheet/mineral/titanium
	mine_experience = 3
	scan_state = "rock_Titanium"
	spreadChance = 5
	meltingpoint = 1668
/obj/item/stack/ore/slag
	name = "slag"
	desc = "Completely useless."
	icon_state = "slag"
	inhand_icon_state = "slag"
	singular_name = "slag chunk"

/obj/item/gibtonite
	name = "gibtonite ore"
	desc = "Extremely explosive if struck with mining equipment, Gibtonite is often used by miners to speed up their work by using it as a mining charge. This material is illegal to possess by unauthorized personnel under space law."
	icon = 'icons/obj/mining.dmi'
	icon_state = "Gibtonite ore"
	inhand_icon_state = "Gibtonite ore"
	w_class = WEIGHT_CLASS_BULKY
	throw_range = 0
	var/primed = FALSE
	var/det_time = 100
	var/quality = GIBTONITE_QUALITY_LOW //How pure this gibtonite is, determines the explosion produced by it and is derived from the det_time of the rock wall it was taken from, higher value = better
	var/attacher = "UNKNOWN"
	var/det_timer

/obj/item/gibtonite/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/two_handed, require_twohands=TRUE)

/obj/item/gibtonite/Destroy()
	qdel(wires)
	wires = null
	return ..()

/obj/item/gibtonite/attackby(obj/item/I, mob/user, params)
	if(!wires && istype(I, /obj/item/assembly/igniter))
		user.visible_message("<span class='notice'>[user] attaches [I] to [src].</span>", "<span class='notice'>You attach [I] to [src].</span>")
		wires = new /datum/wires/explosive/gibtonite(src)
		attacher = key_name(user)
		qdel(I)
		add_overlay("Gibtonite_igniter")
		return

	if(wires && !primed)
		if(is_wire_tool(I))
			wires.interact(user)
			return

	if(I.tool_behaviour == TOOL_MINING || istype(I, /obj/item/resonator) || I.force >= 10)
		GibtoniteReaction(user)
		return
	if(primed)
		if(istype(I, /obj/item/mining_scanner) || istype(I, /obj/item/t_scanner/adv_mining_scanner) || I.tool_behaviour == TOOL_MULTITOOL)
			primed = FALSE
			if(det_timer)
				deltimer(det_timer)
			user.visible_message("<span class='notice'>The chain reaction stopped! ...The ore's quality looks diminished.</span>", "<span class='notice'>You stopped the chain reaction. ...The ore's quality looks diminished.</span>")
			icon_state = "Gibtonite ore"
			quality = GIBTONITE_QUALITY_LOW
			return
	..()

/obj/item/gibtonite/attack_self(user)
	if(wires)
		wires.interact(user)
	else
		..()

/obj/item/gibtonite/bullet_act(obj/projectile/P)
	GibtoniteReaction(P.firer)
	. = ..()

/obj/item/gibtonite/ex_act()
	GibtoniteReaction(null, 1)

/obj/item/gibtonite/proc/GibtoniteReaction(mob/user, triggered_by = 0)
	if(!primed)
		primed = TRUE
		playsound(src,'sound/effects/hit_on_shattered_glass.ogg',50,TRUE)
		icon_state = "Gibtonite active"
		var/notify_admins = FALSE
		if(z != 5)//Only annoy the admins ingame if we're triggered off the mining zlevel
			notify_admins = TRUE

		if(triggered_by == 1)
			log_bomber(null, "An explosion has primed a", src, "for detonation", notify_admins)
		else if(triggered_by == 2)
			var/turf/bombturf = get_turf(src)
			if(notify_admins)
				message_admins("A signal has triggered a [name] to detonate at [ADMIN_VERBOSEJMP(bombturf)]. Igniter attacher: [ADMIN_LOOKUPFLW(attacher)]")
			var/bomb_message = "A signal has primed a [name] for detonation at [AREACOORD(bombturf)]. Igniter attacher: [key_name(attacher)]."
			log_game(bomb_message)
			GLOB.bombers += bomb_message
		else
			user.visible_message("<span class='warning'>[user] strikes \the [src], causing a chain reaction!</span>", "<span class='danger'>You strike \the [src], causing a chain reaction.</span>")
			log_bomber(user, "has primed a", src, "for detonation", notify_admins)
		det_timer = addtimer(CALLBACK(src, .proc/detonate, notify_admins), det_time, TIMER_STOPPABLE)

/obj/item/gibtonite/proc/detonate(notify_admins)
	if(primed)
		switch(quality)
			if(GIBTONITE_QUALITY_HIGH)
				explosion(src,2,4,9,adminlog = notify_admins)
			if(GIBTONITE_QUALITY_MEDIUM)
				explosion(src,1,2,5,adminlog = notify_admins)
			if(GIBTONITE_QUALITY_LOW)
				explosion(src,0,1,3,adminlog = notify_admins)
		qdel(src)

/obj/item/stack/ore/Initialize()
	. = ..()
	pixel_x = rand(0,16)-8
	pixel_y = rand(0,8)-8

/obj/item/stack/ore/ex_act(severity, target)
	if (!severity || severity >= 2)
		return
	qdel(src)


/*****************************Coin********************************/

// The coin's value is a value of it's materials.
// Yes, the gold standard makes a come-back!
// This is the only way to make coins that are possible to produce on station actually worth anything.
/obj/item/coin
	icon = 'icons/obj/economy.dmi'
	name = "coin"
	icon_state = "coin"
	flags_1 = CONDUCT_1
	force = 1
	throwforce = 2
	w_class = WEIGHT_CLASS_TINY
	custom_materials = list(/datum/material/iron = 400)
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS
	var/string_attached
	var/list/sideslist = list("heads","tails")
	var/cooldown = 0
	var/value
	var/coinflip
	item_flags = NO_MAT_REDEMPTION //You know, it's kind of a problem that money is worth more extrinsicly than intrinsically in this universe.

/obj/item/coin/Initialize()
	. = ..()
	coinflip = pick(sideslist)
	icon_state = "coin_[coinflip]"
	pixel_x = rand(0,16)-8
	pixel_y = rand(0,8)-8

/obj/item/coin/set_custom_materials(var/list/materials, multiplier = 1)
	. = ..()
	value = 0
	for(var/i in custom_materials)
		var/datum/material/M = i
		value += M.value_per_unit * custom_materials[M]

/obj/item/coin/get_item_credit_value()
	return value

/obj/item/coin/suicide_act(mob/living/user)
	user.visible_message("<span class='suicide'>[user] contemplates suicide with \the [src]!</span>")
	if (!attack_self(user))
		user.visible_message("<span class='suicide'>[user] couldn't flip \the [src]!</span>")
		return SHAME
	addtimer(CALLBACK(src, .proc/manual_suicide, user), 10)//10 = time takes for flip animation
	return MANUAL_SUICIDE_NONLETHAL

/obj/item/coin/proc/manual_suicide(mob/living/user)
	var/index = sideslist.Find(coinflip)
	if (index==2)//tails
		user.visible_message("<span class='suicide'>\the [src] lands on [coinflip]! [user] promptly falls over, dead!</span>")
		user.adjustOxyLoss(200)
		user.death(0)
		user.set_suicide(TRUE)
		user.suicide_log()
	else
		user.visible_message("<span class='suicide'>\the [src] lands on [coinflip]! [user] keeps on living!</span>")

/obj/item/coin/examine(mob/user)
	. = ..()
	. += "<span class='info'>It's worth [value] credit\s.</span>"

/obj/item/coin/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/stack/cable_coil))
		var/obj/item/stack/cable_coil/CC = W
		if(string_attached)
			to_chat(user, "<span class='warning'>There already is a string attached to this coin!</span>")
			return

		if (CC.use(1))
			add_overlay("coin_string_overlay")
			string_attached = 1
			to_chat(user, "<span class='notice'>You attach a string to the coin.</span>")
		else
			to_chat(user, "<span class='warning'>You need one length of cable to attach a string to the coin!</span>")
			return
	else
		..()

/obj/item/coin/wirecutter_act(mob/living/user, obj/item/I)
	..()
	if(!string_attached)
		return TRUE

	new /obj/item/stack/cable_coil(drop_location(), 1)
	overlays = list()
	string_attached = null
	to_chat(user, "<span class='notice'>You detach the string from the coin.</span>")
	return TRUE

/obj/item/coin/attack_self(mob/user)
	if(cooldown < world.time)
		if(string_attached) //does the coin have a wire attached
			to_chat(user, "<span class='warning'>The coin won't flip very well with something attached!</span>" )
			return FALSE//do not flip the coin
		cooldown = world.time + 15
		flick("coin_[coinflip]_flip", src)
		coinflip = pick(sideslist)
		icon_state = "coin_[coinflip]"
		playsound(user.loc, 'sound/items/coinflip.ogg', 50, TRUE)
		var/oldloc = loc
		sleep(15)
		if(loc == oldloc && user && !user.incapacitated())
			user.visible_message("<span class='notice'>[user] flips [src]. It lands on [coinflip].</span>", \
 							 "<span class='notice'>You flip [src]. It lands on [coinflip].</span>", \
							 "<span class='hear'>You hear the clattering of loose change.</span>")
	return TRUE//did the coin flip? useful for suicide_act

/obj/item/coin/gold
	custom_materials = list(/datum/material/gold = 400)

/obj/item/coin/silver
	custom_materials = list(/datum/material/silver = 400)

/obj/item/coin/diamond
	custom_materials = list(/datum/material/diamond = 400)

/obj/item/coin/plasma
	custom_materials = list(/datum/material/plasma = 400)

/obj/item/coin/uranium
	custom_materials = list(/datum/material/uranium = 400)

/obj/item/coin/titanium
	custom_materials = list(/datum/material/titanium = 400)

/obj/item/coin/bananium
	custom_materials = list(/datum/material/bananium = 400)

/obj/item/coin/adamantine
	custom_materials = list(/datum/material/adamantine = 400)

/obj/item/coin/mythril
	custom_materials = list(/datum/material/mythril = 400)

/obj/item/coin/plastic
	custom_materials = list(/datum/material/plastic = 400)

/obj/item/coin/runite
	custom_materials = list(/datum/material/runite = 400)

/obj/item/coin/twoheaded
	desc = "Hey, this coin's the same on both sides!"
	sideslist = list("heads")

/obj/item/coin/antagtoken
	name = "antag token"
	desc = "A novelty coin that helps the heart know what hard evidence cannot prove."
	icon_state = "coin_valid"
	custom_materials = list(/datum/material/plastic = 400)
	sideslist = list("valid", "salad")
	material_flags = NONE

/obj/item/coin/iron

/obj/item/coin/gold/debug
	custom_materials = list(/datum/material/gold = 400)
	desc = "If you got this somehow, be aware that it will dust you. Almost certainly."

/obj/item/coin/gold/debug/attack_self(mob/user)
	if(cooldown < world.time)
		if(string_attached) //does the coin have a wire attached
			to_chat(user, "<span class='warning'>The coin won't flip very well with something attached!</span>" )
			return FALSE//do not flip the coin
		cooldown = world.time + 15
		flick("coin_[coinflip]_flip", src)
		coinflip = pick(sideslist)
		icon_state = "coin_[coinflip]"
		playsound(user.loc, 'sound/items/coinflip.ogg', 50, TRUE)
		var/oldloc = loc
		sleep(15)
		if(loc == oldloc && user && !user.incapacitated())
			user.visible_message("<span class='notice'>[user] flips [src]. It lands on [coinflip].</span>", \
 							 "<span class='notice'>You flip [src]. It lands on [coinflip].</span>", \
							 "<span class='hear'>You hear the clattering of loose change.</span>")
		SSeconomy.fire()
		to_chat(user,"<span class='bounty'>[SSeconomy.inflation_value()] is the inflation value.</span>")
	return TRUE//did the coin flip? useful for suicide_act

#undef ORESTACK_OVERLAYS_MAX
