/datum/round_event_control/rain
	name = "rain"
	typepath = /datum/round_event/rain
	weight = 30
	min_players = 0
	earliest_start = 0 MINUTES
/datum/round_event/rain

/datum/round_event/rain/setup()
	startWhen = 3
	fakeable = FALSE

/datum/round_event/rain/start()
	SSweather.run_weather(/datum/weather/rain)