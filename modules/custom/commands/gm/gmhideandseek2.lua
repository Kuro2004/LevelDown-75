local commandObj = {}

commandObj.cmdprops = {
    permission = 3,
    parameters = 'i'
}

local npcLooks = {
    [1] = {name = "Doll, Model ID: 970", look = 970},
    [2] = {name = "Green Frog, Model ID: 1812", look = 1812},
    [3] = {name = "Tonberry King, Model ID: 1246", look = 1246},
    [4] = {name = "Big Mandy, Model ID: 738", look = 738},
    [5] = {name = "Imp, Model ID: 1727", look = 1727},
    [6] = {name = "Small Box, Model ID: 2331", look = 2331},
    [7] = {name = "Camp fire, Model ID: 2411", look = 2411},
    [8] = {name = "Pile of rocks, Model ID: 2777", look = 2777},
    [9] = {name = "Tree trunk, Model ID: 2780", look = 2780},
}

commandObj.onTrigger = function(player, selectedLook)
    if selectedLook == nil or npcLooks[selectedLook] == nil then
        player:printToPlayer("Please choose one of the following costumes !gmhideandseek2 #:", xi.msg.channel.SYSTEM_3)
        player:printToPlayer("Hint: Use !costume to preview the model IDs before selecting.", xi.msg.channel.SYSTEM_3) -- Added message for clarity
        
        for i = 1, #npcLooks do
            local look = npcLooks[i]
            player:printToPlayer(string.format("%d: %s", i, look.name), xi.msg.channel.SYSTEM_3)
        end
        return
    end

    local lookData = npcLooks[selectedLook]
    local look = lookData.look
    local namez = player:getName()
    local zoneOrInstanceObj = player:getZone()
    local instance = player:getInstance()
    if instance then
        zoneOrInstanceObj = instance
    end

    local npc = zoneOrInstanceObj:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'GM', -- The NPC will have this name, but it will be hidden.
        look = look,
        x = player:getXPos(),
        y = player:getYPos(),
        z = player:getZPos(),
        rotation = player:getRotPos(),
        widescan = 0,

        onTrigger = function(player, npc)
            local playerz = player:getName()
            player:printToArea(string.format('Congratulations %s, you have found the GM!!!!!!', playerz), xi.msg.channel.SYSTEM_3, 0, '')
            player:printToArea(string.format('Please see the GM Event NPC at the Base to claim your reward!', namez), xi.msg.channel.SYSTEM_3, 0, '')
            player:printToArea(string.format('Thank you to everyone who participated in the event!', namez), xi.msg.channel.SYSTEM_3, 0, '')
            player:setCharVar('[GMEvent]HS', 1)
            npc:setStatus(xi.status.DISAPPEAR)
        end,
    })

    if not npc then
        player:printToPlayer("Failed to create the GM NPC!", xi.msg.channel.SYSTEM_3)
        return
    end

    -- Hide the NPC's name.
    npc:hideName(true)

    -- Notify players about the event.
    player:printToArea(string.format('Hide and Seek has started, come find the GM in %s!', player:getZoneName()), xi.msg.channel.SYSTEM_3, 0, '')

    -- Optional cleanup for unused variables.
    utils.unused(npc)
end

return commandObj
