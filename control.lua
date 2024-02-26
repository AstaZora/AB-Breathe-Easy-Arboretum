script.on_init(function()
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
end)




