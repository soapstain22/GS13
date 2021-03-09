/obj/structure/girder/greyscale
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS
	buildstacktype = null
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