---------------------------------------------------------------------------------------------------
-- func: takegil <amount> <player>
-- desc: Removes the amount of gil from the given player.
---------------------------------------------------------------------------------------------------

local commandObj = {}
commandObj.cmdprops =
{
    permission = 3,
    parameters = "is"  -- Correct parameters order: integer followed by string
}

function error(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer("!takegil <amount> {player}")
end

commandObj.onTrigger = function(player, amount, target)
    -- validate amount
    amount = tonumber(amount)
    if (amount == nil or amount < 1) then
        error(player, "Invalid amount of gil.")
        return
    end

    -- validate target
    local targ
    if (target == nil or target == "") then
        targ = player
    else
        targ = GetPlayerByName(target)
        if (targ == nil) then
            error(player, string.format("Player named '%s' not found!", target))
            return
        end
    end

    -- validate and remove gil
    local oldAmount = targ:getGil()
    if (amount > oldAmount) then
        amount = oldAmount
    end
    targ:delGil(amount)
    player:printToPlayer(string.format("Removed %i gil from %s. They now have %i gil.", amount, targ:getName(), targ:getGil()))
end

return commandObj
