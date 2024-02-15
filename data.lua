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


--data.lua

local woodBelt = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
local belt_speed = 5 / 480

wood_belt_animation_set = 
{
	animation_set =
	{
		filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/wood-transport-belt.png",
		priority = "extra-high",
		width = 64,
		height = 64,
		frame_count = 32,
		direction_count = 20,
		hr_version =
		{
		filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/hr-wood-transport-belt.png",
		priority = "extra-high",
		width = 128,
		height = 128,
		scale = 0.5,
		frame_count = 32,
		direction_count = 20
		}
	},
	east_index = 1,
	west_index = 2,
	north_index = 3,
	south_index = 4,

	east_to_north_index = 5,
	north_to_east_index = 6,

	west_to_north_index = 7,
	north_to_west_index = 8,

	south_to_east_index = 9,
	east_to_south_index = 10,

	south_to_west_index = 11,
	west_to_south_index = 12,

	starting_south_index = 13,
	ending_south_index = 14,

	starting_west_index = 15,
	ending_west_index = 16,

	starting_north_index = 17,
	ending_north_index = 18,

	starting_east_index = 19,
	ending_east_index = 20
}

woodBelt.name = "wooden-transport-belt"
woodBelt.type = "transport-belt"
woodBelt.speed = belt_speed
woodBelt.structure_animation_speed_coefficient = 1/3
woodBelt.belt_animation_set.animation_set.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/wood-transport-belt.png"
woodBelt.belt_animation_set.animation_set.hr_version.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/hr-wood-transport-belt.png"
woodBelt.minable = {mining_time = 0.1, result = "wooden-transport-belt"}
woodBelt.related_underground_belt = "wooden-underground-belt"
data:extend({woodBelt})

local woodSplitter = table.deepcopy(data.raw["splitter"]["splitter"])
woodSplitter.name = "wooden-splitter"
woodBelt.type = "transport-belt"
woodSplitter.speed = belt_speed
woodSplitter.belt_animation_set = wood_belt_animation_set
woodSplitter.structure_animation_speed_coefficient = 1/3
-- Assuming you have a specific structure for the splitter graphics, adjust these paths as necessary
woodSplitter.structure.north.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/wood-splitter-north.png"
woodSplitter.structure.north.hr_version.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/hr-wood-splitter-north.png"
woodSplitter.structure.east.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/wood-splitter-east.png"
woodSplitter.structure.east.hr_version.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/hr-wood-splitter-east.png"
woodSplitter.structure.south.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/wood-splitter-south.png"
woodSplitter.structure.south.hr_version.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/hr-wood-splitter-south.png"
woodSplitter.structure.west.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/wood-splitter-west.png"
woodSplitter.structure.west.hr_version.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/hr-wood-splitter-west.png"
woodSplitter.structure_patch.east.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/wood-splitter-east-top-patch.png"
woodSplitter.structure_patch.east.hr_version.filename ="__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/hr-wood-splitter-east-top-patch.png"
woodSplitter.structure_patch.west.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/wood-splitter-west-top-patch.png"
woodSplitter.structure_patch.west.hr_version.filename ="__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/hr-wood-splitter-west-top-patch.png"
woodSplitter.minable = {mining_time = 0.1, result = "wooden-splitter"}
data:extend({woodSplitter})

local woodUnderground = table.deepcopy(data.raw["underground-belt"]["underground-belt"])
woodUnderground.name = "wooden-underground-belt"
woodBelt.type = "transport-belt"
woodUnderground.speed = belt_speed
woodUnderground.belt_animation_set = wood_belt_animation_set
woodUnderground.structure_animation_speed_coefficient = 1/3
-- Adjust the path for the underground belt graphics
woodUnderground.structure.direction_in.sheet.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/wood-underground-belt-structure.png"
woodUnderground.structure.direction_in.sheet.hr_version.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/hr-wood-underground-belt-structure.png"
woodUnderground.structure.direction_out.sheet.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/wood-underground-belt-structure.png"
woodUnderground.structure.direction_out.sheet.hr_version.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/hr-wood-underground-belt-structure.png"
woodUnderground.structure.direction_in_side_loading.sheet.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/wood-underground-belt-structure.png"
woodUnderground.structure.direction_in_side_loading.sheet.hr_version.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/hr-wood-underground-belt-structure.png"
woodUnderground.structure.direction_out_side_loading.sheet.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/wood-underground-belt-structure.png"
woodUnderground.structure.direction_out_side_loading.sheet.hr_version.filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/hr-wood-underground-belt-structure.png"
woodUnderground.minable = {mining_time = 0.1, result = "wooden-underground-belt"}
data:extend({woodUnderground})
