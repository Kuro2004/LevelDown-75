---------------------------------------------------------------------------------------------------
-- func: addallhomepoints
-- desc: Adds all runic portals to a player.
---------------------------------------------------------------------------------------------------

local commandObj = {}
commandObj.cmdprops =
{
    permission = 3,
    parameters = "s"
}

-- Error function that says player's name before error printout
local function error(player, msg)
    player:printToPlayer(player:getName() .. ' ' .. msg)
    player:printToPlayer("!addallhomepoints {player}")
end

commandObj.onTrigger = function(player, target)
    -- validate target
    local targ
    if (target == nil) then
        targ = player
    else
        targ = GetPlayerByName(target)
        if (targ == nil) then
            error(player, string.format("the player named '%s' is not found!", target))
            return
        end
    end

    local travelType = xi.teleport.type.HOMEPOINT
    local index = 0
    local hpBit  = 0
    local hpSet  = 0

    while(index < 122) do
        hpBit  = index % 32
        hpSet  = math.floor(index / 32)

        if not targ:hasTeleport(travelType, hpBit, hpSet) then
            if(index ~= 67) then
                targ:addTeleport(travelType, hpBit, hpSet)
            end
        end

        index = index + 1
    end

    player:printToPlayer("Added all homepoints to player.")
end

return commandObj
