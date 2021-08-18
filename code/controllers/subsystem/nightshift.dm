SUBSYSTEM_DEF(nightshift)
	name = "Night Shift"
	wait = 5000
	flags = SS_NO_TICK_CHECK

	var/nightshift_active = FALSE
	var/nightshift_start_time = 702000		//7:30 PM, station time
	var/nightshift_end_time = 270000		//7:30 AM, station time
	var/nightshift_first_check = 5 SECONDS

	var/high_security_mode = FALSE

/datum/controller/subsystem/nightshift/Initialize()
	return ..()

/datum/controller/subsystem/nightshift/fire(resumed = FALSE)
	if(world.time - SSticker.round_start_time < nightshift_first_check)
		return
	check_nightshift()

/datum/controller/subsystem/nightshift/proc/announce(message)
	priority_announce(message, sound='sound/misc/notice2.ogg', sender_override="Automated Lighting System Announcement")

/datum/controller/subsystem/nightshift/proc/check_nightshift()
	var/emergency = GLOB.security_level >= SEC_LEVEL_RED
	var/announcing = TRUE
	var/time = station_time()
	var/night_time = (time < nightshift_end_time) || (time > nightshift_start_time)
	var/rawtime = sin(0.00000864*time)
	var/flavor = "#DEDF64"
	var/list/DNClist = list("#DEDF64", "#999999", "#777777", "#521C07", "#050505","#303030")
	log_world("[rawtime]")
	//flavor = DNClist[currentDncStage]
	for(var/area in GLOB.sortedAreas)
		var/area/A = area
		if(initial(A.exposed) == 1)
			for(var/turf/S in A)
				S.set_light(6, rawtime)
	if(high_security_mode != emergency)
		high_security_mode = emergency
		if(night_time)
			announcing = FALSE
			if(!emergency)
				announce("Restoring night lighting configuration to normal operation.")
			else
				announce("Disabling night lighting: Station is in a state of emergency.")
	if(emergency)
		night_time = FALSE
	if(nightshift_active != night_time)
		update_nightshift(night_time, announcing)

/datum/controller/subsystem/nightshift/proc/update_nightshift(active, announce = TRUE)
	nightshift_active = active
	if(announce)
		if (active)
			announce("night")
		else
			announce("morning")
	for(var/A in GLOB.apcs_list)
		var/obj/machinery/power/apc/APC = A
		if (APC.area && (APC.area.type in GLOB.the_station_areas))
			APC.set_nightshift(active)
			CHECK_TICK
/turf/proc/gaysex()
	light_power = 1 // Intensity of the light.
	light_range = 0 // Range in tiles of the light.