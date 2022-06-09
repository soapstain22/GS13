/obj/item/disk/design_disk/rando
	name = "Cool Disk"
	desc = "A design disc containing a random blueprint"
	icon_state = "datadisk1"

/obj/item/disk/design_disk/rando/Initialize()
	. = ..()
	var/loot = rand(1,3)
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
		else
			return
	blueprints[1] = new loot
