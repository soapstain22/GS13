/obj/structure/barrel/shit
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "barrel"
	desc = "barrel"
	icon_state = "barrel6"
	max_integrity = 25
	anchored = TRUE
	density = 1
/obj/structure/barrel/shit/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/barrel/shit (loc, 1)
	qdel(src)
/obj/structure/barrel/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/barrel/ (loc, 1)
	qdel(src)

/obj/structure/barrel/bota
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "barrel"
	desc = "barrel"
	icon_state = "barrel3"
	max_integrity = 25
	anchored = TRUE
	density = 1
/obj/structure/barrel/bota/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/bota/ (loc, 1)
	qdel(src)


/obj/structure/barrel/parts
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "barrel"
	desc = "barrel"
	icon_state = "barrel2"
	max_integrity = 25
	anchored = TRUE
	density = 1
/obj/structure/barrel/parts/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/parts/ (loc, 1)
	qdel(src)


/obj/effect/spawner/lootdrop/tool
	name = "barrelspawn"
	lootdoubles = TRUE
	lootcount = 3
	loot = list(

		/obj/item/hammer = 6,

		/obj/item/construction/plumbing = 1,
		)

/obj/structure/barrel/tool
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "barrel"
	desc = "barrel"
	icon_state = "barrel4"
	max_integrity = 25
	anchored = TRUE
	density = 1
// MATS
/obj/structure/barrel/tool/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/tool/ (loc, 1)
	qdel(src)


/obj/structure/barrel/mats
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "barrel"
	desc = "barrel"
	icon_state = "barrel1"
	max_integrity = 25
	anchored = TRUE
	density = 1
/obj/structure/barrel/mats/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/mats/ (loc, 1)
	qdel(src)
// CIRC

/obj/structure/barrel/circ
	icon = 'code/game/objects/structures/superpizza/smithingicon.dmi'
	name = "barrel"
	desc = "barrel"
	icon_state = "barrel5"
	max_integrity = 25
	anchored = TRUE
	density = 1
/obj/structure/barrel/circ/deconstruct(disassembled = FALSE)
	new /obj/effect/spawner/lootdrop/circ/ (loc, 1)
	qdel(src)
