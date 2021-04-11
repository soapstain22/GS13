/obj/item/disk/design_disk/rando
	name = "Blueprint Disk"
	desc = "A design disc containing a random blueprint"
	icon_state = "datadisk1"

/obj/item/disk/design_disk/rando/Initialize()
	. = ..()
	var/loot = rand(1,21)
	switch(loot)
		if(1)
			new /datum/design/rifle(src)
		else
			return
	blueprints[1] = new loot