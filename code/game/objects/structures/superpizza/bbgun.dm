/obj/item/gun/ballistic/bb
	desc = "Now comes in flavors like GUN. Uses 10mm ammo, for some reason."
	name = "projectile gun"
	icon = 'code/game/objects/structures/superpizza/bbguns.dmi'
	icon_state = "rifle"
	lefthand_file = 'code/game/objects/structures/superpizza/leftbbgun.dmi'
	righthand_file = 'code/game/objects/structures/superpizza/rightbbgun.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	///sound when inserting magazine
	load_sound = 'sound/weapons/gun/general/magazine_insert_full.ogg'
	///sound when inserting an empty magazine
	load_empty_sound = 'sound/weapons/gun/general/magazine_insert_empty.ogg'
	///sound of racking
	rack_sound = 'sound/weapons/gun/general/bolt_rack.ogg'
	///sound of when the bolt is locked back manually
	lock_back_sound = 'sound/weapons/gun/general/slide_lock_1.ogg'
	///Sound of ejecting a magazine
	eject_sound = 'sound/weapons/gun/general/magazine_remove_full.ogg'
	///sound of ejecting an empty magazine
	eject_empty_sound = 'sound/weapons/gun/general/magazine_remove_empty.ogg'
	///volume of ejecting a magazine
	eject_sound_volume = 40
	///whether eject sound should vary
	eject_sound_vary = TRUE
	///sound of dropping the bolt or releasing a slide
	bolt_drop_sound = 'sound/weapons/gun/general/bolt_drop.ogg'
	///volume of bolt drop/slide release
	bolt_drop_sound_volume = 60
	///empty alarm sound (if enabled)
	empty_alarm_sound = 'sound/weapons/gun/general/empty_alarm.ogg'
	///empty alarm volume sound
	empty_alarm_volume = 70
	///Whether the gun will spawn loaded with a magazine
	spawnwithmagazine = FALSE
	///Compatible magazines with the gun
	mag_type = /obj/item/ammo_box/magazine/bb //Removes the need for max_ammo and caliber info
	///Whether the sprite has a visible magazine or not
	mag_display = FALSE
	///Whether the sprite has a visible ammo display or not
	mag_display_ammo = FALSE
	///The bolt type of the gun, affects quite a bit of functionality, see combat.dm defines for bolt types: BOLT_TYPE_STANDARD; BOLT_TYPE_LOCKING; BOLT_TYPE_OPEN; BOLT_TYPE_NO_BOLT
	bolt_type = BOLT_TYPE_STANDARD
 	///Used for locking bolt and open bolt guns. Set a bit differently for the two but prevents firing when true for both.
	bolt_locked = FALSE
	///Whether the gun has to be racked each shot or not.
	semi_auto = FALSE
	///Actual magazine currently contained within the gun
	///whether the gun ejects the chambered casing
	casing_ejector = FALSE
	///Whether the gun has an internal magazine or a detatchable one. Overridden by BOLT_TYPE_NO_BOLT.
	internal_magazine = FALSE
	///Phrasing of the bolt in examine and notification messages; ex: bolt, slide, etc.
	bolt_wording = "pump"
	///Phrasing of the magazine in examine and notification messages; ex: magazine, box, etx
	magazine_wording = "magazine"
	///Phrasing of the cartridge in examine and notification messages; ex: bullet, shell, dart, etc.
	cartridge_wording = "bb"
	///length between individual racks
	rack_delay = 5
	///time of the most recent rack, used for cooldown purposes
	recent_rack = 0
	///Whether the gun can be tacloaded by slapping a fresh magazine directly on it
	tac_reloads = TRUE //Snowflake mechanic no more.
	///Whether the gun can be sawn off by sawing tools
	can_be_sawn_off = FALSE

/obj/item/gun/ballistic/bb/tommy
	icon_state = "thom"
	semi_auto = TRUE
	mag_type = /obj/item/ammo_box/magazine/bb

/obj/item/ammo_box/magazine/bb
	name = "bb magazine"
	desc = "A bb gun magazine"
	icon_state = "75-8"
	ammo_type = /obj/item/ammo_casing/bb
	caliber = "bb"
	max_ammo = 30
/obj/item/ammo_casing/bb
	name = "bb"
	desc = "A bb"
	caliber = "bb"
	projectile_type = /obj/projectile/bullet/bb
	icon = 'code/game/objects/structures/superpizza/bbguns.dmi'
	icon_state = "bb"
/obj/projectile/bullet/bb
	name = "bb"
	icon_state = "lowbb"
	damage = 1
	paralyze = 15
	speed = 0.6
	knockdown = 6
	hitsound = 'sound/effects/meteorimpact.ogg'

/obj/item/ammo_box/magazine/internal/bbrifle
	name = "bb gun chamber"
	ammo_type = /obj/item/ammo_casing/bb
	max_ammo = 1

/obj/item/gun/ballistic/rifle/bb
	name = "bb rifle"
	desc = "A bb gun"
	icon = 'code/game/objects/structures/superpizza/bbguns.dmi'
	icon_state = "rifle"
	lefthand_file = 'code/game/objects/structures/superpizza/leftbbgun.dmi'
	righthand_file = 'code/game/objects/structures/superpizza/rightbbgun.dmi'
	worn_icon_state = null
	mag_type = /obj/item/ammo_box/magazine/internal/bbrifle
	bolt_wording = "bolt"
	bolt_type = BOLT_TYPE_STANDARD
	semi_auto = FALSE
	internal_magazine = TRUE
	fire_sound = 'sound/weapons/gun/rifle/shot.ogg'
	fire_sound_volume = 90
	vary_fire_sound = FALSE
	rack_sound = 'sound/weapons/gun/rifle/bolt_out.ogg'
	bolt_drop_sound = 'sound/weapons/gun/rifle/bolt_in.ogg'
	tac_reloads = FALSE
	custom_price = 500
/obj/item/gun/ballistic/rifle/bb/rack(mob/user = null)
	if (bolt_locked == FALSE)
		to_chat(user, "<span class='notice'>You open the barrel of \the [src].</span>")
		playsound(src, rack_sound, rack_sound_volume, rack_sound_vary)
		process_chamber(FALSE, FALSE, FALSE)
		bolt_locked = TRUE
		update_icon()
		return
	drop_bolt(user)
/obj/item/gun/ballistic/rifle/bb/drop_bolt(mob/user = null)
	playsound(src, bolt_drop_sound, bolt_drop_sound_volume, FALSE)
	if (user)
		to_chat(user, "<span class='notice'>You close the barrel the [src].</span>")
	chamber_round()
	bolt_locked = FALSE
	update_icon()
