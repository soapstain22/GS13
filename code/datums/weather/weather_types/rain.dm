
/datum/weather/rain
	name = "rain"
	desc = "Its just water"

	telegraph_duration = 400
	telegraph_message = "<span class='boldwarning'>You feel rain falling.</span>"
	telegraph_sound = 'sound/ambience/acidrain_start.ogg'

	weather_message = "<span class='userdanger'><i>The storm picks up.</i></span>"
	weather_overlay = "acid_rain"
	weather_duration_lower = 600
	weather_duration_upper = 1500
	weather_sound = 'sound/ambience/acidrain_mid.ogg'

	end_duration = 100
	end_message = "<span class='boldannounce'>The downpour gradually slows to a light sprinkley trickle.</span>"
	end_sound = 'sound/ambience/acidrain_end.ogg'

	area_type = /area/surface/outdoors/unexplored
	protect_indoors = TRUE
	target_trait = ZTRAIT_OUTDOORS_RUINS
	probability = 90


	barometer_predictable = TRUE


/datum/weather/rain/weather_act(obj/machinery/hydroponics/L)
	L.adjustWater(rand(1,6))
/datum/weather/rain/weather_act(mob/living/L)
	L.adjust_bodytemperature(-rand(1,5))