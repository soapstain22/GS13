/datum/round_event_control/rain
	name = "Bruh Moment"
	typepath = /datum/round_event/rain
	weight = 10
	min_players = 1
	max_occurrences = 500

/datum/round_event/rain
	startWhen = 2
	fakeable = FALSE

/datum/round_event/rain/start()
	SSweather.run_weather(/datum/weather/rain)