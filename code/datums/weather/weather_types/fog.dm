//Radiation storms occur when the station passes through an irradiated area, and irradiate anyone not standing in protected areas (maintenance, emergency storage, etc.)
/datum/weather/fog
	name = "fog"
	desc = "sleepy time"

	telegraph_duration = 200
	telegraph_message = "<span class='danger'>a fog fills the air</span>"
	weather_message = "<span class='userdanger'><i>Goodnight!</i></span>"
	telegraph_overlay = "fog"
	weather_duration_lower = 2100
	weather_duration_upper = 2600
	weather_overlay = "fogloop"
	overlay_layer = 15
	barometer_predictable = FALSE
	end_duration = 200
	end_message = "<span class='notice'>the fog dissapates</span>"
	end_overlay = "sunrise"
	area_type = /area/surface/outdoors/unexplored
	protected_areas = list(/area/maintenance, /area/ai_monitored/turret_protected/ai_upload, /area/ai_monitored/turret_protected/ai_upload_foyer,
	/area/ai_monitored/turret_protected/ai, /area/storage/emergency/starboard, /area/storage/emergency/port, /area/shuttle, /area/security/prison/safe, /area/security/prison/toilet)
	target_trait = ZTRAIT_OUTDOORS_RUINS
/datum/weather/fog/weather_act(obj/effect/landmark/zombie)

	for(var/obj/effect/landmark/zombie/SP in GLOB.landmarks_list)
		if(prob(50))
			new/mob/living/simple_animal/hostile/eldritch/rust_spirit(SP.loc)
			sleep 30
		if(prob(70))
			new/mob/living/simple_animal/hostile/eldritch/stalker(SP.loc)
			sleep 20
/datum/round_event_control/fog
	name = "fog"
	typepath = /datum/round_event/fog
	weight = 30
	min_players = 0
	earliest_start = 0 MINUTES

/datum/round_event/fog


/datum/round_event/fog/setup()
	startWhen = 3
	endWhen = startWhen + 1
	announceWhen	= 1

/datum/round_event/fog/start()
	SSweather.run_weather(/datum/weather/fog)
