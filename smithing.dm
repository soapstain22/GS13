/obj/item/pliers
/obj/item/work
	name = "work"
	desc = "you can finish it with a hammer."
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	icon_state = "work"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	custom_materials = list(/datum/material/iron=1000)
	force = 5
	throwforce = 1
	throw_speed = 1
	throw_range = 6
	var/heated
	var/stage = "fresh"
	var/bendable = TRUE
/obj/item/work/attackby(obj/item/W, mob/user, params)
	if ( \
			!isturf(src.loc) || \
			!(locate(/obj/structure/table/anvil) in src.loc) \
		)
		to_chat(user, "<span class='warning'>You cannot smith the [src] here! You need an anvil.</span>")
		if(istype(W,/obj/item/pliers))
			switch (stage)
				if("fresh")
					var/stagealter = alert(user, "Choose Action", "Elongate", "Squish")
					switch (stagealter)
						if("Elongate")
							stage = "long"
						if("Squish")
							stage = "squished"
				if("longflathead")
					var/stagealter = alert(user, "Choose Action", "Extrude", "Peel Around")
					switch (stagealter)
						if("Extrude")
							stage = "longflatheadextruded"
						if("Peel Around")
							stage = "longflatheadpeeled"
				if("longflatheadextruded")
					var/stagealter = alert(user, "Choose Action", "bend")
					switch (stagealter)
						if("bend")
							stage = "longflatheadextrudedbent"
			stagecheck()
		if(istype(W,/obj/item/handfile))
			switch (stage)
				if("longflatextruded")
					var/stagealter = alert(user, "Choose Action", "Sharpen")
					switch (stagealter)
						if("Sharpen")
						stage = "longflatextrudedsharp"

			stagecheck()
		if(istype(W,/obj/item/hammer))
			switch (stage)
				if("fresh")
					var/stagealter = alert(user, "Choose Action", "Flatten", "Flatten head")
					switch (stagealter)
						if("Flatten")
							stage = "flat"
						if("Flatten head")
							stage = "flathead"
				if("long")
					var/stagealter = alert(user, "Choose Action", "Flatten", "Flatten head")
					switch (stagealter)
						if("Flatten")
							stage = "longflat"
						if("Flatten head")
							stage = "longflathead"
			stagecheck()

		if(istype(W,/obj/item/melee/stick))
			if("longflatheadextrudedbent")
				stage = "pickaxe"
/obj/item/work/proc/stagecheck()
	switch (stage)
		if("fresh")
			icon_state = "work"
		if("squished")
			icon_state = "workfat"
		if("long")
			icon_state = "worklong"
		if("longextruded")
			icon_state = "worklongextruded"
		if("longflat")
			icon_state = "worklongflat"
		if("longflatextruded")
			icon_state = "worklongflatextruded"
		if("longflathead")
			icon_state = "worklongflathead"
		if("longflatheadpeeled")
			icon_state = "worklongflatheadpeeled"
		if("longflatheadextruded")
			icon_state = "worklongflatheadextruded"
		if("longflatheadextrudedbent")
			icon_state = "worklongflatheadextrudedbent"
		if("pickaxe")
			force = 9
			icon_state = "pickaxe"
			tool_behavior = TOOL_MINING
/obj/item/work/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	heated += (exposed_temperature-heat*heat_capacity_modif)
	if(exposed_temperature >= T0C+meltingpoint/2)
		bendable = TRUE
	else
		bendable = FALSE