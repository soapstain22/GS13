/obj/structure/girder/greyscale
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS//Can change color and add prefix
	var/buildstacktype
/obj/structure/girder/greyscale/attackby(obj/item/W, mob/user, params)
	var/platingmodifier = 1
	if(HAS_TRAIT(user, TRAIT_QUICK_BUILD))
		platingmodifier = 0.7
		if(next_beep <= world.time)
			next_beep = world.time + 10
			playsound(src, 'sound/machines/clockcult/integration_cog_install.ogg', 50, TRUE)
	add_fingerprint(user)

	if(istype(W, /obj/item/gun/energy/plasmacutter))
		to_chat(user, "<span class='notice'>You start slicing apart the girder...</span>")
		if(W.use_tool(src, user, 40, volume=100))
			to_chat(user, "<span class='notice'>You slice apart the girder.</span>")
			new buildstacktype (loc, 2)
			qdel(src)

	else if(istype(W, /obj/item/stack))
		if(iswallturf(loc))
			to_chat(user, "<span class='warning'>There is already a wall present!</span>")
			return
		if(!isfloorturf(src.loc))
			to_chat(user, "<span class='warning'>A floor must be present to build a false wall!</span>")
			return
		if (locate(/obj/structure/falsewall) in src.loc.contents)
			to_chat(user, "<span class='warning'>There is already a false wall present!</span>")
			return

		if(istype(W, /obj/item/stack/rods))
			var/obj/item/stack/rods/S = W
			if(state == GIRDER_DISPLACED)
				if(S.get_amount() < 2)
					to_chat(user, "<span class='warning'>You need at least two rods to create a false wall!</span>")
					return
				to_chat(user, "<span class='notice'>You start building a reinforced false wall...</span>")
				if(do_after(user, 20, target = src))
					if(S.get_amount() < 2)
						return
					S.use(2)
					to_chat(user, "<span class='notice'>You create a false wall. Push on it to open or close the passage.</span>")
					var/obj/structure/falsewall/iron/FW = new (loc)
					transfer_fingerprints_to(FW)
					qdel(src)
			else
				if(S.get_amount() < 5)
					to_chat(user, "<span class='warning'>You need at least five rods to add plating!</span>")
					return
				to_chat(user, "<span class='notice'>You start adding plating...</span>")
				if(do_after(user, 40, target = src))
					if(S.get_amount() < 5)
						return
					S.use(5)
					to_chat(user, "<span class='notice'>You add the plating.</span>")
					var/turf/T = get_turf(src)
					T.PlaceOnTop(/turf/closed/wall/mineral/iron)
					transfer_fingerprints_to(T)
					qdel(src)
				return

		if(!istype(W, /obj/item/stack/sheet))
			return

		var/obj/item/stack/sheet/S = W
		if(istype(S, /obj/item/stack/sheet))
			if(state == GIRDER_DISPLACED)
				if(S.get_amount() < 2)
					to_chat(user, "<span class='warning'>You need two sheets of metal to create a false wall!</span>")
					return
				to_chat(user, "<span class='notice'>You start building a false wall...</span>")
				if(do_after(user, 20*platingmodifier, target = src))
					if(S.get_amount() < 2)
						return
					S.use(2)
					to_chat(user, "<span class='notice'>You create a false wall. Push on it to open or close the passage.</span>")
					var/obj/structure/falsewall/F = new (loc)
					transfer_fingerprints_to(F)
					qdel(src)
			else if(state == GIRDER_REINF)
				to_chat(user, "<span class='warning'>You can't finish a reinforced girder with regular metal. You need a plasteel sheet for that.</span>")
				return
			else
				if(S.get_amount() < 2)
					to_chat(user, "<span class='warning'>You need two sheets of metal to finish a wall!</span>")
					return
				to_chat(user, "<span class='notice'>You start adding plating...</span>")
				if (do_after(user, 40*platingmodifier, target = src))
					if(S.get_amount() < 2)
						return
					S.use(2)
					to_chat(user, "<span class='notice'>You add the plating.</span>")
					var/turf/T = get_turf(src)
					T.PlaceOnTop(/turf/closed/wall)
					transfer_fingerprints_to(T)
					qdel(src)
				return

		if(istype(S, /obj/item/stack/sheet/plasteel))
			if(state == GIRDER_DISPLACED)
				if(S.get_amount() < 2)
					to_chat(user, "<span class='warning'>You need at least two sheets to create a false wall!</span>")
					return
				to_chat(user, "<span class='notice'>You start building a reinforced false wall...</span>")
				if(do_after(user, 20, target = src))
					if(S.get_amount() < 2)
						return
					S.use(2)
					to_chat(user, "<span class='notice'>You create a reinforced false wall. Push on it to open or close the passage.</span>")
					var/obj/structure/falsewall/reinforced/FW = new (loc)
					transfer_fingerprints_to(FW)
					qdel(src)
			else if(state == GIRDER_REINF)
				if(S.get_amount() < 1)
					return
				to_chat(user, "<span class='notice'>You start finalizing the reinforced wall...</span>")
				if(do_after(user, 50*platingmodifier, target = src))
					if(S.get_amount() < 1)
						return
					S.use(1)
					to_chat(user, "<span class='notice'>You fully reinforce the wall.</span>")
					var/turf/T = get_turf(src)
					T.PlaceOnTop(/turf/closed/wall/r_wall)
					transfer_fingerprints_to(T)
					qdel(src)
				return
			else
				if(S.get_amount() < 1)
					return
				to_chat(user, "<span class='notice'>You start reinforcing the girder...</span>")
				if(do_after(user, 60*platingmodifier, target = src))
					if(S.get_amount() < 1)
						return
					S.use(1)
					to_chat(user, "<span class='notice'>You reinforce the girder.</span>")
					var/obj/structure/girder/reinforced/R = new (loc)
					transfer_fingerprints_to(R)
					qdel(src)
				return

		if(S.sheettype != "runed")
			var/M = S.sheettype
			if(state == GIRDER_DISPLACED)
				var/falsewall_type = text2path("/obj/structure/falsewall/[M]")
				if(!falsewall_type)
					to_chat(user, "<span class='warning'>You can't seem to figure out how to make a false wall with [S]!</span>")
					return
				if(S.get_amount() < 2)
					to_chat(user, "<span class='warning'>You need at least two sheets to create a false wall!</span>")
					return
				if(do_after(user, 20, target = src))
					if(S.get_amount() < 2)
						return
					S.use(2)
					to_chat(user, "<span class='notice'>You create a false wall. Push on it to open or close the passage.</span>")
					var/obj/structure/falsewall/FW = new falsewall_type (loc)
					transfer_fingerprints_to(FW)
					qdel(src)
			else
				if(S.get_amount() < 2)
					to_chat(user, "<span class='warning'>You need at least two sheets to add plating!</span>")
					return
				to_chat(user, "<span class='notice'>You start adding plating...</span>")
				if (do_after(user, 40, target = src))
					if(S.get_amount() < 2)
						return
					S.use(2)
					to_chat(user, "<span class='notice'>You add the plating.</span>")
					var/turf/T = get_turf(src)
					if(S.walltype)
						T.PlaceOnTop(S.walltype)
					else
						var/turf/newturf = T.PlaceOnTop(/turf/closed/wall/material)
						var/list/material_list = list()
						if(S.material_type)
							material_list[SSmaterials.GetMaterialRef(S.material_type)] = MINERAL_MATERIAL_AMOUNT * 2
						if(material_list)
							newturf.set_custom_materials(material_list)

					transfer_fingerprints_to(T)
					qdel(src)
				return

		add_hiddenprint(user)

	else if(istype(W, /obj/item/pipe))
		var/obj/item/pipe/P = W
		if (P.pipe_type in list(0, 1, 5))	//simple pipes, simple bends, and simple manifolds.
			if(!user.transferItemToLoc(P, drop_location()))
				return
			to_chat(user, "<span class='notice'>You fit the pipe into \the [src].</span>")
	else
		return ..()

// Screwdriver behavior for girders
/obj/structure/girder/greyscale/screwdriver_act(mob/user, obj/item/tool)
	if(..())
		return TRUE

	. = FALSE
	if(state == GIRDER_DISPLACED)
		user.visible_message("<span class='warning'>[user] disassembles the girder.</span>",
							 "<span class='notice'>You start to disassemble the girder...</span>",
							 "<span class='hear'>You hear clanking and banging noises.</span>")
		if(tool.use_tool(src, user, 40, volume=100))
			if(state != GIRDER_DISPLACED)
				return
			state = GIRDER_DISASSEMBLED
			to_chat(user, "<span class='notice'>You disassemble the girder.</span>")
			var/obj/item/stack/sheet/M = new (loc, 2)
			M.add_fingerprint(user)
			qdel(src)
		return TRUE
