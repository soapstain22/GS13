/// Is the material from an ore? currently unused but exists atm for categorizations sake
#define MAT_CATEGORY_ORE "ore capable"

/// Hard materials, such as iron or metal
#define MAT_CATEGORY_RIGID "rigid material"
#define MAT_CATEGORY_FABRIC "fabric material"
#define MAT_CATEGORY_STONE "stone material"
#define MAT_CATEGORY_WOOD "wood material"
///Use this flag on TRUE if you want the basic recipes
#define MAT_CATEGORY_BASE_RECIPES "basic recipes"
///Use this flag on TRUE if you want the basic recipes
#define MAT_CATEGORY_FABRIC_RECIPES "fabric recipes"
#define MAT_CATEGORY_MASON_RECIPES "mason recipes"
#define MAT_CATEGORY_WOOD_RECIPES "wood recipes"
/// Flag for atoms, this flag ensures it isn't re-colored by materials. Useful for snowflake icons such as default toolboxes.
#define MATERIAL_COLOR (1<<0)
#define MATERIAL_ADD_PREFIX (1<<1)
#define MATERIAL_NO_EFFECTS (1<<2)
#define MATERIAL_AFFECT_STATISTICS (1<<3)

#define MATERIAL_SOURCE(mat) "[mat.name]_material"
