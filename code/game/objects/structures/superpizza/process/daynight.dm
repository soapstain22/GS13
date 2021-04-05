
var/list/DNClist = list("#DEDF64", "#999999", "#777777", "#521C07", "#050505","#303030")

var/global/currentDncStage = 1

var/dncColor = "#DEDF64"

var/dncTime = 3000
											//#FFFFFF - ñâåòëûé äåíü
var/dncIterationInterval = 0.001			//#999999 - îáëà÷íûé äåíü
											//#777777 - î÷åíü îáëà÷íûé äåíü
var/dncStartup = 1							//#DEDF64 - óòðî 1
											//#FFC966 - óòðî 2 ïîîðàíæåâåå
var/dncIncrementing = 1						//#521C07 - âå÷åð 1
											//#2E0F04 - âå÷åð 2 òåìíåå
var/list/dncTurfs = list()					//#050505 - íî÷ü

/proc/SetDncInterval(interval)
	dncIterationInterval = interval

/proc/DayNightCycle(hard = 0)

	if(dncIncrementing)
		currentDncStage += 1
	else
		currentDncStage -= 1

	if(currentDncStage > 6)
		currentDncStage = 0
		dncIncrementing = 1
		DayNightCycle()
		return
	else if(currentDncStage < 1)
		currentDncStage = 0
		dncIncrementing = 1
		DayNightCycle()
		return

	if(hard)
		DncUpdateHard()
	else
		DncUpdateAsync()

/proc/DncIterate(iteration)
	if(iteration <= dncTurfs.len)
		var/diff = dncTurfs.len - iteration
		if(diff > 5)
			var/turf/T = dncTurfs[iteration]
			T.set_light(2, 1, dncColor)
			T = dncTurfs[iteration + 1]
			T.set_light(2, 1, dncColor)
			T = dncTurfs[iteration + 2]
			T.set_light(2, 1, dncColor)
			T = dncTurfs[iteration + 3]
			T.set_light(2, 1, dncColor)
			T = dncTurfs[iteration + 4]
			T.set_light(2, 1, dncColor)
			spawn(dncIterationInterval)
				DncIterate(iteration + 5)
		else
			var/turf/T = dncTurfs[iteration]
			T.set_light(2, 1, dncColor)
			for(var/i = 0, diff - i, i++)
				T = dncTurfs[iteration + i]
				T.set_light(2, 1, dncColor)
			DayNightCycle()
	else
		DayNightCycle()

/proc/DncUpdateAsync()
	dncColor = DNClist[currentDncStage]
	if(!dncTurfs.len)
		for(var/area/A in GLOB.the_station_areas)
			//var/area/awaymission/snowdin/E = A
			for(var/turf/T in A.contents)
				dncTurfs.Add(T)
	DncIterate(1)

/proc/DncUpdateHard()
	dncColor = DNClist[currentDncStage]
	for(var/turf/T in dncTurfs)
		T.set_light(2, 1, dncColor)
	DayNightCycle()

