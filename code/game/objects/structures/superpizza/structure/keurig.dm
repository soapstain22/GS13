/obj/structure/keurig
	name = "coffee dispenser"
	desc = "A coffee machine"
	icon = 'code/game/objects/structures/superpizza/machine.dmi'
	icon_state = "coffee"
	density = TRUE
	anchored = TRUE
	pressure_resistance = 2 * ONE_ATMOSPHERE
	max_integrity = 300
	var/open = FALSE

/obj/structure/keurig/Initialize()
	// Bluespace beakers, but without the portability or efficiency in circuits.
	create_reagents(300, DRAINABLE | AMOUNT_VISIBLE)
	. = ..()

/obj/structure/keurig/examine(mob/user)
	. = ..()
	. += "<span class='notice'>It is currently [open?"open, letting you pour liquids in.":"closed, letting you draw liquids"]</span>"

/obj/structure/keurig/attack_hand(mob/user)
	open = !open
	if(open)
		reagents.flags &= ~(DRAINABLE)
		reagents.flags |= REFILLABLE
		to_chat(user, "<span class='notice'>You open [src]</span>")
	else
		reagents.flags |= DRAINABLE
		reagents.flags &= ~(REFILLABLE)
		to_chat(user, "<span class='notice'>You close [src]</span>")
	update_icon()

/obj/structure/keurig/update_icon_state()
	if(open)
		icon_state = "coffee_open"
	else
		icon_state = "coffee"

