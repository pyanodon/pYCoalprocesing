RECIPE {
    type = "recipe",
    name = "refsyngas-from-filtered-syngas",
    category = "carbonfilter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "syngas", amount = 100},
        {type = "item", name = "active-carbon", amount = 3}
    },
    results = {
        {type = "fluid", name = "refsyngas", amount = 70}
    }
}:add_unlock("filtration")

RECIPE {
    type = "recipe",
    name = "refsyngas-from-meth",
    category = "rectisol",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "syngas", amount = 100},
        {type = "fluid", name = "methanol", amount = 100}
    },
    results = {
        {type = "fluid", name = "refsyngas", amount = 100},
        {type = "fluid", name = "water", amount = 30}, --bob hydrogen
        {type = "fluid", name = "carbon-dioxide", amount = 30},
        {type = "fluid", name = "acidgas", amount = 65}
    },
    main_product = "refsyngas"
}:add_unlock("methanol-processing-2")

RECIPE {
    type = "recipe",
    name = "refsyngas-from-meth-canister",
    category = "rectisol",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "syngas", amount = 100},
        {type = "item", name = "filled-methanol-gas-canister", amount = 1}
    },
    results = {
        {type = "fluid", name = "refsyngas", amount = 100},
        {type = "fluid", name = "water", amount = 30}, --bob hydrogen
        {type = "fluid", name = "carbon-dioxide", amount = 20},
        {type = "fluid", name = "acidgas", amount = 60},
        {type = "item", name = "empty-gas-canister", amount = 1}
    },
    main_product = "refsyngas"
}:add_unlock("methanol-processing-1")

FLUID {
    type = "fluid",
    name = "refsyngas",
    icon = "__pycoalprocessinggraphics__/graphics/icons/refsyngas.png",
    icon_size = 32,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.8, g = 0.239, b = 0.129},
    flow_color = {r = 0.8, g = 0.239, b = 0.129},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59
}
