/turf/closed/wall/material
	name = "wall"
	desc = "A huge chunk of material used to separate rooms."
	icon = 'icons/turf/walls/materialwall.dmi'
	icon_state = "wall"
	canSmoothWith = list(/turf/closed/wall/material)
	smooth = SMOOTH_TRUE
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS
	girder_type = null
turf/closed/wall/material/break_wall()
	for(var/i in custom_materials)
		var/datum/material/M = i
		new M.sheet_type(src, FLOOR(custom_materials[M] / MINERAL_MATERIAL_AMOUNT, 1))

/turf/closed/wall/material/devastate_wall()
	for(var/i in custom_materials)
		var/datum/material/M = i
		new M.sheet_type(src, FLOOR(custom_materials[M] / MINERAL_MATERIAL_AMOUNT, 1))

/turf/closed/wall/material/mat_update_desc(mat)
	desc = "A huge chunk of [mat] used to separate rooms."

/turf/closed/wall/material/stone
	custom_materials = list(/datum/material/stone = 4000)
	set_custom_materials(custom_materials)
/turf/closed/wall/material/iron
	custom_materials = list(/datum/material/iron = 4000)
	set_custom_materials(custom_materials)
/turf/closed/wall/material/concrete
	custom_materials = list(/datum/material/iron = 4000)
	set_custom_materials(custom_materials)