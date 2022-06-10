/obj/item/disk/design_disk/rando
	name = "Cool Disk"
	desc = "A design disc containing a random blueprint. Put it into a fucking lathe or sewing machine or smithy or something i dont know haha!"
	icon_state = "datadisk1"

/obj/item/disk/design_disk/rando/Initialize()
	. = ..()
	var/loot = rand(1,11)
	switch(loot)
		if(1)
			new /datum/design/rifle(src)
		if(2)
			new /datum/design/bat(src)
		if(3)
			new /datum/design/vase(src)
		if(4)
			new /datum/design/bolt(src)
		if(5)
			new /datum/design/nail(src)
		if(6)
			new /datum/design/spring(src)
		if(7)
			new /datum/design/screw(src)
		if(8)
			new /datum/design/shortsword(src)
		if(9)
			new /datum/design/mace(src)
		if(10)
			new /datum/design/longsword(src)
		if(11)
			new /datum/design/waraxe(src)
		else
			return
	blueprints[1] = new loot
