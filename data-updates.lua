-- List of vanilla science pack names
local vanilla_science_packs = {
    "automation-science-pack",
    "logistic-science-pack",
    "military-science-pack",
    "chemical-science-pack",
    "production-science-pack",
    "utility-science-pack",
    "space-science-pack"
}

-- Disable recipes for vanilla science packs
for _, pack in ipairs(vanilla_science_packs) do
    if data.raw.recipe[pack] then
        data.raw.recipe[pack].enabled = false
    end
end

-- data-updates.lua
-- Disable all vanilla technologies
for name, tech in pairs(data.raw["technology"]) do
    if not (string.find(name, "^ab%-") or string.find(name, "^ac%-")) then
        tech.enabled = false -- Disable the technology
    end
end


for treeName, tree in pairs(data.raw["tree"]) do
    if tree.minable and tree.minable.results then
        -- Add or update the sapling loot
        local found = false
        for _, result in ipairs(tree.minable.results) do
            if result.name == "sapling" then
                result.probability = 0.001  -- 0.1% chance
                result.amount_min = 1
                result.amount_max = 1
                found = true
                break
            end
        end
        if not found then
            table.insert(tree.minable.results, {{name = "sapling", probability = 0.001, amount_min = 1, amount_max = 1}, {name = "raw-wood", 4}})
        end
    else
        -- Create minable table and add sapling loot
        tree.minable = {
            mining_time = 1,
            results = {
                {name = "sapling", probability = 0.001, amount_min = 1, amount_max = 1}
            }
        }
    end
end


--[[ Enable your custom technologies
data.raw["technology"]["ab-arboretum-basic-technology"].enabled = true
data.raw["technology"]["ab-advanced-tree-farm-technology"].enabled = true
data.raw["technology"]["ab-arboretum-sawmilling-technology"].enabled = true
data.raw["technology"]["ab-advanced-sawmilling-technology"].enabled = true
data.raw["technology"]["ab-arboretum-wooden-boards-technology"].enabled = true
data.raw["technology"]["ab-arboretum-organic-mulch-technology"].enabled = true
data.raw["technology"]["ab-composter-technology"].enabled = true
data.raw["technology"]["ab-wood-worker-technology"].enabled = true
data.raw["technology"]["ab-wood-refinery-technology"].enabled = true
data.raw["technology"]["ab-chemical-plant-technology"].enabled = true
data.raw["technology"]["ab-biomass-processing-technology"].enabled = true
data.raw["technology"]["ab-grindstone-technology"].enabled = true
data.raw["technology"]["ab-crusher-technology"].enabled = true
data.raw["technology"]["ab-charcoal-furnace-technology"].enabled = true
data.raw["technology"]["ab-advanced-charcoal-furnace-technology"].enabled = true

-- Add similar lines for any other custom technologies you've added
--]]
table.insert(data.raw["lab"]["lab"].inputs, "research-kit")
table.insert(data.raw["lab"]["lab"].inputs, "biocomposite-research-kit")