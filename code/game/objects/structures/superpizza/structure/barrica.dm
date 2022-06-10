/obj/structure/barricade/stonewall
	name = "short wall"
	desc = "a wall that can be expanded by adding more material"
	icon = 'icons/obj/smooth_structures/stones.dmi'
	icon_state = "sandbags"
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/barricade/stonewall, /obj/structure/barricade/sandbags, /turf/closed/wall, /turf/closed/wall/r_wall, /obj/structure/falsewall, /obj/structure/falsewall/reinforced, /turf/closed/wall/rust, /turf/closed/wall/r_wall/rust, /obj/structure/barricade/security)
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS
	var/buildstacktype = /obj/item/stack/sheet/metal
/obj/structure/barricade/stonewall/attackby(obj/item/I, mob/user)
	if(istype(I, /obj/item/stack/stone))
		var/obj/item/stack/sheet/W = I
		if(W.get_amount() < 2)
			return
		if(istype(W, buildstacktype))
			var/turf/T = get_turf(src)
			var/turf/newturf = T.PlaceOnTop(/turf/closed/wall/material, flags = CHANGETURF_INHERIT_AIR)
			newturf.set_custom_materials(W.custom_materials)
			qdel(src)
		return ..()
