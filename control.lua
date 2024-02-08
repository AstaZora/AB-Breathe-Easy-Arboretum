script.on_init(function()
    if remote.interfaces["freeplay"] then
        remote.call("freeplay", "set_skip_intro", true)
        remote.call("freeplay", "set_disable_crashsite", true)
        remote.call("freeplay", "set_respawn_items", {}) -- Empty table means no items
        remote.call("freeplay", "set_created_items", {
            ["wood"] = 200,
            ["small-electric-pole"] = 4,
            ["lab"] = 1,
            ["modular-armor"] = 1,
            ["personal-roboport-equipment"] = 2,
            ["construction-robot"] = 20,
            ["solar-panel-equipment"] = 13,
            ["battery-equipment"] = 2
        })
    end
end)
    --[[ When the game is first started
    script.on_init(function()
        global.distributor = {}
    end)

    -- When the game is loaded from a save
    script.on_load(function()
        if not global.distributor then
            global.distributor = {}
        end
    end)
    
script.on_event(defines.events.on_tick, function(event)
    local distributor = game.get_entity_by_tag("ab-fertilizer-distributor")
    local crafting = distributor.is_crafting()
    
    if crafting then
        -- Create an invisible beacon entity with a 25% speed effect at a radius of 10
        -- Replace the placeholder values with the actual values you want to use
        local beacon = distributor.surface.create_entity({
            name = "invisible-beacon",
            position = distributor.position,
            force = distributor.force
        })
        beacon.destructible = false
        beacon.get_module_inventory().insert({name = "speed-module", count = 1})
        beacon.get_control_behavior().radius = 10
    else
        -- Set the radius of effect to 0
        local beacon = "invisible-beacon" -- Replace with the actual reference to the beacon entity
        beacon.get_control_behavior().radius = 0
    end
end)
]]--


