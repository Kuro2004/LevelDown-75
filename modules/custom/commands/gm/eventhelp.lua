---------------------------------------------------------------------------------------------------
-- func: !eventhelp
-- desc: Shows a list of events and reward commands
---------------------------------------------------------------------------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 1,
    parameters = ""
}

commandObj.onTrigger = function(player)
    -- Print multiple messages to GM
    player:printToPlayer "GM commands for events and rewards"
    player:printToPlayer("!gmhideseek - Hide and seek event", 0x3)
    player:printToPlayer("!gmnakedrun - Naked Run event", 0x3)
    player:printToPlayer("!gmflypigs - Pigs that attack the town", 0x3)
    player:printToPlayer("!whackamole - Wackamole event, Spawns moles where you are.", 0x3)
    player:printToPlayer("!reward - Zone wide Rewards, LVL 5 GM", 0x3)
    player:printToPlayer("!reward2 - Zone wide Rewards, LVL 5 GM", 0x3)
    player:printToPlayer("!eventnm - Spawn's a nm from list for the players to fight, Spawns where you are LVL 5 GM.", 0x3)
	
end

return commandObj

