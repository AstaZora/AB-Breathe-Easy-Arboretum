data:extend({
    {
        type = "fluid",
        name = "essential-oils",
        subgroup = "ab-composting",
        default_temperature = 25,
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[essential-oils]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "wood-alcohol",
        subgroup = "ab-composting",
        default_temperature = 25,
        heat_capacity = "0.05KJ",
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[wood-alcohol]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "basic-biofuel",
        subgroup = "ab-composting",
        default_temperature = 25,
        max_temperature = 25,
        heat_capacity = "0.75KJ",
        fuel_value = "2MJ",
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[biofuel]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "synthetic-biofuel",
        subgroup = "ab-composting",
        default_temperature = 25,
        heat_capacity = "0.5KJ",
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[synthetic-biofuel]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "bio-oil",
        subgroup = "ab-composting",
        default_temperature = 25,
        heat_capacity = "0.2KJ",
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[bio-oil]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "wood-gas",
        subgroup = "ab-composting",
        default_temperature = 25,
        heat_capacity = "0.2KJ",
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[wood-gas]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "wood-methanol",
        subgroup = "ab-composting",
        default_temperature = 25,
        heat_capacity = "0.1KJ",
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[wood-methanol]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "wood-ethanol",
        subgroup = "ab-composting",
        default_temperature = 25,
        heat_capacity = "0.4KJ",
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[wood-ethanol]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "wood-tar",
        subgroup = "ab-composting",
        default_temperature = 25,
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[wood-tar]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "wood-acetone",
        subgroup = "ab-composting",
        default_temperature = 25,
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[wood-acetone]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "sedimentary-sludge",
        subgroup = "ab-water-siphoning",
        default_temperature = 25,
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[sedimentary-sludge]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "mineralized-water",
        subgroup = "ab-water-siphoning",
        default_temperature = 25,
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[mineralized-water]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "ore-waste-water",
        subgroup = "ab-wooden-filtration",
        default_temperature = 25,
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[ore-waste-water]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "ore-slush",
        subgroup = "ab-wooden-filtration",
        default_temperature = 25,
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[ore-slush]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "ore-solution",
        subgroup = "ab-wooden-filtration",
        default_temperature = 25,
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[ore-solution]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "ore-concentrate",
        subgroup = "ab-wooden-filtration",
        default_temperature = 25,
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[ore-concentrate]",
        auto_barrel = true
    },
    {
        type = "fluid",
        name = "ore-slurry",
        subgroup = "ab-wooden-filtration",
        default_temperature = 25,
        base_color = {r=0.5, g=0.5, b=0.5},
        flow_color = {r=0.5, g=0.5, b=0.5},
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "a[fluid]-b[ore-slurry]",
        auto_barrel = true
    },
})