require ("util")
data:extend({
    {
        type = "assembling-machine",
        name = "assembling-machine-4";
        energy_usage = "10MJ",
        crafting_speed = 2,
        crafting_categories = {"crafting", "basic-crafting", "advanced-crafting"},
        energy_source =
            {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = 4
            },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        icon = "__base__/graphics/icons/assembling-machine-1.png",
        icon_size = 64,
        icon_mipmaps = 3,
        minable = { mining_time = 0.5, results={}},
        animation =
            {
            layers =
            {
                {
                filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png",
                priority = "high",
                width = 108,
                height = 119,
                frame_count = 32,
                line_length = 8,
                shift = util.by_pixel(0, -0.5),
                hr_version =
                {
                    filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3.png",
                    priority = "high",
                    width = 214,
                    height = 237,
                    frame_count = 32,
                    line_length = 8,
                    shift = util.by_pixel(0, -0.75),
                    scale = 0.5
                }
                },
                {
                filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
                priority = "high",
                width = 130,
                height = 82,
                frame_count = 32,
                line_length = 8,
                draw_as_shadow = true,
                shift = util.by_pixel(28, 4),
                hr_version =
                {
                    filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
                    priority = "high",
                    width = 260,
                    height = 162,
                    frame_count = 32,
                    line_length = 8,
                    draw_as_shadow = true,
                    shift = util.by_pixel(28, 4),
                    scale = 0.5
                }
                }
            }
            }
        }
})