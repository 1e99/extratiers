require ("util")
require ("data.entity.transport-belt-pictures")
local industrialBeltItemsPerSecond = 500;
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
        icon_size = 64, icon_mipmaps = 3,
        minable = {mining_time = 0.5, results={}},
        fast_replaceable_group = "assembling-machine",
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
    },
    {
        type = "transport-belt",
        name = "industrial-transport-belt",
        icon = "__base__/graphics/icons/express-transport-belt.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "felix"},
        max_health = 170,
        corpse = "express-transport-belt-remnants",
        dying_explosion = "express-transport-belt-explosion",
        resistances =
        {
        {
            type = "fire",
            percent = 50
        }
        },
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        working_sound =
        {
        sound =
        {
            filename = "__base__/sound/express-transport-belt.ogg",
            volume = 0.3
        },
        persistent = true,
        use_doppler_shift = false
        },
        animation_speed_coefficient = 32,
        related_underground_belt = "express-underground-belt",
        fast_replaceable_group = "transport-belt",

        speed = 480/industrialBeltItemsPerSecond,
        belt_animation_set ={
        animation_set =
        {
            filename = "__base__/graphics/entity/transport-belt/transport-belt.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 16,
            direction_count = 20,
            hr_version =
            {
            filename = "__base__/graphics/entity/transport-belt/hr-transport-belt.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            frame_count = 16,
            direction_count = 20
            }
        },
        
        },
        connector_frame_sprites = transport_belt_connector_frame_sprites,
}
})