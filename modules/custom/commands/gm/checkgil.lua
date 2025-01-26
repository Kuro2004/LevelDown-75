-----------------------------------
-- func: checkgil <player>
-- desc: Checks and displays the specified player's gil amount. If no player is specified, checks the gil amount of the player using the command.
-----------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 1,
    parameters = 's'
}

local function error(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!checkgil (player)')
end

commandObj.onTrigger = function(player, target)
    -- validate target
    local targ
    if target == nil then
        targ = player
    else
        targ = GetPlayerByName(target)
        if targ == nil then
            error(player, string.format('Player named "%s" not found!', target))
            return
        end
    end

    -- check gil amount
    local gilAmount = targ:getGil()
    player:printToPlayer(string.format('%s has %i gil.', targ:getName(), gilAmount))
end

return commandObj
