require("prototypes.entity.entity")
require("prototypes.recipe.recipe")
require("prototypes.technologies.technologies")
require("prototypes.item.item")
require("prototypes.categories.recipe-category")


local function removeResource(resource)
	for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
		if
			preset
			and preset.basic_settings
			and preset.basic_settings.autoplace_controls
			and preset.basic_settings.autoplace_controls[resource]
		then
			data.raw["resource"][resource] = nil
			data.raw["autoplace-control"][resource] = nil
			preset.basic_settings.autoplace_controls[resource] = nil
		end
	end
end

removeResource("iron-ore")
removeResource("copper-ore")
removeResource("uranium-ore")
removeResource("coal")
removeResource("crude-oil")
removeResource("crude-oil")


--[[-- data.lua

local woodenBelt = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
local belt_speed = 5 / 480
woodenBelt.name = "wooden-transport-belt"
woodenBelt.speed = belt_speed
woodenBelt.belt_animation_set.animation_set.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entities/wooden-transports/wooden-transport-belt.png"
woodenBelt.belt_animation_set.animation_set.hr_version.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entities/wooden-transports/hr-wooden-transport-belt.png"
woodenBelt.minable = {mining_time = 0.1, result = "wooden-transport-belt"}
data:extend({woodenBelt})

local woodenSplitter = table.deepcopy(data.raw["splitter"]["splitter"])
woodenSplitter.name = "wooden-splitter"
woodenSplitter.speed = belt_speed
-- Assuming you have a specific structure for the splitter graphics, adjust these paths as necessary
woodenSplitter.structure.north.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entities/wooden-transports/wooden-splitter-north.png"
woodenSplitter.structure.east.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entities/wooden-transports/wooden-splitter-east.png"
woodenSplitter.structure.south.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entities/wooden-transports/wooden-splitter-south.png"
woodenSplitter.structure.west.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entities/wooden-transports/wooden-splitter-west.png"
woodenSplitter.minable = {mining_time = 0.1, result = "wooden-splitter"}
data:extend({woodenSplitter})

local woodenUnderground = table.deepcopy(data.raw["underground-belt"]["underground-belt"])
woodenUnderground.name = "wooden-underground-belt"
woodenUnderground.speed = belt_speed
-- Adjust the path for the underground belt graphics
woodenUnderground.structure.direction_in.sheet.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entities/wooden-transports/wooden-underground-belt-structure.png"
woodenUnderground.structure.direction_in.sheet.hr_version.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entities/wooden-transports/hr-wooden-underground-belt-structure.png"
woodenUnderground.structure.direction_out.sheet.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entities/wooden-transports/wooden-underground-belt-structure.png"
woodenUnderground.structure.direction_out.sheet.hr_version.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entities/wooden-transports/hr-wooden-underground-belt-structure.png"
woodenUnderground.minable = {mining_time = 0.1, result = "wooden-underground-belt"}
data:extend({woodenUnderground})
]]