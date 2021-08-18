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
		else
			return
	blueprints[1] = new loot