data:extend({
    {
        type = "technology",
        name = "ab-arboretum-basic",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-basic-tree-farm"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-basic-sawmill"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-wooden-boards"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-organic-mulch"
            }
        },
        unit = {
            count = 1,
            time = 30,
            ingredients = {},
        },
        order = "a-b-a"
    },
    {
        type = "technology",
        name = "ab-arboretum-sawmilling",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-arboretum-basic"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-pine-wood-planks"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-birch-wood-planks"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-willow-wood-planks"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-poplar-wood-planks"
            }
        },
        unit = {
            count = 1,
            time = 240,
            ingredients = {},
        },
        order = "a-b-b"
    },
    {
        type = "technology",
        name = "ab-arboretum-greenhouse",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-arboretum-basic"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-grow-pine-tree"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-grow-birch-tree"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-grow-willow-tree"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-grow-poplar-tree"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-grow-oak-tree"
            },
        },
        unit = {
            count = 1,
            time = 240,
            ingredients = {},
        },
        order = "a-b-c"
    },
    {
        type = "technology",
        name = "ab-tree-farm-management",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-arboretum-basic"},{"ab-biocomposite-materials"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-wooden-inserter"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-slow-filter-inserter"
            },
        },
        unit = {
            count = 250,
            time = 30,
            ingredients = {{"research-kit", 1}},
        },

    },
    --[[
    {
        type = "technology",
        name = "ab-arboretum-sawmilling-advanced",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-arboretum-sawmilling"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-pine-wood-planks"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-birch-wood-planks"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-willow-wood-planks"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-poplar-wood-planks"
            }
        },
        unit = {
            count = 1,
            time = 240,
            ingredients = {},
        },
        order = "a-b-d"
    },]]
    {
        type = "technology",
        name = "ab-arboretum-wooden-boards",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-arboretum-sawmilling"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-pine-wood-boards"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-birch-wood-boards"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-willow-wood-boards"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-poplar-wood-boards"
            }
        },
        unit = {
            count = 1,
            time = 240,
            ingredients = {},
        },
        order = "a-b-e"
    },
    {
        type = "technology",
        name = "ab-arboretum-organic-mulch",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-arboretum-basic"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-organic-mulch-pine-wood"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-organic-mulch-birch-wood"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-organic-mulch-willow-wood"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-organic-mulch-poplar-wood"
            }
        },
        unit = {
            count = 1,
            time = 240,
            ingredients = {},
        },
        order = "a-b-f"
    },
    {
        type = "technology",
        name = "ab-biomass-processing",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-biofuel-production"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-composting",
            },
            {
                type = "unlock-recipe",
                recipe = "ab-organic-mulch"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-composter"
            }
        },
        unit = {
            count = 1,
            time = 240,
            ingredients = {},
        },
        order = "a-b-g"
    },
    {
        type = "technology",
        name = "ab-biofuel-production",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-arboretum-basic"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-wood-alcohol"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-charcoal-furnace"
            }
        },
        unit = {
            count = 1,
            time = 240,
            ingredients = {},
        },
        order = "a-b-h"
    },
    {
        type = "technology",
        name = "ab-biological-fuel-production",
        icon = "__base__/graphics/technology/coal-liquefaction.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-biofuel-production"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-bio-refinery"
            },
        },
        unit = {
            count = 250,
            time = 30,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
        },
        order = "a-b-i"
    },
    {
        type = "technology",
        name = "ab-wood-refining",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-arboretum-basic"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-wood-refinery"
            }
        },
        unit = {
            count = 1,
            time = 240,
            ingredients = {},
        },
        order = "a-b-i"
    },
    {
        type = "technology",
        name = "ab-woodworking",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-wood-refining", "ab-biomass-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-wood-worker"
            }
        },
        unit = {
            count = 1,
            time = 240,
            ingredients = {},
        },
        order = "a-b-j"
    },
    {
        type = "technology",
        name = "ab-chemistry",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-wood-refining"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-chemical-plant"
            }
        },
        unit = {
            count = 1,
            time = 240,
            ingredients = {},
        },
        order = "a-b-k"
    },
    {
        type = "technology",
        name = "ab-grinding",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-wood-refining"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-grindstone"
            }
        },
        unit = {
            count = 1,
            time = 240,
            ingredients = {},
        },
        order = "a-b-l"
    },
    {
        type = "technology",
        name = "ab-crushing",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-wood-refining"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-crusher"
            }
        },
        unit = {
            count = 1,
            time = 240,
            ingredients = {},
        },
        order = "a-b-m"
    },
    {
        type = "technology",
        name = "ab-extraction",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-wood-refining"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-extractor"
            }
        },
        unit = {
            count = 1,
            time = 240,
            ingredients = {},
        },
        order = "a-b-n"
    },
    {
        type = "technology",
        name = "ab-research-kits",
        icon = "__base__/graphics/technology/automation-1.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-extraction"},
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "ab-research-kits"
                }
            },
        unit = {
            count = 1,
            time = 240,
            ingredients = {},
        },
        order = "a-b-o"
    },
    {
        type = "technology",
        name = "ab-advanced-automation",
        icon = "__base__/graphics/technology/automation-2.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-research-kits"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-stone-assembler"
            }
        },
        unit = {
            count = 1,
            time = 240,
            ingredients = {},
        },
        order = "a-b-p"
    },
    {
        type = "technology",
        name = "ab-biocomposite-materials",
        icon = "__base__/graphics/technology/automation-2.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-research-kits"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-biocomposite-research-kit",
            },
            {
                type = "unlock-recipe",
                recipe = "ab-fiberboard-circuitry",
            }
        },
        unit = {
            count = 120,
            time = 30,
            ingredients = {{"research-kit", 1}},
        },
        order = "a-b-q"
    },
    {
        type = "technology",
        name = "ab-fertilizer-distributor",
        icon = "__base__/graphics/technology/automation-2.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-research-kits"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-fertilizer-distributor"
            }
        },
        unit = {
            count = 100,
            time = 30,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
        },
        order = "a-b-r"
    },
    --Ore Refining Era ([Stage 2 of Arboretum])
    --Water Siphon
    {
        type = "technology",
        name = "ab-water-siphoning",
        icon = "__base__/graphics/technology/automation-2.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-biocomposite-materials"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-water-siphon"
            }
        },
        unit = {
            count = 200,
            time = 45,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
        },
        order = "a-b-s"
    },
    --Hydrocyclone
    {
        type = "technology",
        name = "ab-ore-filtration-2",
        icon = "__base__/graphics/technology/automation-2.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-ore-filtration-1"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-hydrocyclone"
            }
        },
        unit = {
            count = 250,
            time = 45,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
        },
        order = "a-b-t"
    },
    --Sluicing
    {
        type = "technology",
        name = "ab-ore-filtration-1",
        icon = "__base__/graphics/technology/automation-2.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-water-siphoning"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-sluice-box"
            }
        },
        unit = {
            count = 300,
            time = 45,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
        },
        order = "a-b-u"
    },
    --Basic Ore Filtration Unit
    {
        type = "technology",
        name = "ab-ore-filtration-3",
        icon = "__base__/graphics/technology/automation-2.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-ore-filtration-2"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-basic-ore-filtration-unit"
            }
        },
        unit = {
            count = 450,
            time = 60,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
        },
        order = "a-b-w"
    },
    --Pyrochamber
    {
        type = "technology",
        name = "ab-ore-pyrolysis",
        icon = "__base__/graphics/technology/automation-2.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-ore-filtration-3"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-ore-pyrochamber"
            }
        },
        unit = {
            count = 600,
            time = 45,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
        },
        order = "a-b-v"
    },
    --Basic Ore Clarifying Unit
    {
        type = "technology",
        name = "ab-basic-ore-clarification",
        icon = "__base__/graphics/technology/automation-2.png",  -- Placeholder icon
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-ore-pyrolysis"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ab-basic-ore-clarification-unit"
            }
        },
        unit = {
            count = 800,
            time = 60,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
        },
        order = "a-b-x"
    },
})