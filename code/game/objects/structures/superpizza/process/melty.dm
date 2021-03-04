/datum/component/smelt
	var/sheet_type
	var/boilingpoint
	var/meltingpoint
	var/gaseousstate
	var/density
	var/usedmats
/datum/component/smelt/Initialize(gas_name, gas_amount, temp_amount)

	src.sheet_type = sheet_type
	src.boilingpoint = boilingpoint
	src.meltingpoint = meltingpoint
	src.gaseousstate = gaseousstate
	src.density = density

	RegisterSignal(parent, COMSIG_PARENT_ATTACKBY, .proc/attackby_react)
	RegisterSignal(parent, COMSIG_ATOM_FIRE_ACT, .proc/flame_react)

/datum/component/smelt/UnregisterFromParent()
	UnregisterSignal(parent, COMSIG_PARENT_ATTACKBY)
	UnregisterSignal(parent, COMSIG_ATOM_FIRE_ACT)

/datum/component/smelt/proc/smelt(obj/item/stack/W, mob/user)
	if(istype(W, /obj/item/stack))
		new sheet_type(src, 1)
		W.use(1)
	else
		new sheet_type(src, MINERAL_MATERIAL_AMOUNT)
		qdel(src)//come back here at a later point after making items that were crafted using materials contain a variable that tells how much material will be returned from the action
/datum/component/smelt/proc/boil(mob/user)
	var/turf/open/T = get_turf(parent)
	T.atmos_spawn_air("[gaseousstate]=[meltingpoint];TEMP=[boilingpoint]")
	if(isturf(parent))
		var/turf/K = parent
		K.ScrapeAway(1, CHANGETURF_INHERIT_AIR)
	else
		qdel(parent)
/datum/component/smelt/proc/flame_react(datum/source, exposed_temperature, exposed_volume)
	if(boilingpoint > exposed_temperature > meltingpoint)
		smelt()
	if(boilingpoint < exposed_temperature > meltingpoint)
		boil()

/datum/component/smelt/proc/attackby_react(datum/source, obj/item/thing, mob/user, params)
	if(thing.get_temperature())
		smelt(user)
