//Radiation storms occur when the station passes through an irradiated area, and irradiate anyone not standing in protected areas (maintenance, emergency storage, etc.)
/datum/weather/night
	name = "night"
	desc = "sleepy time"

	telegraph_duration = 200
	telegraph_message = "<span class='danger'>Its getting late... Find shelter!</span>"
	weather_message = "<span class='userdanger'><i>Goodnight!</i></span>"
	telegraph_overlay = "sunset"
	weather_duration_lower = 2100
	weather_duration_upper = 2600
	weather_overlay = "dark"
	overlay_layer = 15
	barometer_predictable = TRUE
	end_duration = 200
	end_message = "<span class='notice'>The sun rises.</span>"
	end_overlay = "sunrise"
	area_type = /area/surface/outdoors/unexplored
	protected_areas = list(/area/maintenance, /area/ai_monitored/turret_protected/ai_upload, /area/ai_monitored/turret_protected/ai_upload_foyer,
	/area/ai_monitored/turret_protected/ai, /area/storage/emergency/starboard, /area/storage/emergency/port, /area/shuttle, /area/security/prison/safe, /area/security/prison/toilet)
	target_trait = ZTRAIT_OUTDOORS_RUINS
/datum/weather/night/weather_act(obj/effect/landmark/zombie, mob/living/L)
	L.adjust_bodytemperature(-rand(1,2))
	for(var/obj/effect/landmark/zombie/SP in GLOB.landmarks_list)
		if(prob(95))
			new/mob/living/simple_animal/hostile/carp(SP.loc)
			sleep 30
		else
			new/mob/living/simple_animal/hostile/carp/megacarp(SP.loc)
			sleep 20