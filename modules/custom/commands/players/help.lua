local commandObj = {}

commandObj.cmdprops =
{
    permission = 0,
    parameters = ""
}

commandObj.onTrigger = function(player)
    -- Print multiple messages to the player
	player:printToPlayer("Check the wiki for extra info on camps and travel")
	player:printToPlayer("https://ffxileveldown.fandom.com/wiki/LD_75_Server_Commands")
    player:printToPlayer("!hangout", 0x3)
    player:printToPlayer("!travel", 0x3)
    player:printToPlayer("!runaway", 0x3)
	player:printToPlayer("!dem", 0x3)
	player:printToPlayer("!holla", 0x3)
	player:printToPlayer("!mea", 0x3)
	player:printToPlayer("!yhoat", 0x3)
	player:printToPlayer("!altepa", 0x3)
	player:printToPlayer("!vahzl", 0x3)
	player:printToPlayer("!xpcamp", 0x3)
	player:printToPlayer("!xpcampm", 0x3)
	player:printToPlayer("!meritcamp", 0x3)
	player:printToPlayer("!shop", 0x3)
	player:printToPlayer("!signet", 0x3)
	player:printToPlayer("!drk", 0x3)
	player:printToPlayer("!home", 0x3)
	player:printToPlayer("!homereturn", 0x3)
	player:printToPlayer("!buff", 0x3)
	player:printToPlayer("!testdummy", 0x3)
	player:printToPlayer("!craftreward", 0x3)
	player:printToPlayer("!afshop", 0x3)
	player:printToPlayer("!getstats", 0x3)
	player:printToPlayer("!nmhuntone", 0x3)
	player:printToPlayer("!nmhunttwo", 0x3)
	
end

return commandObj

