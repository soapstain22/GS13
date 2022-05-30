/obj/machinery/cdplayer
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	icon_state = "cdplayer"
	var/diskette = null
/obj/machinery/cdplayer/attackby(obj/item/I, mob/user, params)
	if (istype(I, /obj/item/cd)) //INSERT SOME DISKETTES
		// Insert disk
		if (!user.transferItemToLoc(I,src))
			return
		// If insertion was successful and there's already a diskette in the console, eject the old one.
		if(diskette)
			eject_disk(user)
		// Set the new diskette.
		diskette = I
		to_chat(user, "<span class='notice'>You insert [I].</span>")
		playsound( I, 50, FALSE, FALSE)
		return
/obj/machinery/cdplayer/proc/eject_disk(mob/user)
	// Check for diskette.
	if(!diskette)
		return
	to_chat(user, "<span class='notice'>You eject [diskette] from [src].</span>")

	// If the disk shouldn't pop into the user's hand for any reason, drop it on the console instead.
	diskette = null

/obj/item/cdcase/
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	name = "cd case"
	desc = "An old cd case"
	icon_state = "cdcase"
//weezer cd
/obj/item/cd/weezer
	name = "Weezer - Blue Album"
	desc = " The eponymous debut studio album by the American rock band Weezer"
	icon_state = "weezercd"
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
/obj/item/obj/item/storage/cdcase/Initialize()
	. = ..()
	new /obj/item/cd/weezer(src)
/obj/item/obj/item/storage/cdcase
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	name = "Weezer - Blue Album Case"
	desc = " The eponymous debut studio album by the American rock band Weezer"
	icon_state = "weezercd"