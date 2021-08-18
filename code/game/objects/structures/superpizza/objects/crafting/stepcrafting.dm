//pickaxes
//shovels
//axe head






/obj/item/stack/molteniron/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/hammer))
		var/obj/item/stack/molteniron/R
		var/choice = input(user, "What would you like to make?", "Molten Metal") as null|anything in list("pickaxe head (10)","shovel head (10)","hatchet","chisel")
		switch(choice)
			if("pickaxe head (10)")
				if(amount>=10)
					to_chat(user, "<span class='notice'>You make a [src].</span>")
					new /obj/item/pickaxehead(loc)
					R.use(10)
				else
					to_chat(user, "<span class='notice'>You don't have enough</span>")
			if("shovel head (10)")
				if(amount>=10)
					to_chat(user, "<span class='notice'>You make a [src].</span>")
					new /obj/item/shovelhead(loc)
					R.use(10)
				else
					to_chat(user, "<span class='notice'>You don't have enough</span>")
			if("hatchet")
				to_chat(user, "<span class='notice'>You make a [src].</span>")
				new /obj/item/hatchet/wooden(loc)
				R.use(1)
			if("chisel")
				to_chat(user, "<span class='notice'>You make a [src].</span>")
				new /obj/item/chisel(loc)
				R.use(1)
			else
				return ..()

/obj/item/stack/moltencopper/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/hammer))
		var/obj/item/stack/moltencopper/R
		var/choice = input(user, "What would you like to make?", "Molten Metal") as null|anything in list("pickaxe head (10)","shovel head (10)")
		switch(choice)
			if("pickaxe head (10)")
				if(amount>=10)
					to_chat(user, "<span class='notice'>You make a [src].</span>")
					new /obj/item/copperpickaxehead(loc)
					R.use(10)
				else
					to_chat(user, "<span class='notice'>You don't have enough</span>")
			if("shovel head (10)")
				if(amount>=10)
					to_chat(user, "<span class='notice'>You make a [src].</span>")
					new /obj/item/coppershovelhead(loc)
					R.use(10)
				else
					to_chat(user, "<span class='notice'>You don't have enough</span>")
			else
				return ..()
/obj/structure/barricade/stonewall/attackby(obj/item/I, mob/user)
	if(istype(I,/obj/item/stack/stone))
		var/obj/item/stack/stone/W = I
		if(W.amount < 3)
			to_chat(user, "<span class='warning'>You need at least three sandstone bricks to make a wall!</span>")
			return
		else
			to_chat(user, "<span class='notice'>You start adding [I] to [src]...</span>")
			if(do_after(user, 25, target=src))
				W.use(3)
				var/turf/T = get_turf(src)
				T.PlaceOnTop(/turf/closed/wall/stone)
				qdel(src)
				return
	return ..()