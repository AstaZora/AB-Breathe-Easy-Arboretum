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

--[[data.raw["generator"]["ab-bio-reactor"]["type"] = "burner-generator"
data.raw["burner-generator"]["ab-bio-reactor"] = data.raw["generator"]["ab-bio-reactor"]
data.raw["generator"]["ab-bio-reactor"] = nil
]]
