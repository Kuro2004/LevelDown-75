-- func: addcurrencyall <currency type> <amount>
-- desc: Adds the specified currency to all players in the same zone as the player who triggers the command
local commandObj = {}

commandObj.cmdprops =
{
    permission = 3,
    parameters = 'si'
}

local function error(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!reward <currency type> <amount> "example: login_points 100"')
end

commandObj.onTrigger = function(player, currency, amount)
    -- validate currency
    -- note: getCurrency does not ever return nil at the moment.  will work on this in future update.
    if currency == nil or player:getCurrency(currency) == nil then
        error(player, 'Invalid currency type.')
        return
    end

    -- validate amount
    if amount == nil or amount < 1 then
        error(player, 'Invalid amount.')
        return
    end

    local zone = player:getZone()
    local playersInZone = zone:getPlayers()

    -- Iterate through all players in the same zone
    for _, targ in pairs(playersInZone) do
        -- add currency
        targ:addCurrency(currency, amount)
        local newAmount = targ:getCurrency(currency)
        -- Inform each player about the currency addition
        targ:printToPlayer(string.format('Congratulations %s you have been given %i %s, for a total of %i.', targ:getName(), amount, currency, newAmount))
    end
end

return commandObj

