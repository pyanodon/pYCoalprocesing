RECIPE {
    type = "recipe",
    name = "sand-extractor",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"iron-plate", 40},
        {"niobium-plate", 20},
        {"chromium", 10},
        {"iron-gear-wheel", 20}, --bob brass-gear-wheel
        {"electronic-circuit", 12} --bob basic-electronic-circuit-board
    },
    results = {
        {"sand-extractor", 1}
    }
}:add_unlock("excavation-1")

ITEM {
    type = "item",
    name = "sand-extractor",
    icon = "__pycoalprocessing__/graphics/icons/sand-extractor.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-extraction",
    order = "e",
    place_result = "sand-extractor",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "sand-extractor",
    icon = "__pycoalprocessing__/graphics/icons/sand-extractor.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "sand-extractor"},
    fast_replaceable_group = "sand-extractor",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "productivity", "pollution"},
    crafting_categories = {"sand-extractor"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.01 / 4
    },
    energy_usage = "150kW",
    ingredient_count = 1,
    animation = {
        filename = "__pycoalprocessing__/graphics/entity/sand-extractor/sand-extractor.png",
        width = 192,
        height = 202,
        frame_count = 90,
        line_length = 10,
        animation_speed = 0.35,
        shift = {0.0, -0.312}
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessing__/sounds/sand-extractor.ogg", volume = 0.9},
        idle_sound = {filename = "__pycoalprocessing__/sounds/sand-extractor.ogg", volume = 0.65},
        apparent_volume = 0.45
    }
}
