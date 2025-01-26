----------------------------------------
require("modules/module_utils")
require("scripts/globals/npc_util")
----------------------------------------

local m = Module:new("LionTHNPC")
local itemz =
{
[1] = { trade = {{16480, 1}}, reward = 1, var = '[LTH]_ThiefsK'}, -- Thiefs Knife - obtained by AH or kill NM
[2] = { trade = {{25679, 1}}, reward = 2, var = '[LTH]_WhiteRara'}, -- White Rarab Cap +1 obtained with login points
[3] = { trade = {{14914, 1}}, reward = 1, var = '[LTH]_AssassArm'}, -- Assassins Armlet +1 obtained via upgrade
}


m:addOverride('xi.zones.Lower_Jeuno.Zone.onInitialize', function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    local function thLevel(player)
      local thAdd = 0
        if player:getMainLvl() >= 90 then
           thAdd = thAdd +3
        elseif player:getMainLvl() >= 45 and player:getMainLvl() <= 89 then
           thAdd = thAdd +2
        elseif player:getMainLvl() >= 15 and player:getMainLvl() <= 44 then
           thAdd = thAdd +1
        end
      return thAdd
    end
    local Lion = zone:insertDynamicEntity({

        -- NPC or MOB
        objtype = xi.objType.NPC,
        name = 'Lion II',
        look = '00003c0000000000000000000000000000000000',
        x = -26.8398,
        y = -0.0000,
        z = -16.0688,
        rotation = 21,
        widescan = 1,
        onTrade = function(player, npc, trade)
            local item = trade:getItem(0)
            local retItem = item:getName(tostring())
            local thvalue = player:getCharVar('LionTH')
            if player:getCharVar('LionTH') == 4 then
                   player:printToPlayer('There is nothing more i can offer, My treasure Hunter has been perfected....', 0, npc:getPacketName())
            elseif player:getCharVar('LionTH') ~= 4 then
                   local tradedCombo = 0
                   if tradedCombo == 0 then
                        for k, v in pairs(itemz) do
                            if npcUtil.tradeHasExactly(trade, v.trade) then
                               tradedCombo = k
                                if tradedCombo == k and player:getCharVar(v.var) == 1 then
                                   player:printToPlayer('You have already traded me this item, come back when you have something', 0, npc:getPacketName())
                                   player:printToPlayer('new to offer me....', 0, npc:getPacketName())
                                elseif tradedCombo == k and player:getCharVar(v.var) ~= 1 then
                                       player:confirmTrade()
                                       player:setCharVar('LionTH', thvalue + v.reward)
                                       player:setCharVar(v.var, 1)
                                       player:printToPlayer(string.format('Thank you for the %s, My current Treasure Hunter is now %s', retItem, thvalue + v.reward + thLevel(player)), 0, npc:getPacketName())
                                end break
                            end
                        end
                   end
            if tradedCombo == 0 then              
               player:printToPlayer('Dont try to fool me, this isnt what i asked for....', 0, npc:getPacketName())
            end     
        end
    end,

        onTrigger = function(player, npc)
        local ThiefsK = player:getCharVar('[LTH]_ThiefsK')
        local WhiteRa = player:getCharVar('[LTH]_WhiteRara')
        local Assassi = player:getCharVar('[LTH]_AssassArm')

        if ThiefsK == 0 then
        ThiefsK = 'Thiefs Knife,'
        else
        ThiefsK = ''
        end
        if WhiteRa == 0 then
        WhiteRa = 'White Rarab Cap +1,'
        else
        WhiteRa = ''
        end
        if Assassi == 0 then
        Assassi = 'Assassins Armlet +1,'
        else
        Assassi = ''
        end

             if player:getCharVar('LionTH') <= 0 then
                player:printToPlayer('I dream of one day becoming a great Thief! To do that i need better armor.', 0, npc:getPacketName())
                player:printToPlayer('Give me some new armor and i will wear it proudly on the battlefield with you!.', 0, npc:getPacketName())
                player:printToPlayer('I will accept the following pieces to enhance my shady ways! ', 0, npc:getPacketName())
                player:printToPlayer('Thiefs Knife, White Rarab Cap +1, Assassins Armlet +1.', 0, npc:getPacketName())
             elseif player:getCharVar('LionTH') >= 1  and player:getCharVar('LionTH') <= 3 then
                    player:printToPlayer(string.format('I am on my way to becoming a legend, My current Treasure Hunter is %s,', player:getCharVar('LionTH') + thLevel(player)), 0, npc:getPacketName())
                    player:printToPlayer(string.format('I still hunting for the following items;'), 0, npc:getPacketName())
                    player:printToPlayer(string.format('%s %s %s %s %s %s %s ',Sandung, ThiefsK, WhiteRa, Assassi, Plunder, GorneyR, ChaacB), 0, npc:getPacketName())
             elseif player:getCharVar('LionTH') == 4 then
                    player:printToPlayer(string.format('You have made me a better Thief, My current Treasure Hunter is %s,', player:getCharVar('LionTH') + thLevel(player)), 0, npc:getPacketName())
                    player:printToPlayer(string.format('I do not belive i can exceed my curent limits', player:getCharVar('LionTH')), 0, npc:getPacketName())
                    player:setCharVar('[LTH]_ThiefsK', 0)
                    player:setCharVar('[LTH]_WhiteRara', 0)
                    player:setCharVar('[LTH]_AssassArm', 0)
             end
        end,
    })
    utils.unused(Lion)
end)


return m