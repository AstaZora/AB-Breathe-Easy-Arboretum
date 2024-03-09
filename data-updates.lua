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

for name, tech in pairs(data.raw.technology) do
    if not (
        name:find("^ab%-") or
        name:find("^ac%-") or
        name:find("^ad%-") or
        name:find("^ah%-") or
        name:find("^aa%-") or
        name:find("^acg%-")
    ) then
        tech.enabled = false
        tech.hidden = true
    end
end


--Old Code, no longer necessary but keeping it incase it's useful later
--[[ Disable all vanilla technologies except those starting with ab-, ac-, or ad-
for name, tech in pairs(data.raw["technology"]) do
    -- Check if the technology starts with ab-, ac-, or ad-
    if name:find("^ab%-") or name:find("^ac%-") or name:find("^ad%-") then
        tech.enabled = true -- Enable the technology
        tech.visible_when_disabled = true -- Make it visible in the tech tree
    else
        tech.enabled = false -- Disable the technology
        tech.visible_when_disabled = false -- Make it invisible in the tech tree
    end
end]]


--[[for _, item in pairs(data.raw.item) do
    item.enabled = false
end
for _, recipe in pairs(data.raw.recipe) do
    recipe.enabled = false
end]]

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
                {name = "sapling", probability = 0.01, amount_min = 1, amount_max = 1}
            }
        }
    end
end

table.insert(data.raw["lab"]["lab"].inputs, "research-kit")
table.insert(data.raw["lab"]["lab"].inputs, "biocomposite-research-kit")

data.raw["beacon"]["invisible-beacon"].selectable_in_game = false