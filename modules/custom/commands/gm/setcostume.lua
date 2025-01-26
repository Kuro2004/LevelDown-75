-----------------------------------
-- func: costume
-- desc: Sets the targeted player's current costume.
-----------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 5,
    parameters = 'si' -- 's' for the target player name, 'i' for the costume ID
}

local function error(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('Usage: !costume <target> <costumeID>')
end

commandObj.onTrigger = function(player, targetName, costumeId)
    -- find the target player
    local target = GetPlayerByName(targetName)

    -- validate target
    if not target then
        error(player, 'Error: Target player not found.')
        return
    end

    -- validate costumeId
    if not costumeId or costumeId < 0 then
        error(player, 'Error: Invalid costume ID.')
        return
    end

    -- Apply costume or remove costume (costumeId = 0 removes costume)
    target:setCostume(costumeId)
    
    -- Provide feedback to the player
    if costumeId == 0 then
        player:printToPlayer(string.format('%s\'s costume has been removed.', targetName))
    else
        player:printToPlayer(string.format('%s is now wearing costume ID %d.', targetName, costumeId))
    end
end

return commandObj

