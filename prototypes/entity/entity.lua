local function deepcopy(orig) -- Since you don't have access to the util table
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

local function createEntity(name, category)
    local base = deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
    base.name = name
    base.icon = "__base__/graphics/icons/assembling-machine-1.png"
    base.icon_size = 64
    base.flags = {"placeable-neutral", "placeable-player", "player-creation"}
    base.minable = {mining_time = 0.2, result = name}
    base.max_health = 150
    base.crafting_categories = {category}
    base.crafting_speed = 1
    base.energy_usage = "120kW"
    base.energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05
    }
    base.animation = base.animation or base.animations
    base.subgroup = "production-machine"
    base.order = "a[tree-farm]"
    base.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
    base.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
    base.next_upgrade = nil
    return base
end

local function createChemical(name, category)
    local base = deepcopy(data.raw["assembling-machine"]["chemical-plant"])
    base.name = name
    base.icon = "__base__/graphics/icons/chemical-plant.png"
    base.icon_size = 64
    base.flags = {"placeable-neutral", "placeable-player", "player-creation"}
    base.minable = {mining_time = 0.2, result = name}
    base.max_health = 150
    base.crafting_categories = {category}
    base.crafting_speed = 1
    base.energy_usage = "300kW"
    base.energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05
    }
    base.animation = base.animation or base.animations
    base.subgroup = "production-machine"
    base.order = "a[tree-farm]"
    base.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
    base.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
    base.next_upgrade = nil
    return base
end

local function createFurnace(name, category)
  local base = deepcopy(data.raw["furnace"]["stone-furnace"])
  base.name = name
  base.icon = "__base__/graphics/icons/stone-furnace.png"
  base.icon_size = 64
  base.minable = {mining_time = 0.2, result = name}
  base.crafting_categories = {category}
  base.crafting_speed = 1
  base.energy_usage = "90kW"
  base.source_inventory_size = 1
  base.result_inventory_size = 1
  -- Other properties to adjust...
  return base
end

local function createCentrifuge(name, category)
  local base = deepcopy(data.raw["assembling-machine"]["centrifuge"])
  base.name = name
  base.icon = "__base__/graphics/icons/centrifuge.png"
  base.icon_size = 64
  base.minable = {mining_time = 0.2, result = name}
  base.crafting_categories = {category}
  base.crafting_speed = 1
  base.energy_usage = "350kW"
  -- Other properties to adjust...
  return base
end

local function createOilRefinery(name, category)
  local base = deepcopy(data.raw["assembling-machine"]["oil-refinery"])
  base.name = name
  base.icon = "__base__/graphics/icons/oil-refinery.png"
  base.icon_size = 64
  base.minable = {mining_time = 0.2, result = name}
  base.crafting_categories = {category}
  base.crafting_speed = 1
  base.energy_usage = "420kW"
  base.module_specification =
  {
      module_slots = 3,
      module_info_icon_shift = {0, 0.8}
  }
  -- Adjust animation or any other necessary properties...
  return base
end

data:extend({
  createEntity("ab-basic-tree-farm", "ab-greenhouse"),
  createEntity("ab-basic-sawmill", "ab-sawmilling"),
  createEntity("ab-composter", "ab-composting"),
  createEntity("ab-wood-worker", "ab-woodworking"),
  createEntity("ab-chemical-plant", "ab-chemistry"),
  createEntity("ab-grindstone", "ab-grinding"),
  createEntity("ab-crusher", "ab-crushing"),
  createEntity("ab-extractor", "ab-extraction"),
  createEntity("ab-blender", "ab-blending"),
  createEntity("ab-processor", "ab-processing"),
  createEntity("ab-wood-gasifier", "ab-wood-gasification"),
  createEntity("ab-wood-refinery", "ab-wood-refining"),
  createEntity("ab-bio-press", "ab-biofuel-production"),
  createEntity("ab-water-siphon", "ab-water-siphoning"),
  createEntity("ab-wooden-filtration-unit", "ab-wooden-filtration"),
  createEntity("ab-wooden-desalination-unit", "ab-wooden-desalination"),
  createEntity("ab-wooden-clarification-unit", "ab-wooden-clarification"),
  createEntity("ab-wooden-sterilization-unit", "ab-wooden-sterilization"),
  createEntity("ab-wooden-fermentation-unit", "ab-wooden-fermentation"),
  createEntity("ab-wooden-distillation-unit", "ab-wooden-distillation"),
  createEntity("ab-wooden-oxidation-unit", "ab-wooden-oxidation"),
  createEntity("ab-wooden-reduction-unit", "ab-wooden-reduction"),
  createEntity("ab-wooden-precipitation-unit", "ab-wooden-precipitation"),
  createEntity("ab-wooden-adsorption-unit", "ab-wooden-adsorption"),
  createEntity("ab-wooden-absorption-unit", "ab-wooden-absorption"),
  createEntity("ab-basic-ore-sorter", "ab-basic-ore-sorting"),
  createEntity("ab-basic-ore-crusher", "ab-basic-ore-crushing"),
  createEntity("ab-basic-ore-leaching-plant", "ab-basic-ore-leaching"),
  createEntity("ab-basic-ore-refinery", "ab-basic-ore-refining"),
  createEntity("ab-basic-ore-pyrolyzer", "ab-basic-ore-pyrolysis"),
  createEntity("ab-wood-pyrolyzer", "ab-wood-pyrolysis"),
  createEntity("ab-basic-ore-gasifier", "ab-basic-ore-gasification"),
  createEntity("ab-basic-ore-siphon", "ab-basic-ore-siphoning"),
  createEntity("ab-basic-ore-desalination-unit", "ab-basic-ore-desalination"),
  createEntity("ab-basic-ore-distillation-unit", "ab-basic-ore-distillation"),
  createEntity("ab-basic-ore-reduction-unit", "ab-basic-ore-reduction"),
  createEntity("ab-fertilizer-distributor", "fertilizer"),

  createChemical("ab-wood-distillery", "ab-wood-distilling"),
  createChemical("ab-bio-refinery", "ab-biofuel-production"),
  createChemical("ab-bio-plastics-plant", "ab-bio-plastic-production"),
  createChemical("ab-hydrocyclone", "ab-hydrocycloning"),
  createChemical("ab-basic-ore-filtration-unit", "ab-basic-ore-filtration"),
  createChemical("ab-basic-ore-clarification-unit", "ab-basic-ore-clarification"),
  createChemical("ab-sluice-box", "ab-sluicing"),
  createChemical("ab-ore-leaching-plant", "ab-ore-leaching"),
  createChemical("ab-ore-refinery", "ab-ore-refining"),
  createChemical("ab-ore-pyrochamber", "ab-ore-baking"),
  createChemical("ab-ore-gasifier", "ab-ore-gasification"),
  createChemical("ab-ore-distillery", "ab-ore-distilling"),
  createChemical("ab-ore-oxidation-plant", "ab-basic-ore-oxidation"),
  createChemical("ab-ore-reduction-plant", "ab-basic-ore-reduction"),
  createChemical("ab-refinery", "ab-refining"),
})



local charcoalEntity = deepcopy(data.raw["furnace"]["stone-furnace"])
charcoalEntity.name = "ab-charcoal-furnace"
charcoalEntity.icon = "__base__/graphics/icons/stone-furnace.png"
charcoalEntity.icon_size = 64
charcoalEntity.minable = {mining_time = 0.2, result = "ab-charcoal-furnace"}
charcoalEntity.crafting_categories = {"ab-biofuel-production"}
charcoalEntity.energy_usage = "20kW"
charcoalEntity.energy_source = {
    type = "burner",
    fuel_category = "chemical",
    effectivity = 1,
    fuel_inventory_size = 1,
    emissions_per_minute = 0.1
}
charcoalEntity.animation = charcoalEntity.animation or charcoalEntity.animations
charcoalEntity.next_upgrade = nil

data:extend({
    charcoalEntity
})

local steam_engine = table.deepcopy(data.raw["generator"]["steam-engine"])
steam_engine.name = "ab-bio-reactor"
steam_engine.icon = "__base__/graphics/icons/steam-engine.png"
steam_engine.icon_size = 64
steam_engine.icon_mipmaps = 4
steam_engine.minable = {mining_time = 0.2, result = "ab-bio-reactor"}
steam_engine.max_health = 300
steam_engine.max_power_output = "800kW"
steam_engine.fluid_usage_per_tick = 0.1
steam_engine.effectivity = 1
steam_engine.maximum_temperature = 25
steam_engine.burns_fluid = true
steam_engine.fluid_box = {
  base_area = 1,
  base_level = -1,
  pipe_connections = {
    {position = {0, 3}},
    {position = {0, -3}},
  },
  production_type = "input-output",
  filter = "basic-biofuel",
  minimum_temperature = 25,
  maximum_temperature = 25
}
steam_engine.energy_source = {
  type = "burner",
  fuel_category = "chemical",
  effectivity = 1,
  usage_priority = "primary-output",
  fuel_inventory_size = 1,
  emissions_per_minute = 0,
  smoke = {
    {
      name = "smoke",
      north_position = {0.7, -1.2},
      south_position = {0.7, -1.2},
      east_position = {0.7, -1.2},
      west_position = {0.7, -1.2},
      frequency = 20,
      starting_vertical_speed = 0.08,
      starting_frame_deviation = 60
    }
  }
}

-- Define the picture or animation of your steam engine here
steam_engine.picture = {
  filename = "__base__/graphics/entity/steam-engine/steam-engine.png",
  priority = "extra-high",
  width = 131,
  height = 99,
  shift = util.by_pixel(-0.5, -4.5),
  hr_version = {
    filename = "__base__/graphics/entity/steam-engine/hr-steam-engine.png",
    priority = "extra-high",
    width = 260,
    height = 196,
    shift = util.by_pixel(-0.5, -4.5),
    scale = 0.5
  }
}
data:extend({steam_engine})

local basic_bio_reactor = table.deepcopy(data.raw["burner-generator"]["burner-generator"])
basic_bio_reactor.name = "ab-basic-bio-reactor"
basic_bio_reactor.icon = "__base__/graphics/icons/nuclear-reactor.png"
basic_bio_reactor.icon_size = 64
basic_bio_reactor.icon_mipmaps = 4
basic_bio_reactor.minable = {mining_time = 0.2, result = "ab-basic-bio-reactor"}
basic_bio_reactor.max_health = 300
basic_bio_reactor.max_power_output = "150kW"
basic_bio_reactor.burner = {
    type = "burner",
    fuel_category = "chemical",
    effectivity = 1,
    fuel_inventory_size = 1,
    emissions_per_minute = 0, -- Adjust this value based on how clean you want the generator to be
    smoke = {
        {
            name = "smoke",
            north_position = {0.7, -1.2},
            south_position = {0.7, -1.2},
            east_position = {0.7, -1.2},
            west_position = {0.7, -1.2},
            frequency = 20,
            starting_vertical_speed = 0.08,
            starting_frame_deviation = 60
        }
    }
}

-- Define the picture or animation of your basic bio-reactor here
basic_bio_reactor.picture = {
    filename = "__base__/graphics/entity/burner-generator/burner-generator.png",
    priority = "extra-high",
    width = 131,
    height = 99,
    shift = util.by_pixel(-0.5, -4.5),
    hr_version = {
        filename = "__base__/graphics/entity/burner-generator/hr-burner-generator.png",
        priority = "extra-high",
        width = 260,
        height = 196,
        shift = util.by_pixel(-0.5, -4.5),
        scale = 0.5
    }
}

data:extend({basic_bio_reactor})


local woodBurner = table.deepcopy(data.raw["burner-generator"]["burner-generator"])
woodBurner.name = "ab-basic-wood-burner"
woodBurner.icon = "__base__/graphics/icons/nuclear-reactor.png"
woodBurner.icon_size = 64
woodBurner.icon_mipmaps = 4
woodBurner.minable = {mining_time = 0.2, result = "ab-basic-wood-burner"}
woodBurner.max_health = 300
woodBurner.max_power_output = "150kW"
woodBurner.burner = {
    type = "burner",
    fuel_category = "biological",
    effectivity = 0.1,
    fuel_inventory_size = 1,
    emissions_per_minute = 0, -- Adjust this value based on how clean you want the generator to be
    smoke = {
        {
            name = "smoke",
            north_position = {0.7, -1.2},
            south_position = {0.7, -1.2},
            east_position = {0.7, -1.2},
            west_position = {0.7, -1.2},
            frequency = 20,
            starting_vertical_speed = 0.08,
            starting_frame_deviation = 60
        }
    }
}

-- Define the picture or animation of your basic bio-reactor here
woodBurner.picture = {
    filename = "__base__/graphics/entity/burner-generator/burner-generator.png",
    priority = "extra-high",
    width = 131,
    height = 99,
    shift = util.by_pixel(-0.5, -4.5),
    hr_version = {
        filename = "__base__/graphics/entity/burner-generator/hr-burner-generator.png",
        priority = "extra-high",
        width = 260,
        height = 196,
        shift = util.by_pixel(-0.5, -4.5),
        scale = 0.5
    }
}

data:extend({woodBurner})

data:extend({
{
    type = "beacon",
    name = "invisible-beacon",
    icon = "__base__/graphics/icons/beacon.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "placeable-off-grid"},
    max_health = 200,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    crafting_categories = {"fertilizer"},
    crafting_speed = 1.25,
    energy_usage = "20kW",
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1
    },
    distribution_effectivity = 1,
    supply_area_distance = 6,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    module_specification = {
        module_slots = 2
    },
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    collision_box = {{0, 0}, {0, 0}},
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {
            {filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8},
            {filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8},
        },
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 1.5,
    },
}
})

local filter_inserter_copy = table.deepcopy(data.raw["inserter"]["filter-inserter"])
filter_inserter_copy.name = "slow-filter-inserter"
filter_inserter_copy.energy_per_movement = "5kJ"
filter_inserter_copy.energy_per_rotation = "5kJ"
filter_inserter_copy.rotation_speed = 0.01
filter_inserter_copy.extension_speed = 0.035
filter_inserter_copy.filter_count = 1
filter_inserter_copy.minable = {mining_time = 0.1, result = "slow-filter-inserter"}

data:extend({filter_inserter_copy})

local wooden_inserter_copy = table.deepcopy(data.raw["inserter"]["inserter"])
wooden_inserter_copy.name = "wooden-inserter"
wooden_inserter_copy.minable = {mining_time = 0.1, result = "wooden-inserter"}

data:extend({wooden_inserter_copy})

local wooden_storage_tank = table.deepcopy(data.raw["storage-tank"]["storage-tank"])
wooden_storage_tank.name = "wooden-storage-tank"
wooden_storage_tank.fluid_box.base_area = 25
wooden_storage_tank.minable = {mining_time = 0.1, result = "wooden-storage-tank"}

data:extend({wooden_storage_tank})

local wooden_lab = table.deepcopy(data.raw["lab"]["lab"])
wooden_lab.name = "wooden-lab"
wooden_lab.minable = {mining_time = 0.1, result = "wooden-lab"}
wooden_lab.crafting_speed = 0.5
wooden_lab.inputs = {"research-kit", "biocomposite-research-kit"}

data:extend({wooden_lab})