-----------------------------------
-- func: givezonecurrency <itemNumber> <amount>
-- desc: Gives the specified amount of gil or items to all players in the same zone as the player who triggers the command.
-----------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 3,
    parameters = 'ii'
}

local function error(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('1 = Ancient Beastcoin, 2 = Alexandrite, 3 = Cotton Coin Purse, 4 = Linen Coin Purse, 5 = Gil <amount> for each.')
end

commandObj.onTrigger = function(player, itemNumber, amount)
    local zone = player:getZone()
    local playersInZone = zone:getPlayers()

    -- Validate the amount
    if amount == nil or amount < 1 then
        error(player, 'Invalid amount.')
        return
    end

    -- Define item mappings and custom messages
    local itemMappings = {
        [1] = {id = 1875, name = "Ancient Beastcoin", message = "You have been rewarded with Ancient Beastcoins!"},
        [2] = {id = 2488, name = "Alexandrite", message = "You have received precious Alexandrite!"},
        [3] = {id = 5735, name = "Cotton Coin Purse", message = "Enjoy your Cotton Coin Purses!"},
        [4] = {id = 5736, name = "Linen Coin Purse", message = "You have received Linen Coin Purses!"},
        [5] = {id = "gil", name = "gil", message = "You have been given gil!"}
    }

    local item = itemMappings[itemNumber]
    if item == nil then
        error(player, 'Invalid item number.')
        return
    end

    -- Check if we're giving gil
    if item.id == "gil" then
        -- Iterate through all players in the same zone
        for _, targ in pairs(playersInZone) do
            -- Add gil
            targ:addGil(amount)
            -- Inform each player about the gil addition
            targ:printToPlayer(string.format('Congratulations %s, %s You now have %i gil.', targ:getName(), item.message, targ:getGil()))
        end
        -- Inform the executing player
        player:printToPlayer(string.format('Gave %i gil to all players in the zone.', amount))

    -- Otherwise, we're giving an item
    else
        -- Iterate through all players in the same zone
        for _, targ in pairs(playersInZone) do
            -- Add the item
            targ:addItem(item.id, amount)
            -- Inform each player about the item addition
            targ:printToPlayer(string.format('Congratulations %s, %s', targ:getName(), item.message))
        end
        -- Inform the executing player
        player:printToPlayer(string.format('Gave %i %s to all players in the zone.', amount, item.name))
    end
end

return commandObj

