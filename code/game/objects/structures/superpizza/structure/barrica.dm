/obj/structure/barricade/stonewall
	name = "stonewall"
	desc = "stonewall"
	icon = 'icons/obj/smooth_structures/stones.dmi'
	icon_state = "sandbags"
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/barricade/stonewall, /obj/structure/barricade/sandbags, /turf/closed/wall, /turf/closed/wall/r_wall, /obj/structure/falsewall, /obj/structure/falsewall/reinforced, /turf/closed/wall/rust, /turf/closed/wall/r_wall/rust, /obj/structure/barricade/security)
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS
	var/buildstacktype = null
/obj/structure/barricade/stonewall/attackby(obj/item/I, mob/user)
	if(istype(I,buildstacktype))
		var/obj/item/stack/W = I
		if(W.amount < 4)
			to_chat(user, "<span class='warning'>You need at least four stone to make a wall!</span>")
			return
		else
			to_chat(user, "<span class='notice'>You start adding [I] to [src]...</span>")
			if(do_after(user, 25, target=src))
				W.use(4)
				var/turf/T = get_turf(src)
				T.PlaceOnTop(/turf/closed/wall/stone)
				qdel(src)
				return
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
