/obj/structure/barricade/stonewall
	name = "short wall"
	desc = "a wall that can be expanded by adding more material"
	icon = 'icons/obj/smooth_structures/stones.dmi'
	icon_state = "sandbags"
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/barricade/stonewall, /obj/structure/barricade/sandbags, /turf/closed/wall, /turf/closed/wall/r_wall, /obj/structure/falsewall, /obj/structure/falsewall/reinforced, /turf/closed/wall/rust, /turf/closed/wall/r_wall/rust, /obj/structure/barricade/security)
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS
	var/buildstacktype = null
/obj/structure/barricade/stonewall/attackby(obj/item/I, mob/user)
	if(istype(I, /obj/item/stack))
		var/obj/item/stack/W = I
		if(W.get_amount() < 2)
			return
		if(istype(W, /obj/item/stack))
			var/turf/T = get_turf(src)
			var/turf/newturf = T.PlaceOnTop(/turf/closed/wall/material, flags = CHANGETURF_INHERIT_AIR)
			newturf.set_custom_materials(W.custom_materials)
			qdel(src)
		return ..()
/obj/structure/barricade/brickwall
	name = "brickwall"
	desc = "stonewall"
	icon = 'icons/obj/smooth_structures/stones.dmi'
	icon_state = "sandbags"
	max_integrity = 400
	proj_pass_rate = 20
	pass_flags = LETPASSTHROW
	climbable = TRUE
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/barricade/stonewall, /obj/structure/barricade/sandbags, /turf/closed/wall, /turf/closed/wall/r_wall, /obj/structure/falsewall, /obj/structure/falsewall/reinforced, /turf/closed/wall/rust, /turf/closed/wall/r_wall/rust, /obj/structure/barricade/security)
