-- Stripped from 1042

core.register_node("mesh_chunk_transparency_culling:ice", {
    description = "Ice",
    drawtype = "glasslike",
    tiles = {"ice.png"},
    use_texture_alpha = "blend",
	paramtype = "light",

    color = "#333333",
})


core.register_node("mesh_chunk_transparency_culling:water_source", {
    description = "Water Source",

    drawtype = "liquid",
    tiles = {
		{
			name = "water.png^[makealpha:1,1,1",
			backface_culling = false,
		},
		{
			name = "water.png^[makealpha:1,1,1",
			backface_culling = true,
		},
    },
	use_texture_alpha = "blend",
    
    paramtype = "light",
    paramtype2 = "none",
    light_source = 4,
    is_ground_content = false,

    liquidtype = "source",
    liquid_alternative_flowing = "air",
    liquid_alternative_source = ":water_source",

	waving = 3,
})