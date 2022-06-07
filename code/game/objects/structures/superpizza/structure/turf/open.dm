/turf/open/floor/hearth
	name = "concrete floor"
	desc = "conk creet babey!"
	icon_state = "hearth"
	thermal_conductivity = INFINITY
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	heat_capacity = INFINITY
	floor_tile = /obj/item/stack/tile/hearth
	tiled_dirt = FALSE
/turf/open/floor/hearth/break_tile()
	return //unbreakable

/turf/open/floor/hearth/burn_tile()
	return //unburnable

/turf/open/floor/hearth/make_plating(force = FALSE)
	if(force)
		..()
	return //unplateable

/turf/open/floor/rocks
	name = "rocks"
	desc = "they are funny and small and nice"
	icon_state = "roks"
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	heat_capacity = 10000
	floor_tile = /obj/item/stack/tile/rocks
	tiled_dirt = FALSE
/turf/open/floor/rocks/attackby(obj/item/C, mob/user, params)
	if((C.tool_behaviour == TOOL_SHOVEL) && params)
		new /obj/item/stack/stone(src, 4)
		user.visible_message("<span class='notice'>[user] digs up [src].</span>", "<span class='notice'>You remove the [src].</span>")
		playsound(src, 'sound/effects/shovel_dig.ogg', 50, TRUE)
		make_plating()
	if(..())
		return
/turf/open/floor/rocks/break_tile()
	return //unbreakable

/turf/open/floor/rocks/burn_tile()
	return //unburnable

/turf/open/floor/rocks/make_plating(force = FALSE)
	if(force)
		..()
	return //unplateable
/turf/open/floor/bathroom
	floor_tile = /obj/item/stack/tile/bathroom
	icon = 'code/game/objects/structures/superpizza/floors.dmi'
	icon_state = "bathroom"
	heat_capacity = 5000
	broken_states = list("bathroomb1","bathroomb2","bathroomb3", "bathroomb4")
/turf/open/floor/linoleum
	floor_tile = /obj/item/stack/tile/linoleum
	icon = 'code/game/objects/structures/superpizza/floors.dmi'
	icon_state = "linoleum"
	heat_capacity = 6000
	broken_states = list("linoleum_busted2","linoleum_busted1","linoleum_busted3", "linoleum_busted4")
/turf/open/floor/material/basket
	floor_tile = /obj/item/stack/tile/material/basket
	icon = 'code/game/objects/structures/superpizza/floors.dmi'
	icon_state = "basket"