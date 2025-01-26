-----------------------------------
require("modules/module_utils")
require("scripts/globals/npc_util")
-----------------------------------
local m = Module:new("gmeventnpc")

local menu  = {}
local page1 = {}
local page2 = {}
local page3 = {}
local page4 = {}
local page5 = {}
local page6 = {}
local page7 = {}
local page8 = {}
local page9 = {}
local page10 = {}
local page11 = {}
local page12 = {}
local page13 = {}
local page14 = {}
local page15 = {}

local delaySendMenu = function(player)
      player:timer(50, function(playerArg)
        playerArg:customMenu(menu)
    end)
end

menu =
{
    title = 'What whould you like to do?',
    options = {},
}
page1 =
{
    {
        'Nothing!',
        function(player)
        end,
    },
    {
        'Hide and Seek Rewards',
         function(player)
         if player:getCharVar('[GMEvent]HS') == 1 then
                    menu.options = page2
                    delaySendMenu(player)
         else
            player:printToPlayer('You are not a winner in this event!. ', 0, 'General')                    
         end
         end,
    },
    {
        'Naked run to Jeuno',
         function(player)
         if player:getCharVar('[GMEvent]NR') == 1 then
                    menu.options = page9
                    delaySendMenu(player)
         else
            player:printToPlayer('You are not a winner in this event!. ', 0, 'General')                    
         end
         end,
    },
    --[[
    {
        'Another Event!',
         function(player)              
         end,
    },
    {
        'Next Page!',
         function(player)          
         end,
    },
    ]]--
}
page2 =
{
    {
        '1,000,000 Gil!',
         function(player)
           player:setCharVar('GMEitem', 65535 )
                    menu.options = page3
                    delaySendMenu(player)  
         end
    },
    {
        'Relic Upgrade Weapon!',
        function(player)
                    menu.options = page4
                    delaySendMenu(player)          
        end,
    },
    {
        'Level Craft to 100!',
        function(player)
                    menu.options = page7
                    delaySendMenu(player)          
        end,
    },
    {
        'Level Current job to 75!',
        function(player)
           player:setCharVar('GMEitem', 75 )
                    menu.options = page3
                    delaySendMenu(player)          
        end,
    },
    {
        'Back!',
        function(player)
                    menu.options = page1
                    delaySendMenu(player)           
        end,
    },
}
page3 =
{
    {
        'Yes',
         function(player)
         if player:getCharVar('GMEitem') == 65535 then
         npcUtil.giveItem(player, { { 65535, 1000000 } })
         player:setCharVar('GMEitem', 0)
         player:setCharVar('[GMEvent]HS', 0)
         end
         if player:getCharVar('GMEitem') == 75 then
         player:setLevel(75)
         player:setCharVar('GMEitem', 0)
         player:setCharVar('[GMEvent]HS', 0)
         end
         if player:getCharVar('GMEitem') == 18263 then
            npcUtil.giveItem(player, { { 18263, 1 } })
            player:setCharVar('GMEitem', 0)
            player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 18269 then
                npcUtil.giveItem(player, { { 18269, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 18275 then
                npcUtil.giveItem(player, { { 18275, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 18281 then
                npcUtil.giveItem(player, { { 18281, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 18287 then
                npcUtil.giveItem(player, { { 18287, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 18293 then
                npcUtil.giveItem(player, { { 18293, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 18305 then
                npcUtil.giveItem(player, { { 18305, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 18299 then
                npcUtil.giveItem(player, { { 18299, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 18311 then
                npcUtil.giveItem(player, { { 18311, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 18317 then
                npcUtil.giveItem(player, { { 18317, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 18323 then
                npcUtil.giveItem(player, { { 18323, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 18329 then
                npcUtil.giveItem(player, { { 18329, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 18347 then
                npcUtil.giveItem(player, { { 18347, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 18335 then
                npcUtil.giveItem(player, { { 18335, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 18341 then
                npcUtil.giveItem(player, { { 18341, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 15069 then
                npcUtil.giveItem(player, { { 15069, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         end
         if player:getCharVar('GMEitem') == 90000 then
            player:setSkillRank(49, 10)
            player:setSkillLevel(49, 1000)
            player:setCharVar('GMEitem', 0)
            player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90001 then
                player:setSkillRank(53, 10)
                player:setSkillLevel(53, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90002 then
                player:setSkillRank(51, 10)
                player:setSkillLevel(51, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90003 then
                player:setSkillRank(50, 10)
                player:setSkillLevel(50, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90004 then
                player:setSkillRank(56, 10)
                player:setSkillLevel(56, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90005 then
                player:setSkillRank(55, 10)
                player:setSkillLevel(55, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90006 then
                player:setSkillRank(54, 10)
                player:setSkillLevel(54, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90007 then
                player:setSkillRank(52, 10)
                player:setSkillLevel(52, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90008 then
                player:setSkillRank(48, 10)
                player:setSkillLevel(48, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         end

         end
    },
    {
        'No',
        function(player)
                    menu.options = page2
                    delaySendMenu(player)                 
        end,
    },
}
page4 = 
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Knuckles',
         function(player)
           player:setCharVar('GMEitem', 18263)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Knife',
         function(player)
           player:setCharVar('GMEitem', 18269)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Sword',
         function(player)
           player:setCharVar('GMEitem', 18275)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Claymore',
         function(player)
           player:setCharVar('GMEitem', 18281)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Axe',
         function(player)
           player:setCharVar('GMEitem', 18287)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Previouse Page',
         function(player)
           menu.options = page2
            delaySendMenu(player)
         end
    },
        {
        'Next Page',
         function(player)
            menu.options = page5
            delaySendMenu(player)
         end
    },
}
page5 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Chopper',
         function(player)
           player:setCharVar('GMEitem', 18293)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Scyth',
         function(player)
           player:setCharVar('GMEitem', 18305)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Lance',
         function(player)
           player:setCharVar('GMEitem', 18299)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Katana',
         function(player)
           player:setCharVar('GMEitem', 18311)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Tachi',
         function(player)
           player:setCharVar('GMEitem', 18317)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Previouse Page',
         function(player)
           menu.options = page4
            delaySendMenu(player)
         end
    },
        {
        'Next Page',
         function(player)
            menu.options = page6
            delaySendMenu(player)
         end
    },
}
page6 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Rod',
         function(player)
           player:setCharVar('GMEitem', 18323)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Staff',
         function(player)
           player:setCharVar('GMEitem', 18329)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Bow',
         function(player)
           player:setCharVar('GMEitem', 18347)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Gun',
         function(player)
           player:setCharVar('GMEitem', 18335)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Horn',
         function(player)
           player:setCharVar('GMEitem', 18341)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Shield',
         function(player)
           player:setCharVar('GMEitem', 15069)
           menu.options = page3
            delaySendMenu(player)
         end
    },
     {
        'Previouse Page',
         function(player)
           menu.options = page5
            delaySendMenu(player)
         end
    },
}
page7 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'WoodWorking',
         function(player)
           player:setCharVar('GMEitem', 90000)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'LeatherCraft',
         function(player)
           player:setCharVar('GMEitem', 90001)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'GoldSmithing',
         function(player)
           player:setCharVar('GMEitem', 90002)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Smithing',
         function(player)
           player:setCharVar('GMEitem', 90003)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Previouse Page',
         function(player)
           menu.options = page2
            delaySendMenu(player)
         end
    },
    {
        'Next Page',
         function(player)
           menu.options = page8
            delaySendMenu(player)
         end
    },
}
page8 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Cooking',
         function(player)
           player:setCharVar('GMEitem', 90004)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Alchemy',
         function(player)
           player:setCharVar('GMEitem', 90005)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'BoneCraft',
         function(player)
           player:setCharVar('GMEitem', 90006)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'ClothCraft',
         function(player)
           player:setCharVar('GMEitem', 90007)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Fishing',
         function(player)
           player:setCharVar('GMEitem', 90008)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Previouse Page',
         function(player)
           menu.options = page7
            delaySendMenu(player)
         end
    },
}
page9 =
{
    {
        '1,000,000 Gil!',
         function(player)
           player:setCharVar('GMEitem', 65535 )
                    menu.options = page10
                    delaySendMenu(player)  
         end
    },
    {
        'Relic Upgrade Weapon!', 
        function(player)
                    menu.options = page13
                    delaySendMenu(player)          
        end,
    },
    {
        'Level Craft to 100!',
        function(player)
                    menu.options = page11
                    delaySendMenu(player)          
        end,
    },
    {
        'Level Current job to 75!',
        function(player)
           player:setCharVar('GMEitem', 75 )
                    menu.options = page10
                    delaySendMenu(player)          
        end,
    },
    {
        'Back!',
        function(player)
                    menu.options = page1
                    delaySendMenu(player)           
        end,
    },
}
page10 =
{
    {
        'Yes',
         function(player)
         if player:getCharVar('GMEitem') == 65535 then
         npcUtil.giveItem(player, { { 65535, 1000000 } })
         player:setCharVar('GMEitem', 0)
         player:setCharVar('[GMEvent]NR', 0)
         end
         if player:getCharVar('GMEitem') == 75 then
         player:setLevel(75)
         player:setCharVar('GMEitem', 0)
         player:setCharVar('[GMEvent]NR', 0)
         end
         if player:getCharVar('GMEitem') == 18263 then
            npcUtil.giveItem(player, { { 18263, 1 } })
            player:setCharVar('GMEitem', 0)
            player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 18269 then
                npcUtil.giveItem(player, { { 18269, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 18275 then
                npcUtil.giveItem(player, { { 18275, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 18281 then
                npcUtil.giveItem(player, { { 18281, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 18287 then
                npcUtil.giveItem(player, { { 18287, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 18293 then
                npcUtil.giveItem(player, { { 18293, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 18305 then
                npcUtil.giveItem(player, { { 18305, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 18299 then
                npcUtil.giveItem(player, { { 18299, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 18311 then
                npcUtil.giveItem(player, { { 18311, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 18317 then
                npcUtil.giveItem(player, { { 18317, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 18323 then
                npcUtil.giveItem(player, { { 18323, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 18329 then
                npcUtil.giveItem(player, { { 18329, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 18347 then
                npcUtil.giveItem(player, { { 18347, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 18335 then
                npcUtil.giveItem(player, { { 18335, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 18341 then
                npcUtil.giveItem(player, { { 18341, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 15069 then
                npcUtil.giveItem(player, { { 15069, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         end
         if player:getCharVar('GMEitem') == 90000 then
            player:setSkillRank(49, 10)
            player:setSkillLevel(49, 1000)
            player:setCharVar('GMEitem', 0)
            player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 90001 then
                player:setSkillRank(53, 10)
                player:setSkillLevel(53, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 90002 then
                player:setSkillRank(51, 10)
                player:setSkillLevel(51, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 90003 then
                player:setSkillRank(50, 10)
                player:setSkillLevel(50, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 90004 then
                player:setSkillRank(56, 10)
                player:setSkillLevel(56, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 90005 then
                player:setSkillRank(55, 10)
                player:setSkillLevel(55, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 90006 then
                player:setSkillRank(54, 10)
                player:setSkillLevel(54, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 90007 then
                player:setSkillRank(52, 10)
                player:setSkillLevel(52, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         elseif player:getCharVar('GMEitem') == 90008 then
                player:setSkillRank(48, 10)
                player:setSkillLevel(48, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]NR', 0)
         end

         end
    },
    {
        'No',
        function(player)
                    menu.options = page9
                    delaySendMenu(player)                 
        end,
    },
}
page11 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'WoodWorking',
         function(player)
           player:setCharVar('GMEitem', 90000)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'LeatherCraft',
         function(player)
           player:setCharVar('GMEitem', 90001)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'GoldSmithing',
         function(player)
           player:setCharVar('GMEitem', 90002)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Smithing',
         function(player)
           player:setCharVar('GMEitem', 90003)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Previouse Page',
         function(player)
           menu.options = page9
            delaySendMenu(player)
         end
    },
    {
        'Next Page',
         function(player)
           menu.options = page12
            delaySendMenu(player)
         end
    },
}
page12 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Cooking',
         function(player)
           player:setCharVar('GMEitem', 90004)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Alchemy',
         function(player)
           player:setCharVar('GMEitem', 90005)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'BoneCraft',
         function(player)
           player:setCharVar('GMEitem', 90006)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'ClothCraft',
         function(player)
           player:setCharVar('GMEitem', 90007)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Fishing',
         function(player)
           player:setCharVar('GMEitem', 90008)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Previouse Page',
         function(player)
           menu.options = page11
            delaySendMenu(player)
         end
    },
}
page13 = 
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Knuckles',
         function(player)
           player:setCharVar('GMEitem', 18263)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Knife',
         function(player)
           player:setCharVar('GMEitem', 18269)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Sword',
         function(player)
           player:setCharVar('GMEitem', 18275)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Claymore',
         function(player)
           player:setCharVar('GMEitem', 18281)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Axe',
         function(player)
           player:setCharVar('GMEitem', 18287)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Previouse Page',
         function(player)
           menu.options = page9
            delaySendMenu(player)
         end
    },
        {
        'Next Page',
         function(player)
            menu.options = page14
            delaySendMenu(player)
         end
    },
}
page14 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Chopper',
         function(player)
           player:setCharVar('GMEitem', 18293)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Scyth',
         function(player)
           player:setCharVar('GMEitem', 18305)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Lance',
         function(player)
           player:setCharVar('GMEitem', 18299)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Katana',
         function(player)
           player:setCharVar('GMEitem', 18311)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Tachi',
         function(player)
           player:setCharVar('GMEitem', 18317)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Previouse Page',
         function(player)
           menu.options = page13
            delaySendMenu(player)
         end
    },
        {
        'Next Page',
         function(player)
            menu.options = page15
            delaySendMenu(player)
         end
    },
}
page15 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Rod',
         function(player)
           player:setCharVar('GMEitem', 18323)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Staff',
         function(player)
           player:setCharVar('GMEitem', 18329)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Bow',
         function(player)
           player:setCharVar('GMEitem', 18347)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Gun',
         function(player)
           player:setCharVar('GMEitem', 18335)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Horn',
         function(player)
           player:setCharVar('GMEitem', 18341)
           menu.options = page10
            delaySendMenu(player)
         end
    },
    {
        'Shield',
         function(player)
           player:setCharVar('GMEitem', 15069)
           menu.options = page10
            delaySendMenu(player)
         end
    },
     {
        'Previouse Page',
         function(player)
           menu.options = page14
            delaySendMenu(player)
         end
    },
}


m:addOverride('xi.zones.Mog_Garden.Zone.onInitialize', function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)
    local GMNpc = zone:insertDynamicEntity({

        -- NPC or MOB
        objtype = xi.objType.NPC,
        name = 'GM Event NPC',
        look = 1548,
        x = 376.5812,
        y = -2.1266,
        z = -570.4529,
        rotation = 115,
        widescan = 1,


        onTrade = function(player, npc, trade)
local EGtrade =
{
[ 1] = { trade = {1505, 1497, 1506, {1488, 2}}, reward = 15543}, --RAJAS Rajas Ring
[ 2] = { trade = {1506, 1509, {1488, 2}, {1507, 2}}, reward = 15544}, --SATTVA Sattva Ring
[ 3] = { trade = {1507, 1500, 1506, {1488, 2}}, reward = 15545}, --TAMAS Tamas Ring
[ 4] = { trade = {1507, 1495, 1505, 1488, 1499, {1492, 3}}, reward = 15965}, --ETHEREAL Ethereal earring
[ 5] = { trade = {1495, 1510, {1502, 2}, {1499, 2}}, reward = 15964}, --HOLLOW Hollow Earring
[ 6] = { trade = {1500, 1488, 1494, 1501, 1492, 1507, 1496, 1490}, reward = 15963}, --MAGNETIC Magnetic Earring
[ 7] = { trade = {1506, 1488, 1496, 1490, {1507, 2}}, reward = 15962}, --STATIC Static Earring
[ 8] = { trade = {1502, 1500, 1492, 1494, 1488 }, reward = 10067}, --OMEGA Omega Mount
[ 9] = { trade = {1507, 1488, 1506, 1508, {1505, 2}, {1492, 2}}, reward = 16480}, --TREASURE Thiefs knife
[10] = { trade = {1509, 1507, 1505, 1506, 1496, {1488, 3}}, reward = 355}, --AVATARSI Siren Avatar
[11] = { trade = {1490, 1488, 1505, 1489, 1512, 1500, 1496, 1507}, reward = 14062}, --CARBYMIT Carbuncle mitts
[12] = { trade = {1499, 1502, 1494, 1496, 1501}, reward = 'login_points'}, --LOGIN 1500 Log in points
[13] = { trade = {1494, 1496, 1499}, reward = 'gil'}, --GIL 100k Gil
[14] = { trade = {1493, 1488, 1490, 1492}, reward = '[GMEvent]freefc'}, --FACE free face change
[15] = { trade = {1505, 1488, 1490, 1492}, reward = '[GMEvent]freerc'}, --RACE free race change
[16] = { trade = {1501, 1492, 1511, 1508, 1506}, reward = 11538}, --NEXUS nexus cape
[17] = { trade = {1489, 1499, 1505, 1495, 1501, {1488, 2}}, reward = 15807}, --BALRAHN Balrahn ring
[18] = { trade = {1497, 1499, 1513, 1495, 1501, {1488, 2}}, reward = 15809}, --JALZAHN Jalzahn ring
[19] = { trade = {1508, 1507, 1495, 1500, {1488, 2}, {1499, 2}}, reward = 15808}, --ULTHALAM Ulthalam Ring
[20] = { trade = {1490, 1499, 1507, {1502, 3}, {1506, 2}}, reward = 11590}, --COLOSSTO Colossuss torque
[21] = { trade = {1490, 1499, 1500, 1488, {1502, 2}, {1506, 2}}, reward = 11547}, --COLOSSMA Colossuss mantle
[22] = { trade = {1490, 1499, 1492, 1488, {1502, 2}, {1506, 2}}, reward = 16058}, --COLOSSEA colossuss earring
[23] = { trade = {1488, 1492, 1506, 1496, 1507, 1502, {1505, 2}}, reward = 11589}, --AESIRTOR aesir torque
[24] = { trade = {1492, 1506, 1496, 1505, 1500, 1501, {1488, 2}}, reward = 11546}, --AESIRMAN aesir mantle
[25] = { trade = {1506, 1496, {1488, 2}, {1505, 2}, {1492, 2}}, reward = 16057}, --AESIREAR aesir ear pendant
[26] = { trade = {1506, 1503, 1488, 1505, 1498, 1506}, reward = 'sparks'}, --SPARKS 25k sparks
[27] = { trade = {1502, 1499, 1491, 1492, {1490, 2}, {1488, 2}}, reward = 'unity_accolades'}, --ACCOLADE 10k Accolades
[28] = { trade = {1499, 1508, 1506, 1495, 1488, 1501, 1494}, reward = 17386}, --LUSHANG Lushangs fishing rod
[29] = { trade = {1492, 1489, 1496, 1506, 1508, 1493, 1505}, reward = 17011}, --EBISUFR Ebisu Fishing rod
[30] = { trade = {1501, 1492, 1506, 1488, 1501, 1496, 1490, 1507}, reward = 28382}, --NESANICT Nesanica torque
[31] = { trade = {1501, 1492, 1506, 1488, 1501, 1496, 1490, 1489}, reward = 28454}, --NESANICB Nesanica belt
[32] = { trade = {1501, 1492, 1506, 1488, 1501, 1496, 1490, 1505}, reward = 28567}, --NESANICR Nesanica ring
[33] = { trade = {1507, 1499, 1496, 1506, 1500, 1501, {1488, 2}}, reward = 11290}, --TALISMAN Tidal talisman
[34] = { trade = {1500, 1494, 1499, 1492, {1502, 2}}, reward = 10059}, --MOOGLE Moogle Mount
[35] = { trade = {1498, 1503, 1502, 1506, 1496, 1507, {1508, 2}}, reward = 26406}, -- Kupo Suit
}
        local tradedCombo = 0
        local eggreward = 0
        if tradedCombo == 0 then
            for k, v in pairs(EGtrade) do
                if npcUtil.tradeHasExactly(trade, v.trade) then
                    tradedCombo = k
                    eggreward = v.reward
                    break
                end
            end
        end
            if tradedCombo == 12 then
               player:tradeComplete()
               player:addCurrency('login_points', 1500)
               player:printToPlayer('Congratulations, you have obtained 1500 LogIn Points!.', 0, 'General')
            elseif tradedCombo == 13 then
               player:tradeComplete()
               npcUtil.giveCurrency(player, 'gil', 1000000)
               player:printToPlayer('Congratulations, you have obtained 1,000,000 Gil!.', 0, 'General')
            elseif tradedCombo == 14 then
               player:tradeComplete()
               player:setCharVar('[GMEvent]freefc', player:getCharVar('[GMEvent]freefc') +1)
               player:printToPlayer('Congratulations, you have won 1 Free Face change, Please see the change NPC.', 0, 'General')
            elseif tradedCombo == 15 then
               player:tradeComplete()
               player:setCharVar('[GMEvent]freerc', player:getCharVar('[GMEvent]freerc') +1)
               player:printToPlayer('Congratulations, you have won 1 Free Race change, Please see the change NPC.', 0, 'General')
            elseif tradedCombo == 26 then
               player:tradeComplete()
               player:addCurrency('spark_of_eminence', 25000)
               player:printToPlayer('Congratulations, you have obtained 25,000 Sparks!.', 0, 'General')
            elseif tradedCombo == 27 then
               player:tradeComplete()
               player:addCurrency('unity_accolades', 10000)
               player:printToPlayer('Congratulations, you have obtained 10,000 Accolade Points!.', 0, 'General')
            elseif tradedCombo == 10 and
               not player:hasSpell(355) then
               player:tradeComplete()
               player:addSpell(355)
               player:printToPlayer('Congratulations, you have won a Pact with Siren Avatar!.', 0, 'General')
            elseif tradedCombo == 10 and
               player:hasSpell(355) then
               player:printToPlayer('You already possess the Pact with Siren!.', 0, 'General')
               return
            elseif tradedCombo == 34 and
               not player:hasItem(10059) then
               player:tradeComplete()
               player:addItem(10059)
               player:printToPlayer('Congratulations, you have received a Moogle Mount!.', 0, 'General')
            elseif tradedCombo == 34 and
               player:hasItem(10059) then
               player:printToPlayer('You already possess the Moogle Mount!.', 0, 'General')
               return
            elseif tradedCombo == 8 and
               not player:hasItem(10067) then
               player:tradeComplete()
               player:addItem(10067)
               player:printToPlayer('Congratulations, you have received a Omega Mount!.', 0, 'General')
            elseif tradedCombo == 8 and
               player:hasItem(10067) then
               player:printToPlayer('You already possess the Omega Mount!.', 0, 'General')
               return
            elseif tradedCombo == 0 or
               tradedCombo == nil then
               player:printToPlayer('This is not a valid word!.', 0, 'General')
               return
            else
               player:tradeComplete()
               npcUtil.giveItem(player, { { eggreward, 1 } })
            end
        end,

        onTrigger = function(player, npc)
            if player:getCharVar('[GMEvent]HS') == 0 and
               player:getCharVar('[GMEvent]NR') == 0 then
               player:printToPlayer('I am here to distribute rewards to the winners for the GM Events!. ', 0, 'General')
               player:printToPlayer('I do not show that you have won any events yet, come back after you have won!. ', 0, 'General')
            elseif player:getCharVar('[GMEvent]HS') == 1 or
                   player:getCharVar('[GMEvent]NR') == 1 then
               player:printToPlayer('Congratulations on your win, please select a reward!. ', 0, 'General')
                    menu.options = page1
                    delaySendMenu(player)
            end
        end,

    })
    utils.unused(GMNpc)
end)

m:addOverride('xi.zones.Batallia_Downs.Zone.onInitialize', function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)
    local npc = zone:insertDynamicEntity({

        -- NPC or MOB
        objtype = xi.objType.NPC,
        name = 'Event NPC',
        look = 2423,
        x = 446.1063,
        y = 8.1920,
        z = -154.1094,
        rotation = 139,
        widescan = 0,

        onTrigger = function(player, npc)
        if player:getCharVar('NakedRun') >= 1 then
        local playerz = player:getName()
        player:printToArea(string.format('GM General : Congratulations %s, you have made it in 1st place!!!!!!', playerz), xi.msg.channel.SYSTEM_3, 0, '')
        player:printToArea(string.format('GM General : Please see the GM Event NPC in the Leafallia to claim your reward!'), xi.msg.channel.SYSTEM_3, 0, '')
        player:printToArea(string.format('GM General : Thank you to everyone who participated in the event!'), xi.msg.channel.SYSTEM_3, 0, '')
        player:setCharVar('[GMEvent]NR', 1)
            local alliance = player:getAlliance()
                for _, partyMember in ipairs(alliance) do
                    if partyMember:getCharVar('NakedRun') >= 1 then
                       partyMember:delStatusEffect(xi.effect.EGG)
                    end
                end
        else
        player:printToPlayer('Your are not a participant in the Run to Jeuno event!')
        end
        end,
    })
    utils.unused(npc)
end)
return m


