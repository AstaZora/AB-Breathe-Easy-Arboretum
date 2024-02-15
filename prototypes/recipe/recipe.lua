require "prototypes.recipe.fluid-recipe"

local woodTiers = {
    -- Tier 1: Early Game - Basic Needs and Simple Construction
    {
        name = "pine-sapling",
        ingredients = {{"sapling", 10}},
        result_count = 1,
    },
    {
        name = "birch-sapling",
        ingredients = {{"sapling", 10}},
        result_count = 1,
    },
    {
        name = "poplar-sapling",
        ingredients = {{"sapling", 10}},
        result_count = 1,
    },
    {
        name = "willow-sapling",
        ingredients = {{"sapling", 10}},
        result_count = 1,
    },
}

-- Tier 2: Mid Game - Infrastructure and Efficiency Improvements
local previousTier = woodTiers[#woodTiers]
woodTiers[#woodTiers + 1] = {
    name = "oak-sapling",
    ingredients = {{previousTier.name, 10}},
    result_count = previousTier.result_count,
}

previousTier = woodTiers[#woodTiers]
woodTiers[#woodTiers + 1] = {
    name = "maple-sapling",
    ingredients = {{previousTier.name, 10}},
    result_count = previousTier.result_count,
}

previousTier = woodTiers[#woodTiers]
woodTiers[#woodTiers + 1] = {
    name = "spruce-sapling",
    ingredients = {{previousTier.name, 10}},
    result_count = previousTier.result_count,
}

previousTier = woodTiers[#woodTiers]
woodTiers[#woodTiers + 1] = {
    name = "cedar-sapling",
    ingredients = {{previousTier.name, 10}},
    result_count = previousTier.result_count,
}

-- Tier 3: Advanced Game - Specialty Crafting and High-End Uses
previousTier = woodTiers[#woodTiers]
woodTiers[#woodTiers + 1] = {
    name = "mahogany-sapling",
    ingredients = {{previousTier.name, 10}},
    result_count = previousTier.result_count,
}

previousTier = woodTiers[#woodTiers]
woodTiers[#woodTiers + 1] = {
    name = "teak-sapling",
    ingredients = {{previousTier.name, 10}},
    result_count = previousTier.result_count,
}

previousTier = woodTiers[#woodTiers]
woodTiers[#woodTiers + 1] = {
    name = "walnut-sapling",
    ingredients = {{previousTier.name, 10}},
    result_count = previousTier.result_count,
}

previousTier = woodTiers[#woodTiers]
woodTiers[#woodTiers + 1] = {
    name = "ash-sapling",
    ingredients = {{previousTier.name, 10}},
    result_count = previousTier.result_count,
}

previousTier = woodTiers[#woodTiers]
woodTiers[#woodTiers + 1] = {
    name = "ebony-sapling",
    ingredients = {{previousTier.name, 10}},
    result_count = previousTier.result_count,
}

previousTier = woodTiers[#woodTiers]
woodTiers[#woodTiers + 1] = {
    name = "rose-sapling",
    ingredients = {{previousTier.name, 10}},
    result_count = previousTier.result_count,
}

previousTier = woodTiers[#woodTiers]
woodTiers[#woodTiers + 1] = {
    name = "bamboo-sapling",
    ingredients = {{previousTier.name, 10}},
    result_count = previousTier.result_count,
}

previousTier = woodTiers[#woodTiers]
woodTiers[#woodTiers + 1] = {
    name = "balsa-sapling",
    ingredients = {{previousTier.name, 10}},
    result_count = previousTier.result_count,
}

previousTier = woodTiers[#woodTiers]
woodTiers[#woodTiers + 1] = {
    name = "cherry-sapling",
    ingredients = {{previousTier.name, 10}},
    result_count = previousTier.result_count,
}

previousTier = woodTiers[#woodTiers]
woodTiers[#woodTiers + 1] = {
    name = "acacia-sapling",
    ingredients = {{previousTier.name, 10}},
    result_count = previousTier.result_count,
}

previousTier = woodTiers[#woodTiers]
woodTiers[#woodTiers + 1] = {
    name = "olive-sapling",
    ingredients = {{previousTier.name, 10}},
    result_count = previousTier.result_count,
}

-- Convert woodTiers to data:extend format
local recipes = {}
for _, tier in ipairs(woodTiers) do
    table.insert(recipes, {
        type = "recipe",
        name = tier.name,
        category = "crafting",
        energy_required = 0.5,
        ingredients = tier.ingredients,
        result = tier.name,
        result_count = tier.result_count,
    })
end

data:extend(recipes)
data:extend({
-- Tier 1: Basic Applications
    -- Wooden Planks
    {
        type = "recipe",
        name = "ab-wooden-planks",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wood", 1}},
        result = "wooden-planks",
        result_count = 4,
    },
-- Tier 2: Intermediate Applications

-- Tier 3: Advanced Applications
    -- Wooden Tools
    {
        type = "recipe",
        name = "ab-wooden-tools",
        category = "crafting",
        energy_required = 1,
        ingredients = {{"wooden-planks", 2}},
        result = "wooden-tools",
        result_count = 1,
    },
-- Tier 1: Basic Applications
-- Tier 2: Intermediate Applications
    -- Paper
    {
        type = "recipe",
        name = "ab-paper",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 1}},
        result = "paper",
        result_count = 2,
    },
    -- Wooden Chest
    {
        type = "recipe",
        name = "ab-wooden-chest",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 4}},
        result = "wooden-chest",
        result_count = 1,
    },
-- Tier 3: Advanced Applications
    -- Wooden Fence
    {
        type = "recipe",
        name = "ab-wooden-fence",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 4}},
        result = "wooden-fence",
        result_count = 2,
    },

-- Tier 4: Luxurious and High-Tech Applications
    -- Wooden Flooring
    {
        type = "recipe",
        name = "ab-wooden-flooring",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 4}},
        result = "wooden-flooring",
        result_count = 4,
    },
    -- Wooden Lamp
    {
        type = "recipe",
        name = "ab-wooden-lamp",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 2}},
        result = "wooden-lamp",
        result_count = 1,
    },
-- Tier 5: Exotic and Rare Applications
    -- Wooden Armor
    {
        type = "recipe",
        name = "ab-wooden-armor",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 10}},
        result = "wooden-armor",
        result_count = 1,
    },
    -- Wooden Sword
    {
        type = "recipe",
        name = "ab-wooden-sword",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 4}},
        result = "wooden-sword",
        result_count = 1,
    },
-- Tier 1: Basic Applications
    -- Wooden Gear
    {
        type = "recipe",
        name = "ab-wooden-gear",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-planks", 2}},
        result = "wooden-gear",
        result_count = 1,
    },
    -- Wooden Burner Inserter
    {
        type = "recipe",
        name = "ab-wooden-burner-inserter",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 2}},
        result = "burner-inserter",
        result_count = 1,
    },
-- Tier 2: Intermediate Applications
    -- Wooden Assembler
    {
        type = "recipe",
        name = "ab-wooden-assembler",
        category = "crafting",
        icon = "__base__/graphics/icons/assembling-machine-1.png",
        icon_size = 64,
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 10}},
        result = "assembling-machine-1",
        result_count = 1,
    },
    {
        type = "recipe",
        name = "ab-stone-assembler",
        category = "crafting",
        icon = "__base__/graphics/icons/assembling-machine-2.png",
        icon_size = 64,
        energy_required = 10,
        ingredients = {{"plywood", 10}, {"hardwood-planks", 5}},
        result = "assembling-machine-2",
        result_count = 1,
        enabled = false
    },
    -- Wooden Inserter
    {
        type = "recipe",
        name = "ab-wooden-inserter",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 5}, {"fiberboard-circuitry", 2}},
        result = "wooden-inserter",
        result_count = 1,
        enabled = false
    },
    -- Slow Filter Inserter
    {
        type = "recipe",
        name = "ab-slow-filter-inserter",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-inserter", 1}, {"fiberboard-circuitry", 2}, {"hardwood-planks", 3}},
        result = "slow-filter-inserter",
        result_count = 1,
        enabled = false
    },
    -- Wooden Transport Belt
    {
        type = "recipe",
        name = "ab-wooden-transport-belt",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 2}},
        result = "wooden-transport-belt",
        result_count = 1,
    },
    -- Wooden Underground Belt
    {
        type = "recipe",
        name = "ab-wooden-underground-belt",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 10}},
        result = "wooden-underground-belt",
        result_count = 2,
    },
    -- Wooden Splitter
    {
        type = "recipe",
        name = "ab-wooden-splitter",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 5}},
        result = "wooden-splitter",
        result_count = 1,
    },
-- Tier 3: Advanced Applications

    -- Wooden Electric Pole
    {
        type = "recipe",
        name = "ab-wooden-electric-pole",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-planks", 5}},
        result = "small-electric-pole",
        result_count = 1,
    },
    -- Wooden Storage Tank
    {
        type = "recipe",
        name = "ab-wooden-storage-tank",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 20}},
        result = "wooden-storage-tank",
        result_count = 1,
    },
    {
      type = "recipe",
      name = "ab-organic-mulch",
      category = "crafting",
      energy_required = 5,
      ingredients = {
        {"wood-chips", 4}
      },
      result = "organic-mulch",
      result_count = 4,
      enabled = false -- Requires technology to unlock
    },-- Sawdust (Byproduct of sawmilling)
    {
        type = "recipe",
        name = "ab-sawdust",
        category = "ab-sawmilling",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 2}},
        result = "sawdust",
        result_count = 4,
    },
    
    -- Wood Chips (From sawmilling various woods)
    {
        type = "recipe",
        name = "ab-wood-chips",
        category = "ab-sawmilling",
        energy_required = 1,
        ingredients = {{"wooden-boards", 2}},
        result = "wood-chips",
        result_count = 3,
    },
    
    -- Wood Pellets (Compressed wood chips for fuel or other uses)
    {
        type = "recipe",
        name = "ab-wood-pellets",
        category = "ab-wood-refining",
        energy_required = 2,
        ingredients = {{"wood-chips", 5}},
        result = "wood-pellets",
        result_count = 2,
    },
    
    -- Wood Veneer (Thin layers of wood for plywood or fine furniture)
    {
        type = "recipe",
        name = "ab-wood-veneer",
        category = "ab-wood-refining",
        energy_required = 2,
        ingredients = {{"wooden-boards", 1}},
        result = "wood-veneer",
        result_count = 2,
    },
    
    -- Plywood (Layers of wood veneer glued together)
    {
        type = "recipe",
        name = "ab-plywood",
        category = "ab-wood-refining",
        energy_required = 3,
        ingredients = {{"wood-veneer", 3}},
        result = "plywood",
        result_count = 1,
    },
    
    -- Fiberboard (Made from sawdust and wood chips, pressed into boards)
    {
        type = "recipe",
        name = "ab-fiberboard",
        category = "ab-wood-refining",
        energy_required = 2,
        ingredients = {
            {"plywood", 2},
            {"wood-chips", 10},
        },
        result = "fiberboard",
        result_count = 1,
    },
    
    -- Hardwood Planks (Higher quality planks for construction and crafting)
    {
        type = "recipe",
        name = "ab-hardwood-planks",
        category = "ab-sawmilling",
        energy_required = 1.5,
        ingredients = {
            {"wooden-boards", 4},
            {"wood-veneer", 2},
        },
        result = "hardwood-planks",
        result_count = 1,
    },
    
    -- Softwood Lumber (Common construction material)
    {
        type = "recipe",
        name = "ab-softwood-lumber",
        category = "ab-sawmilling",
        energy_required = 1,
        ingredients = {{"wooden-boards", 1}},
        result = "softwood-lumber",
        result_count = 2,
    },
    -- Charcoal (Created by pyrolysis of wood in a low-oxygen environment)
    {
        type = "recipe",
        name = "ab-charcoal",
        category = "ab-biofuel-production",
        energy_required = 15,
        ingredients = {{"wooden-boards", 8}},
        result = "charcoal",
        result_count = 2,
    },
    
    -- Activated Carbon (Produced from charcoal, used for filtration)
    {
        type = "recipe",
        name = "ab-activated-carbon",
        category = "ab-composting",
        energy_required = 60,
        ingredients = {
            {"charcoal", 2},
            {type="fluid", name="water", amount=50},
        },
        result = "activated-carbon",
        result_count = 2,
    },
    
    -- Wood Alcohol (Methanol) (Produced via destructive distillation of wood)
    {
        type = "recipe",
        name = "ab-wood-alcohol",
        category = "ab-composting",
        energy_required = 60,
        ingredients = {
            {"wood-chips", 10},
        },
        results = {
            {type="fluid", name="wood-alcohol", amount=30},
        },
    },
    
    -- Cellulose (Extracted from wood chips for various industrial uses)
    {
        type = "recipe",
        name = "ab-cellulose",
        category = "ab-wood-refining",
        energy_required = 5,
        ingredients = {
            {"wood-chips", 5},
        },
        result = "cellulose",
        result_count = 4,
    },
    
    -- Lignin (Byproduct of cellulose production, used in making adhesives)
    {
        type = "recipe",
        name = "ab-lignin",
        category = "ab-wood-refining",
        energy_required = 5,
        ingredients = {
            {"wood-chips", 5},
        },
        result = "lignin",
        result_count = 2,
    },
    
    -- Resin (Extracted from certain types of wood, used in varnishes and adhesives)
    {
        type = "recipe",
        name = "ab-resin",
        category = "ab-wood-refining",
        energy_required = 8,
        ingredients = {
            {"softwood-lumber", 5},
        },
        result = "resin",
        result_count = 3,
    },
    
    -- Wood Ash (Produced from burning wood residues, used in fertilizers and soaps)
    {
        type = "recipe",
        name = "ab-wood-ash",
        category = "smelting",
        energy_required = 10,
        ingredients = {
            {"sawdust", 10},
        },
        result = "wood-ash",
        result_count = 5,
    },
    
    -- Compost (Produced from organic waste materials, used as fertilizer)
    {
        type = "recipe",
        name = "ab-composting",
        category = "ab-composting",
        energy_required = 30,
        ingredients = {
            {"organic-mulch", 5},
            {"wood-chips", 5},
            {"wood-ash", 2},
        },
        result = "ab-organic-compost",
        result_count = 10,
    },
    {
        type = "recipe",
        name = "ab-wood-growth",
        category = "ab-greenhouse",
        icon = "__base__/graphics/icons/tree-01.png",
        icon_size = 64,
        main_product = "wood",  -- "raw-wood" is the default product of trees.
        energy_required = 30,
        ingredients = {{"sapling", 1}},
        results = {
            {type = "item", name = "wood", amount = 10}, 
            {type = "item", name = "sapling", amount = 1}, 
            {type = "item", name = "sapling", 1, probability = 0.01, amount_min = 1, amount_max = 1}
        },  -- Returns 1 sapling to continue the cycle of growth.
    },
    {
        type = "recipe",
        name = "ab-wood-tar",
        category = "ab-extraction",
        energy_required = 10,
        ingredients = {{"oak-wood", 4}, {"pine-wood", 4}},
        result = "wood-tar",
        result_count = 2,
    },
    {
        type = "recipe",
        name = "ab-essential-oils",
        category = "ab-extraction",
        energy_required = 5,
        ingredients = {{"birch-wood", 2}, {"poplar-wood", 2}},
        results = {
            {type="fluid", name="essential-oils", amount=50},
        },
    },
    {
        type = "recipe",
        name = "ab-biofuel",
        category = "ab-composting",
        energy_required = 15,
        ingredients = {
            {type="fluid", name="essential-oils", amount=100},
            {"wood-pulp", 10},
        },
        results = {
            {type="fluid", name="bio-oil", amount=100},
        },
    },
    --Science Stuff
    {
        type = "recipe",
        name = "ab-research-kits",
        category = "advanced-crafting",
        energy_required = 30,
        ingredients = {
            {"wood-tar", 2},
            {type="fluid", name="essential-oils", amount=50},
            {"medicinal-extracts", 1},
        },
        result = "research-kit",
        result_count = 5,
        enabled = false
    },
    {
        type = "recipe",
        name = "ab-biocomposite-research-kit",
        category = "advanced-crafting",
        energy_required = 30,
        ingredients = {
            {"carbon-fiber", 5},
            {"concentrated-birch-extract", 2},
            {"fiberboard", 5}  -- Replacing advanced circuits with a sustainable alternative.
        },
        result = "biocomposite-research-kit",
        result_count = 1,
        enabled = false
    },
    --Material Components
    {
        type = "recipe",
        name = "ab-wooden-boards",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-planks", 2}},
        result = "wooden-boards",
        result_count = 2,
    },
    {
        type = "recipe",
        name = "ab-wooden-frames",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 2}},
        result = "wooden-frames",
        result_count = 2,
    },
    {
        type = "recipe",
        name = "ab-wooden-panels",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 2}},
        result = "wooden-panels",
        result_count = 2,
    },
    {
        type = "recipe",
        name = "ab-wooden-beams",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 2}},
        result = "wooden-beams",
        result_count = 2,
    },
    {
        type = "recipe",
        name = "ab-wooden-joists",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 2}},
        result = "wooden-joists",
        result_count = 2,
    },
    {
        type = "recipe",
        name = "ab-wooden-trusses",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 2}},
        result = "wooden-trusses",
        result_count = 2,
    },
    {
        type = "recipe",
        name = "ab-wooden-rafters",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"wooden-boards", 2}},
        result = "wooden-rafters",
        result_count = 2,
    },

    --Advanced Stuff
    {
        type = "recipe",
        name = "ab-carbon-fiber",
        category = "ab-advanced-wood-refining",
        energy_required = 20,
        ingredients = {{"lignin", 10}},
        result = "carbon-fiber",
        result_count = 2,
    },
    {
        type = "recipe",
        name = "ab-fiberboard-circuitry",
        category = "advanced-crafting",
        energy_required = 20,
        ingredients = {
            {"fiberboard", 10},
            {"resin", 5},
            {"lignin", 2},
            {type="fluid", name="wood-alcohol", amount=50}  -- Utilizing wood alcohol as a solvent or cleaning agent in the manufacturing process.
        },
        result = "fiberboard-circuitry",
        result_count = 5,
        enabled = false  -- Requires unlocking through research.
    },
    -- Medicinal Extracts
    {
        type = "recipe",
        name = "ab-medicinal-extracts",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "chemistry",
        energy_required = 5,
        ingredients = {
            {"wood-pulp", 5},
            {type = "fluid", name = "wood-alcohol", amount = 10},
            {"paper", 2}
        },
        results = {
            {"medicinal-extracts", 1}
        },
        crafting_machine_tint = {
            primary = {r = 0.2, g = 0.8, b = 0.2, a = 0.5},
            secondary = {r = 0.2, g = 0.8, b = 0.2, a = 0.5},
            tertiary = {r = 0.2, g = 0.8, b = 0.2, a = 0.5},
            quaternary = {r = 0.2, g = 0.8, b = 0.2, a = 0.5},
        },
    },         
    --Stone Age
    -- Crushing
    {
        type = "recipe",
        name = "ab-crushing-stone",
        icon = "__base__/graphics/icons/stone.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "ab-crushing",
        energy_required = 2,
        main_product = "gravel",
        ingredients = {{"stone", 5}},
        results = {{"gravel", 3}, {"stone-dust", 2}},
    },
    
    -- Grinding
    {
        type = "recipe",
        name = "ab-grinding-stone",
        icon = "__base__/graphics/icons/stone.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "ab-grinding",
        energy_required = 3,
        ingredients = {{"gravel", 5}},
        result = "fine-stone-powder",
        result_count = 4,
    },
    
    -- Calcination
    {
        type = "recipe",
        name = "ab-calcination",
        icon = "__base__/graphics/icons/stone.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "smelting",
        energy_required = 5,
        ingredients = {{"stone", 10}},
        result = "quicklime",
        result_count = 5,
    },
    
    -- Hydration
    {
        type = "recipe",
        name = "ab-hydration",
        icon = "__base__/graphics/icons/stone.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "chemistry",
        energy_required = 1,
        ingredients = {{"quicklime", 2}, {type="fluid", name="water", amount=50}},
        result = "slaked-lime",
        result_count = 2,
    },
    
    -- Carbonation
    {
        type = "recipe",
        name = "ab-carbonation",
        icon = "__base__/graphics/icons/stone.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "chemistry",
        energy_required = 4,
        ingredients = {{type="item", name="slaked-lime", amount=3}, {type="fluid", name="wood-alcohol", amount=10}},
        result = "precipitated-calcium-carbonate",
        result_count = 3,
    },
-- Stone Blending
{
    type = "recipe",
    name = "ab-stone-blending",
    icon = "__base__/graphics/icons/stone.png",
    icon_size = 64, icon_mipmaps = 4,
    category = "ab-blending",
    energy_required = 5,
    ingredients = {
        {"gravel", 10},
        {"stone-dust", 5},
        {"fine-stone-powder", 3},
    },
    result = "blended-stone",
    result_count = 10,
},

-- Stone Processing
{
    type = "recipe",
    name = "ab-stone-processing",
    icon = "__base__/graphics/icons/stone.png",
    icon_size = 64, icon_mipmaps = 4,
    category = "ab-processing",
    energy_required = 10,
    ingredients = {
        {"blended-stone", 10},
        {"quicklime", 5},
        {"slaked-lime", 2},
    },
    result = "processed-stone",
    result_count = 10,
},

-- Stone Refining
{
    type = "recipe",
    name = "ab-stone-refining",
    icon = "__base__/graphics/icons/stone.png",
    icon_size = 64, icon_mipmaps = 4,
    category = "ab-refining",
    energy_required = 15,
    ingredients = {
        {"processed-stone", 10},
        {"precipitated-calcium-carbonate", 3},
    },
    result = "refined-stone",
    result_count = 10,
},
-- Limestone Production
{
    type = "recipe",
    name = "ab-limestone-production",
    icon = "__base__/graphics/icons/stone.png",
    icon_size = 64, icon_mipmaps = 4,
    category = "ab-chemistry",
    energy_required = 5,
    ingredients = {
        {"processed-stone", 10},
        {"refined-stone", 5},
        {type="fluid", name="water", amount=50},
    },
    result = "limestone",
    result_count = 1,
},

-- Limestone Crushing
{
    type = "recipe",
    name = "ab-limestone-crushing",
    icon = "__base__/graphics/icons/stone.png",
    icon_size = 64, icon_mipmaps = 4,
    category = "ab-crushing",
    energy_required = 2,
    ingredients = {{"limestone", 1}},
    result = "crushed-limestone",
    result_count = 2,
},

-- Cement Production
{
    type = "recipe",
    name = "ab-cement-production",
    icon = "__base__/graphics/icons/concrete.png",
    icon_size = 64, icon_mipmaps = 4,
    category = "chemistry",
    energy_required = 5,
    ingredients = {{"crushed-limestone", 5}, {"clay", 2}, {type="fluid", name="water", amount=50}},
    result = "cement",
    result_count = 1,
},
{
    type = "recipe",
    name = "ab-clay-sorting",
    icon = "__base__/graphics/icons/stone.png",
    icon_size = 64, icon_mipmaps = 4,
    category = "ab-crushing",
    energy_required = 2,
    ingredients = {{"quicklime", 1}},
    result = "clay",
    result_count = 2,
},
-- Entities
-- Wood pipe
{
    type = "recipe",
    name = "ab-wood-pipe",
    category = "crafting",
    energy_required = 1,
    ingredients = {{"wooden-planks", 2}},
    result = "pipe",
    result_count = 1,
},
-- Machinery
-- Basic Tree Farm
{
    type = "recipe",
    name = "ab-basic-tree-farm",
    category = "crafting",
    energy_required = 5,
    ingredients = {
        {"processed-stone", 10},
        {"refined-stone", 5},
        {"pipe", 5},
        {"offshore-pump", 1},
    },
    result = "tree-farm",
    result_count = 1,
},

-- Useful Items
-- Wooden Fence
{
    type = "recipe",
    name = "ab-wooden-fence",
    category = "crafting",
    energy_required = 1,
    ingredients = {{"wooden-planks", 2}},
    result = "wooden-fence",
    result_count = 1,
},
-- Wooden Chest
{
    type = "recipe",
    name = "ab-wooden-chest",
    category = "crafting",
    energy_required = 1,
    ingredients = {{"wooden-planks", 4}},
    result = "wooden-chest",
    result_count = 1,
},

    --Entities
    -- Wood pipe
    {
        type = "recipe",
        name = "ab-wood-pipe",
        category = "crafting",
        energy_required = 1,
        ingredients = {{"wooden-planks", 2}},
        result = "pipe",
        result_count = 1,
    },
    -- pump
    {
        type = "recipe",
        name = "ab-wood-pump",
        category = "crafting",
        energy_required = 1,
        ingredients = {{"wood", 2},{"wooden-gear", 2}},
        result = "offshore-pump",
        result_count = 1,
    },
--Machinery
-- Basic Tree Farm
    {
        type = "recipe",
        name = "ab-basic-tree-farm",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"wooden-boards", 1}},
        result = "ab-basic-tree-farm",
        result_count = 1,
    },
    {
        type = "recipe",
        name = "ab-basic-lab",
        enabled = true,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"wooden-planks", 10}, {"wooden-gear", 10}},
        result = "lab",
        result_count = 1,
    },
    -- Basic Sawmill
    {
        type = "recipe",
        name = "ab-basic-sawmill",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"wooden-boards", 1}},
        result = "ab-basic-sawmill",
        result_count = 1,
    },
    -- Composter
    {
        type = "recipe",
        name = "ab-composter",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"wooden-boards", 1}},
        result = "ab-composter",
        result_count = 1,
    },
    -- Wood Worker
    {
        type = "recipe",
        name = "ab-wood-worker",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"wooden-boards", 1}},
        result = "ab-wood-worker",
        result_count = 1,
    },
    -- Wood Refinery
    {
        type = "recipe",
        name = "ab-wood-refinery",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"wooden-boards", 1}},
        result = "ab-wood-refinery",
        result_count = 1,
    },
    -- Charcoal Furnace
    {
        type = "recipe",
        name = "ab-charcoal-furnace",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wooden-boards", 5}},
        result = "ab-charcoal-furnace",
        result_count = 1,
    },
    -- Wood Gasifier
    {
        type = "recipe",
        name = "ab-wood-gasifier",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wooden-boards", 5}},
        result = "ab-wood-gasifier",
        result_count = 1,
    },
    -- Wood Distillery
    {
        type = "recipe",
        name = "ab-wood-distillery",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wooden-boards", 5}},
        result = "ab-wood-distillery",
        result_count = 1,
    },
    -- Wood Pyrolyzer
    {
        type = "recipe",
        name = "ab-wood-pyrolyzer",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wooden-boards", 5}},
        result = "ab-wood-pyrolyzer",
        result_count = 1,
    },
    --Chemical Plant
    {
        type = "recipe",
        name = "ab-chemical-plant",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wooden-boards", 5}},
        result = "chemical-plant",
        result_count = 1,
    },
    --Grindstone
    {
        type = "recipe",
        name = "ab-grindstone",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wooden-boards", 5}},
        result = "grindstone",
        result_count = 1,
    },
    --Crusher
    {
        type = "recipe",
        name = "ab-crusher",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wooden-boards", 5}},
        result = "ab-crusher",
        result_count = 1,
    },
    --Extractor
    {
        type = "recipe",
        name = "ab-extractor",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wooden-boards", 5}},
        result = "ab-extractor",
        result_count = 1,
    },
    --Bio-Reactor
    {
        type = "recipe",
        name = "ab-bio-reactor",
        enabled = true,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"stone-furnace", 1},{"bronze-pipe", 5}, {"copper-cable", 2}, {"fiberboard-circuitry", 2}, {"iron-gear-wheel", 4},{"iron-plate", 4}},
        result = "ab-bio-reactor",
        result_count = 1,
    },
    --Basic Bio Reactor
    {
        type = "recipe",
        name = "ab-basic-bio-reactor",
        enabled = true,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wood", 10}},
        result = "ab-basic-bio-reactor",
        result_count = 1,
    },
    --Bio-Refinery
    {
        type = "recipe",
        name = "ab-bio-refinery",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wood", 10}},
        result = "ab-bio-refinery",
        result_count = 1,
    },
    --Bio-Plastics Plant
    {
        type = "recipe",
        name = "ab-bio-plastics-plant",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wood", 10}},
        result = "ab-bio-plastics-plant",
        result_count = 1,
    },
    --Water Siphon
    {
        type = "recipe",
        name = "ab-water-siphon",
        enabled = false,
        category = "advanced-crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wood", 10}},
        result = "ab-water-siphon",
        result_count = 1,
    },
    --Hydrocyclone
    {
        type = "recipe",
        name = "ab-hydrocyclone",
        enabled = false,
        category = "advanced-crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wood", 10}},
        result = "ab-hydrocyclone",
        result_count = 1,
    },
    --Sluicer
    {
        type = "recipe",
        name = "ab-sluice-box",
        enabled = false,
        category = "advanced-crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wood", 10}},
        result = "ab-sluice-box",
        result_count = 1,
    },
    --Ore Filtration Unit
    {
        type = "recipe",
        name = "ab-basic-ore-filtration-unit",
        enabled = false,
        category = "advanced-crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wood", 10}},
        result = "ab-basic-ore-filtration-unit",
        result_count = 1,
    },
    --ore Pyrochamber
    {
        type = "recipe",
        name = "ab-ore-pyrochamber",
        enabled = false,
        category = "advanced-crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wood", 10}},
        result = "ab-ore-pyrochamber",
        result_count = 1,
    },
    --Basic Ore Clarifyer
    {
        type = "recipe",
        name = "ab-basic-ore-clarification-unit",
        enabled = false,
        category = "advanced-crafting",
        energy_required = 1,
        ingredients = {{"stone", 5}, {"wood", 10}},
        result = "ab-basic-ore-clarification-unit",
        result_count = 1,
    },
    --Fertilizer Beacon
    {
        type = "recipe",
        name = "ab-fertilizer-distributor",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"fiberboard-circuitry", 2}, {"wooden-frames", 2}, {"wooden-beams", 3}, {"wooden-panels", 6}},
        result = "ab-fertilizer-distributor",
        result_count = 1,
    },
    --Fertilizer
    {
        type = "recipe",
        name = "fertilizer",
        category = "ab-composting",
        energy_required = 20,
        ingredients = {
            {type = "item", name = "wood-ash", amount = 5},
            {type = "item", name = "organic-mulch", amount = 10},
            {type = "item", name = "wood-pulp", amount = 10},
        },
        result = "fertilizer",
        result_count = 10,
        enabled = true
    },
-- Fertilizer Usage
{
    type = "recipe",
    name = "consume-fertilizer",
    icon = "__base__/graphics/icons/landfill.png",
    icon_size = 64, icon_mipmaps = 4,
    enabled = true,
    category = "advanced-crafting",
    subgroup = "terrain",
    energy_required = 300,
    ingredients = {
        {type = "item", name = "fertilizer", amount = 2},
        {type = "fluid", name = "water", amount = 1000}
    },
    results = {}
},
    -- Wooden Boards
    {
        type = "recipe",
        name = "ab-wooden-boards",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        ingredients = {{"wood", 1}},
        result = "wooden-boards",
        result_count = 4,
    },
    --Ore Refinement
    {
        type = "recipe",
        name = "ab-sedimentary-sludge",
        icon = "__base__/graphics/icons//fluid/water.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "ab-water-siphoning",
        energy_required = 10,
        ingredients = {
            {type = "fluid", name = "water", amount = 1500}
        },
        results = {
            {type = "fluid", name = "sedimentary-sludge", amount = 200}
        }
    },
    {
        type = "recipe",
        name = "ab-sludge-sluicing",
        icon = "__base__/graphics/icons//fluid/water.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "ab-sluicing",
        energy_required = 10,
        ingredients = {{type = "fluid", name = "sedimentary-sludge", amount = 30}},
        results = {{type = "fluid", name = "mineralized-water", amount = 10}},
    },
    {
        type = "recipe",
        name = "ab-mineral-cyclone",
        icon = "__base__/graphics/icons//fluid/water.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "ab-hydrocycloning",
        subgroup = "ab-ore-refinery",
        energy_required = 25, 
        ingredients = {{type = "fluid", name = "mineralized-water", amount = 100}},
        results = {
            {type = "item", name = "mixed-ore-powder", probability = 0.02, amount = 1},
            {type = "fluid", name = "ore-waste-water", amount = 50}
        }
    },
    {
        type = "recipe",
        name = "ab-waste-cyclone",
        icon = "__base__/graphics/icons//fluid/water.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "ab-hydrocycloning",
        subgroup = "ab-ore-refinery",
        energy_required = 10,
        ingredients = {{type = "fluid", name = "ore-waste-water", amount = 20}},
        results = {
            {type = "fluid", name = "ore-slush", amount = 10},
            {type = "item", name = "mixed-ore-powder", probability = 0.02, amount = 1}
        }
    },
    {
        type = "recipe",
        name = "ab-slush-filtration",
        icon = "__base__/graphics/icons//fluid/water.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "ab-basic-ore-filtration",
        subgroup = "ab-ore-refinery",
        energy_required = 10,
        ingredients = {
            {type = "fluid", name = "ore-slush", amount = 10}
        },
        results = {
            {type = "fluid", name = "water", amount = 50},
            {type = "fluid", name = "ore-slurry", amount = 10},
            {type = "item", name = "mixed-ore-powder", probability = 0.02, amount = 1}
        }
    },
    {
        type = "recipe",
        name = "ab-ore-slurry-refining",
        icon = "__base__/graphics/icons//fluid/water.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "ab-ore-baking",
        subgroup = "ab-ore-refinery",
        energy_required = 10,
        ingredients = {
            {type = "fluid", name = "ore-slurry", amount = 10}
        },
        results = {
            {type = "fluid", name = "water", amount = 50},
            {type = "fluid", name = "ore-concentrate", amount = 10},
            {type = "item", name = "mixed-ore-powder", probability = 0.02, amount = 1}
        }
    },
    {
        type = "recipe",
        name = "ab-ore-concentrate-refining",
        icon = "__base__/graphics/icons//fluid/water.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "ab-basic-ore-clarification",
        subgroup = "ab-ore-refinery",
        energy_required = 10,
        ingredients = {
            {type = "fluid", name = "ore-concentrate", amount = 10}
        },
        results = {
            {type = "fluid", name = "water", amount = 50},
            {type = "item", name = "mixed-ore-powder", probability = 0.02, amount = 1}
        }
    },
    --Tin Ore
    {
        type = "recipe",
        name = "ab-tin-ore-refining",
        category = "ab-ore-refining",
        energy_required = 8,
        ingredients = {{"tin-ore", 2}},
        result = "tin-plate",
        result_count = 1,
    },
    --Copper Ore
    {
        type = "recipe",
        name = "ab-copper-ore-refining",
        category = "ab-ore-refining",
        energy_required = 8,
        ingredients = {{"copper-ore", 2}},
        result = "copper-plate",
        result_count = 1,
    },
    --Iron Ore
    {
        type = "recipe",
        name = "ab-iron-ore-refining",
        category = "ab-ore-refining",
        energy_required = 8,
        ingredients = {{"iron-ore", 2}},
        result = "iron-plate",
        result_count = 1,
    },
    --Bronze
    {
        type = "recipe",
        name = "ab-bronze-plate",
        category = "ab-ore-refining",
        energy_required = 8,
        ingredients = {{"copper-plate", 1}, {"tin-plate", 1}},
        result = "bronze-plate",
        result_count = 1,
    },
    {
        type = "recipe",
        name = "ab-bronze-pipe",
        category = "crafting",
        energy_required = 2,
        ingredients = {{"bronze-plate", 1}},
        result = "bronze-pipe",
        result_count = 2,
    },
    {
        type = "recipe",
        name = "ab-iron-gear",
        category = "crafting",
        energy_required = 2,
        ingredients = {{"iron-plate", 2}},
        result = "iron-gear-wheel",
        result_count = 1,
    },
    {
        type = "recipe",
        name = "ab-bronze-gear",
        category = "crafting",
        energy_required = 2,
        ingredients = {{"bronze-plate", 2}},
        result = "bronze-gear",
        result_count = 1,
    },
    {
        type = "recipe",
        name = "ab-bronze-rod",
        category = "crafting",
        energy_required = 2,
        ingredients = {{"bronze-plate", 1}},
        result = "bronze-rod",
        result_count = 2,
    },
    {
        type = "recipe",
        name = "ab-copper-wire",
        category = "crafting",
        energy_required = 0.5,
        ingredients = {{"copper-plate", 1}},
        result = "copper-cable",
        result_count = 2,
    },

})



local woodTypes = {"pine", "birch", "oak", "maple", "willow", "poplar", "cedar", "spruce", "ash", "hickory", "walnut", "mahogany", "teak", "ebony", "rose", "bamboo", "balsa", "cherry", "acacia", "olive"}

local woodGrowRecipes = {}
for _, woodType in ipairs(woodTypes) do
    table.insert(woodGrowRecipes, {
        type = "recipe",
        name = "ab-grow-" .. woodType .. "-tree",
        icon = "__base__/graphics/icons/tree-01.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "ab-greenhouse",
        subgroup = "ab-greenhousing",
        energy_required = 25,
        ingredients = {
            {type = "item", name = woodType.. "-sapling", amount = 1}
        },
        results = {
            {type = "item", name = woodType.. "-wood", amount = 10},
            {type = "item", name = woodType.. "-sapling", amount = 1},
            {type = "item", name = woodType.. "-sapling", amount = 1, probability = 0.01}
        },
        enabled = false -- Requires technology to unlock
    })
end

local woodPlanksRecipes = {}
for _, woodType in ipairs(woodTypes) do
    table.insert(woodPlanksRecipes, {
        type = "recipe",
        name = "ab-"..woodType.."-wood-planks",
        category = "ab-sawmilling",
        energy_required = 5,
        ingredients = {{woodType.."-wood", 1}},
        result = "wood-planks",
        result_count = 4,
        enabled = false -- Requires technology to unlock
    })
end
-- Wooden Boards
local woodBoardRecipes = {}
for _, woodType in ipairs(woodTypes) do
    table.insert(woodBoardRecipes, {
        type = "recipe",
        name = "ab-"..woodType.."-wood-boards",
        enabled = false,
        category = "ab-sawmilling",
        energy_required = 1,
        ingredients = {{woodType.."-wood", 1}},
        result = "wooden-boards",
        result_count = 4,
    })
end
local woodChipRecipes = {}
for _, woodType in ipairs(woodTypes) do
    table.insert(woodChipRecipes, {
        type = "recipe",
        name = "ab-wood-chips-"..woodType,
        enabled = false,
        category = "ab-sawmilling",
        energy_required = 1,
        ingredients = {{woodType.."-wood", 1}},
        result = "wood-chips",
        result_count = 4,
    })
end
local organicMulchRecipes = {}
for _, woodType in ipairs(woodTypes) do
    table.insert(organicMulchRecipes, {
        type = "recipe",
        name = "ab-organic-mulch-"..woodType.."-wood",
        enabled = false,
        category = "ab-composting",
        energy_required = 10,
        ingredients = {
            {woodType.. "-wood", 4},
            {"wood-chips", 20}
        },
        result = "organic-mulch",
        result_count = 8,
    })
end

local pulpRecipes = {}
for _, woodType in ipairs(woodTypes) do
    table.insert(pulpRecipes, {
        type = "recipe",
        name = "ab-"..woodType.."-wood-pulp",
        enabled = true,
        category = "crafting",
        energy_required = 5,
        ingredients = {{woodType.."-wood", 1}},
        result = "wood-pulp",
        result_count = 2,
    })
end

local oresToRefine = {"iron", "copper", "tin"}
local oreRefiningRecipes = {"oxidation", "desalination", "reduction", }
local oreRefiningCategories = {"ab-basic-ore-oxidation", "ab-basic-ore-desalination", "ab-basic-ore-reduction"}

local oreRecipes = {}
for i, ore in ipairs(oresToRefine) do
    local refiningRecipe = oreRefiningRecipes[i]
    local refiningCategory = oreRefiningCategories[i]
    table.insert(oreRecipes, {
        type = "recipe",
        name = "ab-" .. ore .. "-" .. refiningRecipe,
        category = refiningCategory,
        energy_required = 10,
        ingredients = {{"mixed-ore-powder", 1}},
        result = ore.."-ore",
        result_count = 2,
        enabled = true -- Requires technology to unlock
    })
end

data:extend(oreRecipes)

local fluids = {"wood-alcohol", "synthetic-biofuel", "bio-oil", "wood-gas", "wood-methanol", "wood-ethanol"}
local fuelValue = {
    ["wood-alcohol"] = 0.05,
    ["synthetic-biofuel"] = 0.5,
    ["bio-oil"] = 0.2,
    ["wood-gas"] = 0.2,
    ["wood-methanol"] = 0.1,
    ["wood-ethanol"] = 0.4
}

local biofuelRecipes = {}
for _, fluid in ipairs(fluids) do
    local result_count = math.floor(fuelValue[fluid] / 0.05)
    table.insert(biofuelRecipes, {
        type = "recipe",
        name = "ab-biofuel-" .. fluid,
        category = "ab-biofuel-production",
        energy_required = 4,
        ingredients = {
            {type = "fluid", name = fluid, amount = 10}
        },
        results = {{type = "fluid", name = "basic-biofuel", amount = result_count * 25}},
        enabled = true,
    })
end

data:extend(pulpRecipes)
data:extend(woodGrowRecipes)
data:extend(woodPlanksRecipes)
data:extend(woodBoardRecipes)
data:extend(woodChipRecipes)
data:extend(organicMulchRecipes)
data:extend(biofuelRecipes)