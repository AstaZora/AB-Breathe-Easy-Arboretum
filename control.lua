script.on_init(function()
    --game.print("on_init event triggered") -- Debug message
    if remote.interfaces["freeplay"] then
        remote.call("freeplay", "set_skip_intro", true)
        remote.call("freeplay", "set_disable_crashsite", true)
        remote.call("freeplay", "set_respawn_items", {}) -- Empty table means no items
        remote.call("freeplay", "set_created_items", {
            ["wood"] = 200,
            ["small-electric-pole"] = 4,
            ["wooden-lab"] = 1,
            ["modular-armor"] = 1,
            ["personal-roboport-equipment"] = 2,
            ["construction-robot"] = 20,
            ["solar-panel-equipment"] = 13,
            ["battery-equipment"] = 2
        })
    end
    global.assembling_machines = global.assembling_machines or {}
    global.beacons = global.beacons or {}
end)

script.on_configuration_changed(function(data)
    -- Initialize the global.assembling_machines and global.beacons tables if they don't exist
    global.assembling_machines = global.assembling_machines or {}
    global.beacons = global.beacons or {}
end)

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
    local entity = event.created_entity
    if entity and entity.name == 'ab-fertilizer-distributor' then
        local entity_box = entity.prototype.selection_box
        local entity_size = {x = entity_box.right_bottom.x - entity_box.left_top.x, y = entity_box.right_bottom.y - entity_box.left_top.y}

        local beacon_box = game.entity_prototypes['invisible-beacon'].selection_box
        local beacon_size = {x = beacon_box.right_bottom.x - beacon_box.left_top.x, y = beacon_box.right_bottom.y - beacon_box.left_top.y}

        local beacon = entity.surface.create_entity({
            name = 'invisible-beacon',
            position = {x = entity.position.x + (entity_size.x - beacon_size.x) / 2, y = entity.position.y + (entity_size.y - beacon_size.y) / 2},
            force = entity.force
        })
        if beacon then
            -- Copy modules from the machine to the beacon
            for name, count in pairs(entity.get_module_inventory().get_contents()) do
                beacon.get_module_inventory().insert({name = name, count = count})
            end
            -- Add the beacon to the global table
            table.insert(global.beacons, beacon)
        end
    end
end)

script.on_event(defines.events.on_tick, function(event)
    -- Run every 60 ticks (1 second)
    if event.tick % 60 == 0 then
        -- Check each beacon in the global table
        for i, beacon in ipairs(global.beacons) do
            if beacon.valid then
                -- Check if there's a machine at the beacon's position
                local machines = beacon.surface.find_entities_filtered({
                    name = 'ab-fertilizer-distributor',
                    area = {
                        {beacon.position.x - 1, beacon.position.y - 1},
                        {beacon.position.x + 1, beacon.position.y + 1}
                    }
                })
                -- If there's a machine and it's crafting, copy the modules
                if #machines > 0 and machines[1].is_crafting() then
                    for name, count in pairs(machines[1].get_module_inventory().get_contents()) do
                        beacon.get_module_inventory().insert({name = name, count = count})
                    end
                -- If there's a machine and it's not crafting, remove the modules
                elseif #machines > 0 and not machines[1].is_crafting() then
                    beacon.get_module_inventory().clear()
                -- If there's no machine, destroy the beacon and remove it from the global table
                elseif #machines == 0 then
                    beacon.destroy()
                    table.remove(global.beacons, i)
                end
            else
                -- If the beacon is not valid, remove it from the global table
                table.remove(global.beacons, i)
            end
        end
    end
end)