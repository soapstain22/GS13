/*! How material datums work
Materials are now instanced datums, with an associative list of them being kept in SSmaterials. We only instance the materials once and then re-use these instances for everything.

These materials call on_applied() on whatever item they are applied to, common effects are adding components, changing color and changing description. This allows us to differentiate items based on the material they are made out of.area

*/

SUBSYSTEM_DEF(materials)
	name = "Materials"
	flags = SS_NO_FIRE | SS_NO_INIT
	///Dictionary of material.type || material ref
	var/list/materials
	///Dictionary of category || list of material refs
	var/list/materials_by_category
	///Dictionary of category || list of material types, mostly used by rnd machines like autolathes.
	var/list/materialtypes_by_category
	///A cache of all material combinations that have been used
	var/list/list/material_combos
	///List of stackcrafting recipes for materials using rigid materials
	var/list/rigid_stack_recipes = list(
		new /datum/stack_recipe("Chair", 		/obj/structure/chair/greyscale, one_per_turf = TRUE, on_floor = TRUE, applies_mats = TRUE),
		new /datum/stack_recipe("Toilet", 		/obj/structure/toilet/greyscale, one_per_turf = TRUE, on_floor = TRUE, applies_mats = TRUE),
		new /datum/stack_recipe("Sink",			/obj/structure/sink/greyscale, one_per_turf = TRUE, on_floor = TRUE, applies_mats = TRUE),
		new /datum/stack_recipe("girder",		/obj/structure/girder, one_per_turf = TRUE, on_floor = TRUE, applies_mats = TRUE),
		new /datum/stack_recipe("Floor tile",	/obj/item/stack/tile/material, 1, 4, 20, applies_mats = TRUE),
		new /datum/stack_recipe("Helmet",		/obj/item/clothing/head/helmet/knight/greyscale, 20, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("Armor",		/obj/item/clothing/head/helmet/knight/greyscale, 30, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("pickaxe",		/obj/item/pickaxe/greyscale, 2, 1, 30, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("shovel", 		/obj/item/shovel/greyscale, 2, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("cautery",		/obj/item/cautery/greyscale, 1, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("retractor",	/obj/item/retractor/greyscale, 5, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("scalpel",		/obj/item/scalpel/greyscale, 5, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("hemostat",		/obj/item/hemostat/greyscale, 4, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("wrench",		/obj/item/wrench/greyscale, 3, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("wirecutters",	/obj/item/wirecutters/greyscale, 4, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("screwdriver",	/obj/item/screwdriver/greyscale, 3, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("crowbar",		/obj/item/crowbar/greyscale, 2, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("stairs",		/obj/structure/stairs, 10, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = FALSE),
	)
	var/list/fabric_stack_recipes = list(
		new /datum/stack_recipe("hood", 		/obj/item/clothing/head/hood/greyscale, 15, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("top hat",		/obj/item/clothing/head/helmet/knight/greyscale, 15, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("hat",			/obj/item/clothing/head/that/greyscale, 13, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("smock", 		/obj/item/clothing/under/smock/greyscale, 22, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("clothing", 	/obj/item/clothing/under/greyscale, 20, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("jumpsuit",		/obj/item/clothing/under/color/greyscale, 20, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
		new /datum/stack_recipe("sack",			/obj/item/storage/backpack/sack/greyscale, 20, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),

	)
	var/list/mason_stack_recipes = list(
		new /datum/stack_recipe("carving_block", 	/obj/structure/carving_block, 15, 1, 20, one_per_turf = FALSE, on_floor = FALSE, applies_mats = TRUE),
	)
///Ran on initialize, populated the materials and materials_by_category dictionaries with their appropiate vars (See these variables for more info)
/datum/controller/subsystem/materials/proc/InitializeMaterials()
	materials = list()
	materials_by_category = list()
	materialtypes_by_category = list()
	material_combos = list()
	for(var/type in subtypesof(/datum/material))
		var/datum/material/ref = new type
		materials[type] = ref
		for(var/c in ref.categories)
			materials_by_category[c] += list(ref)
			materialtypes_by_category[c] += list(type)

/datum/controller/subsystem/materials/proc/GetMaterialRef(datum/material/fakemat)
	if(!materials)
		InitializeMaterials()
	return materials[fakemat] || fakemat

///Returns a list to be used as an object's custom_materials. Lists will be cached and re-used based on the parameters.
/datum/controller/subsystem/materials/proc/FindOrCreateMaterialCombo(list/materials_declaration, multiplier)
	if(!material_combos)
		InitializeMaterials()
	var/list/combo_params = list()
	for(var/x in materials_declaration)
		var/datum/material/mat = x
		var/path_name = ispath(mat) ? "[mat]" : "[mat.type]"
		combo_params += "[path_name]=[materials_declaration[mat] * multiplier]"
	sortTim(combo_params, /proc/cmp_text_asc) // We have to sort now in case the declaration was not in order
	var/combo_index = combo_params.Join("-")
	var/list/combo = material_combos[combo_index]
	if(!combo)
		combo = list()
		for(var/mat in materials_declaration)
			combo[GetMaterialRef(mat)] = materials_declaration[mat] * multiplier
		material_combos[combo_index] = combo
	return combo
