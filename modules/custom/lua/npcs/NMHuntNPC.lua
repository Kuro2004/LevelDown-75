----------------------------------------------
require("modules/module_utils")
----------------------------------------------
local m = Module:new("NMHuntNPC")

local menu  = {}
local page1 = {}
local page2 = {} -- tier rewards
local page3 = {} -- Stores Menu 1
local page4 = {} -- Stores Menu 2
local page5 = {} -- Trust Shop 1
local page6 = {} -- Trust Shop 2
local page7 = {} -- Trust Shop 3
local page8 = {} -- Trust Shop 4
local page9 = {} -- Trust Shop 5
local page10 = {} -- Trust Shop 6
local page11 = {} -- Trust Shop Yes / No
local page12 = {} -- Style Lock Weapons Page 1
local page13 = {} -- Style Lock Weapons Page 2
local page14 = {} -- Style Lock Weapons Page 3
local page15 = {} -- Style Lock Weapons Page 4
local page16 = {} -- Style Lock Weapons Page 5
local page17 = {} -- Style Lock Weapons Page 6
local page18 = {} -- Style Lock Weapons Yes / No
local page19 = {} -- Style Lock Armor Page 1
local page20 = {} -- Style Lock Armor Page 2
local page21 = {} -- Style Lock Armor Page 3
local page22 = {} -- Style Lock Armor Page 4
local page23 = {} -- Style Lock Armor Yes / No
local page24 = {} -- T1 Milestone rewards Campaign battle armor sets
local page25 = {} -- T1 Milestone rewards Yes / No
local page26 = {} -- T2 Milestone rewards AF +1 armor sets page1
local page27 = {} -- T2 Milestone rewards AF +1 armor sets page2
local page28 = {} -- T2 Milestone rewards AF +1 armor sets page3
local page29 = {} -- T2 Milestone rewards AF +1 armor sets page4
local page30 = {} -- T2 Milestone rewards AF +1 armor sets page5
local page31 = {} -- T2 Milestone rewards Yes / No
local page32 = {} -- T3 Milestone rewards Assault Armors
local page33 = {} -- T3 Milestone rewards Yes / No

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
        'Stores Menu',
         function(player)
           menu.options = page3
           delaySendMenu(player)
         end
    },
    {
        'Tier Reward Menu',
         function(player)
           menu.options = page2
           delaySendMenu(player)
         end
    },
}
page2 =
{
    {
        'Tier 1 Rewards',
         function(player)
         local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
            if player:getCharVar('NMTRewOneComp') == 1 then
               player:printToPlayer('You have alredy redeemed your reward!', 0, 'Draider')
            elseif totalkillc >= 50 and
               player:getCharVar('NMTRewSixComp') ~= 1 then
               menu.options = page24
               delaySendMenu(player)
            else
               player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
               player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 50+ Kills to unlock!',totalkillc), 0, 'Draider')
            end 
         end
    },
    {
        'Tier 2 Rewards',
         function(player)
         local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
             if player:getCharVar('NMTRewTwoComp') == 1 then
               player:printToPlayer('You have alredy redeemed your reward!', 0, 'Draider')
            elseif totalkillc >= 100 and
               player:getCharVar('NMTRewTwoComp') ~= 1 then
               menu.options = page26
               delaySendMenu(player)
            else
               player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
               player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 100+ Kills to unlock!',totalkillc), 0, 'Draider')
            end 
         end
    },
    {
        'Tier 3 Rewards',
         function(player)
         local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
             if player:getCharVar('NMTRewThreeComp') == 1 then
               player:printToPlayer('You have alredy redeemed your reward!', 0, 'Draider')
            elseif totalkillc >= 150 and
               player:getCharVar('NMTRewThreeComp') ~= 1 then
               menu.options = page32
               delaySendMenu(player)
            else
               player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
               player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 150+ Kills to unlock!',totalkillc), 0, 'Draider')
            end 
         end
    },
    {
        'Previous Page!',
         function(player)
           menu.options = page1
           delaySendMenu(player)
         end
    },
}
page3 =
{
    {
        'Nothing!',
        function(player)
        end,
    },
    {
        'List of Rewards for Tier Completion!',
         function(player)
               player:printToPlayer('By defeating notorious monsters you will unlock tiered rewards', 0, 'Draider')
               player:printToPlayer('based on total number or NMs killed. ', 0, 'Draider')
               player:printToPlayer('Dont forget to check your kill counts! ', 0, 'Draider') 
               player:printToPlayer('Tier 1 Reward - 50 Kills - 1 Campaign Battle Set +1, Unlocks Trust Shop', 0, 'Draider')
               player:printToPlayer('Tier 2 Reward - 100 Kills - 1 Artifact Armor Set +1, Unlocks Style Lock Weapon Shop', 0, 'Draider')
               player:printToPlayer('Tier 3 Reward - 150 Kills - 1 Assault Armor Set NQ, Unlocks Style Lock Armor Shop', 0, 'Draider')
               -- player:printToPlayer('Tier 4 Reward - 200 Kills - 1 Seekers of Aoulin Ring +1, Unlocks JSE Ambuscade Cape Shop', 0, 'Draider')
               -- player:printToPlayer('Tier 5 Reward - 250 Kills - 1 Escha RuAun Torque, Unlocks JSE Reive / Incursion Cape Shop', 0, 'Draider')
               -- player:printToPlayer('Tier 6 Reward - 300 Kills - 1 Kaja Weapon, Unlocks JSE Neck Shop', 0, 'Draider')
               -- player:printToPlayer('For those of you who have chosen to skip missions', 0, 'Draider')
               -- player:printToPlayer('you may obtain your Free Relic here by completing 100 Kills', 0, 'Draider') 
         end
    },
    {
        'Check Rusty Coin Balance!',
         function(player)
               local storedRC = player:getCharVar('StoredRC')
               player:printToPlayer(string.format('You current Rusty Coin Balance is %s. ',storedRC), 0, 'Draider') 
         end
    },
    {
        'Retrieve stored Rusty Coins!',
        function(player)
               player:printToPlayer('Please trade me gil in the amount of rusty coins you wish to withdraw', 0, 'Draider')                      
        end,
    },
    {
        'Next Page!',
        function(player)
                    menu.options = page4
                    delaySendMenu(player)                 
        end,
    },
}
page4 =
{
    {
        'Shop Trusts 50 Coins',
         function(player)
        local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
           if totalkillc >= 50 then
                  local amount = player:getCharVar('StoredRC')
                  if amount >= 50 then
                    menu.options = page5
                    delaySendMenu(player)  
                  else
                    player:printToPlayer('You do not posses enough Rusty Coins for this shop!', 0, 'Draider')
                  end
          else
            player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
            player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 50+ Kills to unlock!',totalkillc), 0, 'Draider')
          end
         end,
    },
    {
        'Shop Style Lock Weapons 100 Coins',
        function(player)
        local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
           if totalkillc >= 100 then
                  local amount = player:getCharVar('StoredRC')
                  if amount >= 100 then
                    menu.options = page12
                    delaySendMenu(player)  
                  else
                    player:printToPlayer('You do not posses enough Rusty Coins for this shop!', 0, 'Draider')
                  end
          else
            player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
            player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 100+ Kills to unlock!',totalkillc), 0, 'Draider')
          end        
        end,
    },
    {
        'Shop Style Lock Armor 250 Coins',
        function(player)
        local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
           if totalkillc >= 150 then
                  local amount = player:getCharVar('StoredRC')
                  if amount >= 250 then
                    menu.options = page19
                    delaySendMenu(player)  
                  else
                    player:printToPlayer('You do not posses enough Rusty Coins for this shop!', 0, 'Draider')
                  end
          else
            player:printToPlayer('You do not meet the requirements to access this shop!', 0, 'Draider')
            player:printToPlayer(string.format('You have currently killed %s of 300 NMs, You need 150+ Kills to unlock!',totalkillc), 0, 'Draider')        
          end
        end,
    },
    {
        'Back!',
        function(player)
                    menu.options = page3
                    delaySendMenu(player)                 
        end,
    },
}

----------------------------------------------------------------------------------------------
-- Trusts ---------------------------------------------------
----------------------------------------------------------------------------------------------
page5 = --  Trusts page 1
{
    {
        'Cipher Of Halver',
         function(player)
           player:setLocalVar('NMSTrust', 10158)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Semih',
         function(player)
           player:setLocalVar('NMSTrust', 10157)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Lion II',
         function(player)
           player:setLocalVar('NMSTrust', 10159)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Zeid II',
         function(player)
           player:setLocalVar('NMSTrust', 10160)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Tenzen II',
         function(player)
           player:setLocalVar('NMSTrust', 10167)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
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
--[[
10158,500000,-- Cipher Of Halver's Alter Ego 10158
10157,500000,-- Cipher Of Semih's Alter Ego 10157
10159,500000,-- Cipher Of Lion's alter ego II 10159
10160,500000,-- Cipher Of Zeid's Alter Ego II 10160
10167,500000,-- Cipher Of Tenzen's Alter Ego II 10167
10168,500000,-- Cipher Of Prishe's Alter Ego II 10168
10170,500000,-- Cipher Of Nashmeira's Alter Ego II 10170
10171,500000,-- Cipher Of Lilisette's Alter Ego II 10171
10184,500000,-- Cipher Of Arciela II 10184
10172,1000000,-- Cipher Of Balamor's Alter Ego 10172
10173,1000000,-- Cipher Of Selh'teus's Alter Ego 10173
10185,1000000,-- Cipher Of Iroha 10185
10186,1000000,-- Cipher Of Iroha II 10186
10191,1000000,-- Cipher Of Ark EV 10191
10188,1000000,-- Cipher Of Ark HM 10188
10192,1000000,-- Cipher Of Ark GK 10192
10190,1000000,-- Cipher Of Ark MR 10190
10189,1000000,-- Cipher Of Ark TT 10189
10162,1000000,-- Cipher Of Kupofried 10162
]]--
}
page6 = -- Trusts page 2
{
    {
        'Cipher Of Prishe II',
         function(player)
           player:setLocalVar('NMSTrust', 10168)
           menu.options = page11
            delaySendMenu(player)
         end
    },
   {
        'Cipher Of Nashmeira II',
         function(player)
           player:setLocalVar('NMSTrust', 10170)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Lilisette II',
         function(player)
           player:setLocalVar('NMSTrust', 10171)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Arciela II',
         function(player)
           player:setLocalVar('NMSTrustSpell', 1017)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page5
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page7
           delaySendMenu(player)
         end
    },
}
page7 = -- Trusts page 3
{
    {
        'Cipher Of Balamor',
         function(player)
           player:setLocalVar('NMSTrust', 10172)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Selh teus',
         function(player)
           player:setLocalVar('NMSTrust', 10173)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Iroha',
         function(player)
           player:setLocalVar('NMSTrust', 10185)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Iroha II',
         function(player)
           player:setLocalVar('NMSTrust', 10186)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Ark EV',
         function(player)
           player:setLocalVar('NMSTrust', 10191)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page6
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
page8 = -- Trusts page 4
{
    {
        'Cipher Of Ark HM',
         function(player)
           player:setLocalVar('NMSTrust', 10188)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Ark GK',
         function(player)
           player:setLocalVar('NMSTrust', 10192)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Ark MR',
         function(player)
           player:setLocalVar('NMSTrust', 10190)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Ark TT',
         function(player)
           player:setLocalVar('NMSTrust', 10189)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page7
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page9
           delaySendMenu(player)
         end
    },

}
page9 =
{
    {
        'Cipher Of Kupofried',
         function(player)
           player:setLocalVar('NMSTrust', 10162)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Cipher Of Lilisette',
         function(player)
           player:setLocalVar('NMSTrust', 10137)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Spell: Trust Prishe',
         function(player)
           player:setLocalVar('NMSTrustSpell', 913)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Spell: Trust Shikaree Z',
         function(player)
           player:setLocalVar('NMSTrustSpell', 915)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page8
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page10
           delaySendMenu(player)
         end
    },
}
page10 =
{
    {
        'Spell: Trust Cherukiki',
         function(player)
           player:setLocalVar('NMSTrustSpell', 916)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Spell: Trust Ulima',
         function(player)
           player:setLocalVar('NMSTrustSpell', 914)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Spell: Trust Arciela',
         function(player)
           player:setLocalVar('NMSTrustSpell', 965)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Spell: Trust Ingrid',
         function(player)
           player:setLocalVar('NMSTrustSpell', 921)
           menu.options = page11
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page9
           delaySendMenu(player)
         end
    },
}
page11 = -- Trusts yes or no
{
        {
        'Yes',
         function(player)
         local amount = player:getCharVar('StoredRC')
         local NMTr = player:getLocalVar('NMSTrust')
         local NMTrs = player:getLocalVar('NMSTrustSpell')
               if NMTr > 0 then
                  if player:hasItem(NMTr) or
                     player:getFreeSlotsCount() < 1 then
                     player:printToPlayer('Please check your inventory and try again!')
                  return
                  else
                     npcUtil.giveItem(player, NMTr)
                     player:setCharVar('StoredRC', amount - 50)
                  end
               elseif NMTrs > 0 then
                   if player:hasSpell(NMTrs) then
                      player:printToPlayer('You have already obtained that spell!')
                   return
                   else
                      player:addSpell(NMTrs)
                      player:setCharVar('StoredRC', amount - 50)
                   end
                end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- Style Lock Weapons ---------------------------------------------------
----------------------------------------------------------------------------------------------
page12 = --  Style Lock Weapons page 1
    {
    {
        'Aern Sword II',
         function(player)
           player:setLocalVar('NMStyleW', 20675)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Aern Dagger II',
         function(player)
           player:setLocalVar('NMStyleW', 20574)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Aern Axe II',
         function(player)
           player:setLocalVar('NMStyleW', 21743)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Aern Spear II',
         function(player)
           player:setLocalVar('NMStyleW', 21861)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Aern Staff II',
         function(player)
           player:setLocalVar('NMStyleW', 22066)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page4
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page13
           delaySendMenu(player)
         end
    },
--[[
20675,250000,-- Aern_Sword II
20574,250000,-- Aern_Dagger II
21743,250000,-- Aern_Axe II
21861,250000,-- Aern_Spear II
22066,250000,-- Aern_Staff II
26414,500000,-- Twinned_Shield
21623,500000,-- Twinned_Blade
21886,500000,-- Iapetus
21530,500000,-- Tokkosho
22050,500000,-- Chac-chacs
21520,500000,-- Ethereal_Fists
21624,500000,-- Ethereal_Sword
21771,500000,-- Ethereal_Great_Axe
21838,500000,-- Ethereal_Scythe
21962,500000,-- Ethereal_Tachi
22090,500000,-- Ethereal_Staff
22146,500000,-- Ethereal_Bow
21571,500000,-- Ethereal_Dagger
21713,500000,-- Ethereal_Axe
21666,500000,-- Ethereal_G._sword
21911,500000,-- Ethereal_Katana
22053,500000,-- Ethereal_Club
21873,500000,-- Ethereal_Spear
22165,500000,-- Ethereal_Gun
20694,1000000,-- Fermion_Sword
21693,1000000,-- Irradiance_Blade
20514,1000000,-- Aphelion_Knuckles
21862,1000000,-- Mizukage-No-Naginata
20593,1000000,-- Hedron_Dagger
20931,1000000,-- Celestial_Spear
]]--
    }
page13 = -- Style Lock Weapons page 2
{
    {
        'Twinned Shield',
         function(player)
           player:setLocalVar('NMStyleW', 26414)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Twinned Blade',
         function(player)
           player:setLocalVar('NMStyleW', 21623)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Iapetus',
         function(player)
           player:setLocalVar('NMStyleW', 21886)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Tokkosho',
         function(player)
           player:setLocalVar('NMStyleW', 21530)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Chac-chacs',
         function(player)
           player:setLocalVar('NMStyleW', 22050)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page12
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
page14 = -- Style Lock Weapons page 3
{
    {
        'Ethereal Fists',
         function(player)
           player:setLocalVar('NMStyleW', 21520)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Sword',
         function(player)
           player:setLocalVar('NMStyleW', 21624)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Great Axe',
         function(player)
           player:setLocalVar('NMStyleW', 21771)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Scythe',
         function(player)
           player:setLocalVar('NMStyleW', 21838)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Tachi',
         function(player)
           player:setLocalVar('NMStyleW', 21962)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
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
page15 = -- Style Lock Weapons page 4
{
    {
        'Ethereal Staff',
         function(player)
           player:setLocalVar('NMStyleW', 22090)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Bow',
         function(player)
           player:setLocalVar('NMStyleW', 22146)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Dagger',
         function(player)
           player:setLocalVar('NMStyleW', 21571)
           menu.options = page18
            delaySendMenu(player)
         end
    },
   {
        'Ethereal Axe',
         function(player)
           player:setLocalVar('NMStyleW', 21713)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Ethereal G. sword',
         function(player)
           player:setLocalVar('NMStyleW', 21666)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page14
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page16
           delaySendMenu(player)
         end
    },
}
page16 = -- Style Lock Weapons page 5
{
    {
        'Ethereal Katana',
         function(player)
           player:setLocalVar('NMStyleW', 21911)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Club',
         function(player)
           player:setLocalVar('NMStyleW', 22053)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Spear',
         function(player)
           player:setLocalVar('NMStyleW', 21873)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Ethereal Gun',
         function(player)
           player:setLocalVar('NMStyleW', 22165)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Fermion Sword',
         function(player)
           player:setLocalVar('NMStyleW', 20694)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page15
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page17
           delaySendMenu(player)
         end
    },
}
page17 = -- Style Lock Weapons Page 6
{
    {
        'Irradiance Blade',
         function(player)
           player:setLocalVar('NMStyleW', 21693)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Aphelion Knuckles',
         function(player)
           player:setLocalVar('NMStyleW', 20514)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Mizukage-No-Naginata',
         function(player)
           player:setLocalVar('NMStyleW', 21862)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Hedron Dagger',
         function(player)
           player:setLocalVar('NMStyleW', 20593)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Celestial Spear',
         function(player)
           player:setLocalVar('NMStyleW', 20931)
           menu.options = page18
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page16
           delaySendMenu(player)
         end
    },
}

page18 = -- Style Lock Weapons yes or no
{
        {
        'Yes',
         function(player)
         local amount = player:getCharVar('StoredRC')
         local NMsw = player:getLocalVar('NMStyleW')
               if player:hasItem(NMsw) or
               player:getFreeSlotsCount() < 1 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, NMsw)
               player:setCharVar('StoredRC', amount - 100)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- Style Lock Armor ---------------------------------------------------
----------------------------------------------------------------------------------------------
page19 = --  Style lock Armor page 1
{
    {
        'Diamond Somen',
         function(player)
           player:setLocalVar('NMStyleA', 23822)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Diamond Haramaki',
         function(player)
           player:setLocalVar('NMStyleA', 23823)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Diamond Kote',
         function(player)
           player:setLocalVar('NMStyleA', 23824)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Diamond Hizayori',
         function(player)
           player:setLocalVar('NMStyleA', 23825)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Diamond Sune-ate',
         function(player)
           player:setLocalVar('NMStyleA', 23826)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page4
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page20
           delaySendMenu(player)
         end
    },
--[[
23822,500000,-- Diamond_Somen
23823,500000,-- Diamond_Haramaki
23824,500000,-- Diamond_Kote
23825,500000,-- Diamond_Hizayori
23826,500000,-- Diamond_Sune-ate
23817,500000,-- Jadeite_Visor
23818,500000,-- Jadeite_Cuirie
23819,500000,-- Jadeite_Gloves
23820,500000,-- Jadeite_Chausses
23821,500000,-- Jadeite_Jambeaux
23832,500000,-- Ruby_Coronal
23833,500000,-- Ruby_Robe
23834,500000,-- Ruby_Cuffs
23835,500000,-- Ruby_Slops
23836,500000,-- Ruby Pigaches
23812,500000,-- Sapphire_Mask
23813,500000,-- Sapphire_Platemail
23814,500000,-- Sapphire_Gaunlets
23815,500000,-- Sapphire_Trousers
23816,500000,-- Sapphire_Leggings
]]--
}

page20 = --Style Lock Armor page 2
{
    {
        'Jadeite Visor',
         function(player)
           player:setLocalVar('NMStyleA', 23817)
           menu.options = page23
            delaySendMenu(player)
         end
    },
   {
        'Jadeite Cuirie',
         function(player)
           player:setLocalVar('NMStyleA', 23818)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Jadeite Gloves',
         function(player)
           player:setLocalVar('NMStyleA', 23819)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Jadeite Chausses',
         function(player)
           player:setLocalVar('NMStyleA', 23820)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Jadeite Jambeaux',
         function(player)
           player:setLocalVar('NMStyleA', 23821)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page19
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page21
           delaySendMenu(player)
         end
    },
}
page21 = --Style Lock Armor page 3
{
    {
        'Ruby Coronal',
         function(player)
           player:setLocalVar('NMStyleA', 23832)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Ruby Robe',
         function(player)
           player:setLocalVar('NMStyleA', 23833)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Ruby Cuffs',
         function(player)
           player:setLocalVar('NMStyleA', 23834)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Ruby Slops',
         function(player)
           player:setLocalVar('NMStyleA', 23835)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Ruby Pigaches',
         function(player)
           player:setLocalVar('NMStyleA', 23836)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page20
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page22
           delaySendMenu(player)
         end
    },
}
page22 = --Style Lock Armor page 4
{
    {
        'Sapphire Mask',
         function(player)
           player:setLocalVar('NMStyleA', 23812)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Sapphire Platemail',
         function(player)
           player:setLocalVar('NMStyleA', 23813)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Sapphire Gaunlets',
         function(player)
           player:setLocalVar('NMStyleA', 23814)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Sapphire Trousers',
         function(player)
           player:setLocalVar('NMStyleA', 23815)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Sapphire Leggings',
         function(player)
           player:setLocalVar('NMStyleA', 23816)
           menu.options = page23
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page21
           delaySendMenu(player)
         end
    },
}

page23 = -- Style Lock Armor yes or no
{
        {
        'Yes',
         function(player)
         local amount = player:getCharVar('StoredRC')
         local NMsa = player:getLocalVar('NMStyleA')
               if player:hasItem(NMsa) or
               player:getFreeSlotsCount() < 1 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, NMsa)
               player:setCharVar('StoredRC', amount - 250)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- T1 Milestone rewards Campaign battle armor sets -------------------------------------------------
----------------------------------------------------------------------------------------------
page24 =
{
    {
        'Cobra Harness Set',
         function(player)
           player:setLocalVar('NMTRewOnea', 16148) -- cobra cap
           player:setLocalVar('NMTRewOneb', 14590) -- cobra harness
           player:setLocalVar('NMTRewOnec', 15011) -- cobra mittens
           player:setLocalVar('NMTRewOned', 16317) -- cobra subligar
           player:setLocalVar('NMTRewOnee', 15757) -- cobra leggings
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Cobra Robe Set',
         function(player)
           player:setLocalVar('NMTRewOnea', 16149) -- cobra cloche
           player:setLocalVar('NMTRewOneb', 14591) -- cobra robe
           player:setLocalVar('NMTRewOnec', 15012) -- cobra gloves
           player:setLocalVar('NMTRewOned', 16318) -- cobra trews
           player:setLocalVar('NMTRewOnee', 15758) -- cobra crackows
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Fourth Brunne Set',
         function(player)
           player:setLocalVar('NMTRewOnea', 16147) -- fourth haube
           player:setLocalVar('NMTRewOneb', 14589) -- fourth brunne
           player:setLocalVar('NMTRewOnec', 15010) -- fourth hentzes
           player:setLocalVar('NMTRewOned', 16316) -- fourth schoss
           player:setLocalVar('NMTRewOnee', 15756) -- fourth schuhs
           menu.options = page25
            delaySendMenu(player)
         end
    },
    {
        'Iron Ram Set',
         function(player)
           player:setLocalVar('NMTRewOnea', 16146) -- iron ram sallet
           player:setLocalVar('NMTRewOneb', 14588) -- iron ram hauberk
           player:setLocalVar('NMTRewOnec', 15009) -- iron ram dastanas
           player:setLocalVar('NMTRewOned', 16315) -- iron ram hose
           player:setLocalVar('NMTRewOnee', 15755) -- iron ram greeves
           menu.options = page25
            delaySendMenu(player)
         end
    },
}
page25 =
{
        {
        'Yes',
         function(player)
         local NMtonea = player:getLocalVar('NMTRewOnea')
         local NMtoneb = player:getLocalVar('NMTRewOneb')
         local NMtonec = player:getLocalVar('NMTRewOnec')
         local NMtoned = player:getLocalVar('NMTRewOned')
         local NMtonee = player:getLocalVar('NMTRewOnee')
               if player:getFreeSlotsCount() < 5 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, NMtonea)
               npcUtil.giveItem(player, NMtoneb)
               npcUtil.giveItem(player, NMtonec)
               npcUtil.giveItem(player, NMtoned)
               npcUtil.giveItem(player, NMtonee)
               player:setCharVar('NMTRewOneComp', 1)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}

----------------------------------------------------------------------------------------------
-- T2 Milestone rewards AF +1 set -----------------------------------------------
----------------------------------------------------------------------------------------------
page26 =
{
    {
        'Fighters AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 15225) -- Fighters Mask +1
           player:setLocalVar('NMTRewTwob', 14473) -- Fighters Lorcia +1
           player:setLocalVar('NMTRewTwoc', 14890) -- Fighters Mufflers +1
           player:setLocalVar('NMTRewTwod', 15561) -- Fighters Cuisses +1
           player:setLocalVar('NMTRewTwoe', 15352) -- Fighters Calligae +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Temple AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 15226) -- Temple  Crown +1
           player:setLocalVar('NMTRewTwob', 14474) -- Temple  Cyclas +1
           player:setLocalVar('NMTRewTwoc', 14891) -- Temple  Gloves +1
           player:setLocalVar('NMTRewTwod', 15562) -- Temple  Hose +1
           player:setLocalVar('NMTRewTwoe', 15353) -- Temple  Gaiters +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Healers AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 15227) -- Healers cap +1
           player:setLocalVar('NMTRewTwob', 14475) -- Healers bliaut +1
           player:setLocalVar('NMTRewTwoc', 14892) -- Healers mitts +1
           player:setLocalVar('NMTRewTwod', 15563) -- Healers pantaloons +1
           player:setLocalVar('NMTRewTwoe', 15354) -- Healers duckbills +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Wizards AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 15228) -- Wizard Petasos +1
           player:setLocalVar('NMTRewTwob', 14476) -- Wizard Coat +1
           player:setLocalVar('NMTRewTwoc', 14893) -- Wizard Gloves +1
           player:setLocalVar('NMTRewTwod', 15564) -- Wizard Tonban +1
           player:setLocalVar('NMTRewTwoe', 15355) -- Wizard Sabots +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Warlocks AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 15229) -- Warlocks Chapeau +1
           player:setLocalVar('NMTRewTwob', 14477) -- Warlocks Tabard +1
           player:setLocalVar('NMTRewTwoc', 14894) -- Warlocks Gloves +1
           player:setLocalVar('NMTRewTwod', 15565) -- Warlocks Tights +1
           player:setLocalVar('NMTRewTwoe', 15356) -- Warlocks Boots +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page27
           delaySendMenu(player)
         end
    },
}
page27 =
{
    {
        'Rogues AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 15230) -- Rogues Bonnet +1
           player:setLocalVar('NMTRewTwob', 14478) -- Rogues Vest +1
           player:setLocalVar('NMTRewTwoc', 14895) -- Rogues Armlets +1
           player:setLocalVar('NMTRewTwod', 15566) -- Rogues Culottes +1
           player:setLocalVar('NMTRewTwoe', 15357) -- Rogues Poulaines +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Gallant AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 15231) -- Gallant Coronet +1
           player:setLocalVar('NMTRewTwob', 14479) -- Gallant Surcoat +1
           player:setLocalVar('NMTRewTwoc', 14896) -- Gallant Gauntlets +1
           player:setLocalVar('NMTRewTwod', 15567) -- Gallant Breeches +1
           player:setLocalVar('NMTRewTwoe', 15358) -- Gallant Leggings +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Chaos AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 15232) -- Chaos Burgeonet +1
           player:setLocalVar('NMTRewTwob', 14480) -- Chaos Cuirass +1
           player:setLocalVar('NMTRewTwoc', 14897) -- Chaos Gauntlets +1
           player:setLocalVar('NMTRewTwod', 15568) -- Chaos Flanchard +1
           player:setLocalVar('NMTRewTwoe', 15359) -- Chaos Sollerets +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Beast AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 15233) -- Beast Helm +1
           player:setLocalVar('NMTRewTwob', 14481) -- Beast Jackcoat +1
           player:setLocalVar('NMTRewTwoc', 14898) -- Beast Gloves +1
           player:setLocalVar('NMTRewTwod', 15569) -- Beast Trousers +1
           player:setLocalVar('NMTRewTwoe', 15360) -- Beast Gaiters +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Choral AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 15234) -- Choral Roundlet +1
           player:setLocalVar('NMTRewTwob', 14482) -- Choral Justaucorps +1
           player:setLocalVar('NMTRewTwoc', 14899) -- Choral Cuffs +1
           player:setLocalVar('NMTRewTwod', 15570) -- Choral Cannions +1
           player:setLocalVar('NMTRewTwoe', 15361) -- Choral Slippers +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page26
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page28
           delaySendMenu(player)
         end
    },
}
page28 =
{
    {
        'Hunters AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 15235) -- Hunters Beret +1
           player:setLocalVar('NMTRewTwob', 14483) -- Hunters Jerkin +1
           player:setLocalVar('NMTRewTwoc', 14900) -- Hunters Bracers +1
           player:setLocalVar('NMTRewTwod', 15571) -- Hunters Braccae +1
           player:setLocalVar('NMTRewTwoe', 15362) -- Hunters Socks +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Myochin AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 15236) -- Myochin Kabuto +1
           player:setLocalVar('NMTRewTwob', 14484) -- Myochin Domaru +1
           player:setLocalVar('NMTRewTwoc', 14901) -- Myochin Kote +1
           player:setLocalVar('NMTRewTwod', 15572) -- Myochin Haidate +1
           player:setLocalVar('NMTRewTwoe', 15363) -- Myochin SuneAte +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Ninja AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 15237) -- Ninja Hatsuburi +1
           player:setLocalVar('NMTRewTwob', 14485) -- Ninja Chainmail +1
           player:setLocalVar('NMTRewTwoc', 14902) -- Ninja Tekko +1
           player:setLocalVar('NMTRewTwod', 15573) -- Ninja Hakama +1
           player:setLocalVar('NMTRewTwoe', 15364) -- Ninja Kyahan +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Drachen AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 15238) -- Drachen Armlet +1
           player:setLocalVar('NMTRewTwob', 14486) -- Drachen Mail +1
           player:setLocalVar('NMTRewTwoc', 14903) -- Drachen Gaunlets +1
           player:setLocalVar('NMTRewTwod', 15574) -- Drachen Brais +1
           player:setLocalVar('NMTRewTwoe', 15365) -- Drachen Greeves +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Evokers AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 15239) -- Evokers Horn +1
           player:setLocalVar('NMTRewTwob', 14487) -- Evokers Doublet +1
           player:setLocalVar('NMTRewTwoc', 14904) -- Evokers Bracers +1
           player:setLocalVar('NMTRewTwod', 15575) -- Evokers Spats +1
           player:setLocalVar('NMTRewTwoe', 15366) -- Evokers Pigaches +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page27
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page29
           delaySendMenu(player)
         end
    },
}
page29 =
{
    {
        'Magus AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 11464) -- Magus Keffiyeh +1
           player:setLocalVar('NMTRewTwob', 11291) -- Magus Jubbah +1
           player:setLocalVar('NMTRewTwoc', 15024) -- Magus Bazubands +1
           player:setLocalVar('NMTRewTwod', 16345) -- Magus Shalwar +1
           player:setLocalVar('NMTRewTwoe', 11381) -- Magus Charuqs +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Corsairs AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 11467) -- Corsairs Tricone +1
           player:setLocalVar('NMTRewTwob', 11294) -- Corsairs Frac +1
           player:setLocalVar('NMTRewTwoc', 15027) -- Corsairs Gants +1
           player:setLocalVar('NMTRewTwod', 16348) -- Corsairs Culottes +1
           player:setLocalVar('NMTRewTwoe', 11384) -- Corsairs Bottes +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Puppetry AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 11470) -- Puppetry Taj +1
           player:setLocalVar('NMTRewTwob', 11297) -- Puppetry Tobe +1
           player:setLocalVar('NMTRewTwoc', 15030) -- Puppetry Dastanas +1
           player:setLocalVar('NMTRewTwod', 16351) -- Puppetry Churidars +1
           player:setLocalVar('NMTRewTwoe', 11387) -- Puppetry Babouches +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'M Dancer AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 25615) -- Dancer Tiara +1
           player:setLocalVar('NMTRewTwob', 25688) -- Dancer Casaque +1
           player:setLocalVar('NMTRewTwoc', 27119) -- Dancer Bangles +1
           player:setLocalVar('NMTRewTwod', 27304) -- Dancer Tights +1
           player:setLocalVar('NMTRewTwoe', 27475) -- Dancer Shoes +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'F Dancer AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 25615) -- Dancer Tiara +1
           player:setLocalVar('NMTRewTwob', 25688) -- Dancer Casaque +1
           player:setLocalVar('NMTRewTwoc', 27119) -- Dancer Bangles +1
           player:setLocalVar('NMTRewTwod', 27304) -- Dancer Tights +1
           player:setLocalVar('NMTRewTwoe', 27475) -- Dancer Shoes +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page28
           delaySendMenu(player)
         end
    },
    {
         'Next Page',
         function(player)
           menu.options = page30
           delaySendMenu(player)
         end
    },
}
page30 =
{
    {
        'Scholar AF +1',
         function(player)
           player:setLocalVar('NMTRewTwoa', 11477) -- Scholar Mortarboard +1
           player:setLocalVar('NMTRewTwob', 11304) -- Scholar Gown +1
           player:setLocalVar('NMTRewTwoc', 15037) -- Scholar Bracers +1
           player:setLocalVar('NMTRewTwod', 16359) -- Scholar Pants +1
           player:setLocalVar('NMTRewTwoe', 11395) -- Scholar Loafers +1
           menu.options = page31
            delaySendMenu(player)
         end
    },
    {
        'Previous Page',
         function(player)
           menu.options = page29
           delaySendMenu(player)
         end
    },
}
page31 =
{
        {
        'Yes',
         function(player)
         local NMttwoa = player:getLocalVar('NMTRewTwoa')
         local NMttwob = player:getLocalVar('NMTRewTwob')
         local NMttwoc = player:getLocalVar('NMTRewTwoc')
         local NMttwod = player:getLocalVar('NMTRewTwod')
         local NMttwoe = player:getLocalVar('NMTRewTwoe')
               if player:getFreeSlotsCount() < 5 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, NMttwoa)
               npcUtil.giveItem(player, NMttwob)
               npcUtil.giveItem(player, NMttwoc)
               npcUtil.giveItem(player, NMttwod)
               npcUtil.giveItem(player, NMttwoe)
               player:setCharVar('NMTRewTwoComp', 1)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}
----------------------------------------------------------------------------------------------
-- T3 Milestone rewards Assault Armors -------------------------------------------------------
----------------------------------------------------------------------------------------------
page32 =
{
    {
        'Amir Assault Set',
         function(player)
           player:setLocalVar('NMTRewThreea', 14933) -- Amir Kolluks
           player:setLocalVar('NMTRewThreeb', 15688) -- Amir Boots
           player:setLocalVar('NMTRewThreec', 14525) -- Amir Korazin
           player:setLocalVar('NMTRewThreed', 16062) -- Amir Puggaree
           player:setLocalVar('NMTRewThreee', 15604) -- Amir Dirs
           menu.options = page33
            delaySendMenu(player)
         end
    },
    {
        'Pahluwan Assault Set',
         function(player)
           player:setLocalVar('NMTRewThreea', 16069) -- Pahluwan Qalansuwa
           player:setLocalVar('NMTRewThreeb', 15609) -- Pahluwan Seraweels
           player:setLocalVar('NMTRewThreec', 14940) -- Pahluwan Dastanas
           player:setLocalVar('NMTRewThreed', 15695) -- Pahluwan Crackows
           player:setLocalVar('NMTRewThreee', 14530) -- Pahluwan Khazagand
           menu.options = page33
            delaySendMenu(player)
         end
    },
    {
        'Yigit Assault Set',
         function(player)
           player:setLocalVar('NMTRewThreea', 15606) -- Yigit Seraweels
           player:setLocalVar('NMTRewThreeb', 14935) -- Yigit Gages
           player:setLocalVar('NMTRewThreec', 15690) -- Yigit Crackows
           player:setLocalVar('NMTRewThreed', 14527) -- Yigit Gomlek
           player:setLocalVar('NMTRewThreee', 16064) -- Yigit Turban
           menu.options = page33
            delaySendMenu(player)
         end
    },
}
page33 =
{
        {
        'Yes',
         function(player)
         local NMtthreea = player:getLocalVar('NMTRewThreea')
         local NMtthreeb = player:getLocalVar('NMTRewThreeb')
         local NMtthreec = player:getLocalVar('NMTRewThreec')
         local NMtthreed = player:getLocalVar('NMTRewThreed')
         local NMtthreee = player:getLocalVar('NMTRewThreee')
               if player:getFreeSlotsCount() < 5 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, NMtthreea)
               npcUtil.giveItem(player, NMtthreeb)
               npcUtil.giveItem(player, NMtthreec)
               npcUtil.giveItem(player, NMtthreed)
               npcUtil.giveItem(player, NMtthreee)
               player:setCharVar('NMTRewThreeComp', 1)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}


m:addOverride('xi.zones.Rabao.Zone.onInitialize', function(zone)
    --  Call the zone's original function for onInitialize
    super(zone)
    local Draider = zone:insertDynamicEntity({

        --  NPC or MOB
        objtype = xi.objType.NPC,
        name = 'Draider', 
        look = '0000b50a00000000000000000000000000000000',
        x = -37.3691,
        y = 0.0000,
        z = -39.9455,
        rotation = 5,
        widescan = 1,


     onTrade = function(player, npc, trade)
         --  store Rusty Coin
             local storedRC = player:getCharVar('StoredRC')
             local count = trade:getItemCount()
             if trade:hasItemQty(4049, count) then --  4049
                      local total = player:getCharVar('StoredRC') + count
                      if total > 1 then 
                         player:setCharVar('StoredRC', total)
                         player:tradeComplete()
                      end
               player:printToPlayer(string.format('Thank you for allowing me to hold your %s Rusty Coins.',count), 0, 'Draider') 
               player:printToPlayer(string.format('You current Rusty Coin Balance is %s. ',storedRC + count), 0, 'Draider') 
             end

                 --  give rusty coins back base on amount of gil traded, if you have the inventory space
               if npcUtil.tradeHas(trade, xi.item.GIL) then
                     local countx = trade:getItemQty(65535)
                     local quantity  = player:getCharVar('StoredRC')
                     local stacks    = math.floor(countx / 12)
                     local remainder = countx % 12
                     local slotsNeeded = stacks
                           if remainder > 0 then
                              slotsNeeded = slotsNeeded + 1
                           end
                                  if countx <= quantity then
                                    if countx > 0 then
                                     if player:getFreeSlotsCount() < slotsNeeded then
                                        player:printToPlayer('You cannot withdrawn that amount. ', 0, 'Draider')
                                        player:printToPlayer('Please check your inventory and try again. ', 0, 'Draider')
                                        return
                                     else
                                       player:addItem(4049, countx)
                                       player:setCharVar('StoredRC', quantity - countx)
                                       player:printToPlayer(string.format('You have withdrawn %s rusty coins. ',countx), 0, 'Draider')
                                       player:printToPlayer(string.format('Your remaining balance of rusty coins is %s. ',player:getCharVar('StoredRC')), 0, 'Draider') 
                                     end
                                    end
                                  else
                                       player:printToPlayer('You cannot withdrawn that amount. You are trying to withdraw more rusty coins', 0, 'Draider')
                                       player:printToPlayer(string.format('than you have. Your current stored rusty coins is %s',quantity), 0, 'Draider')
                                  end  
               end
    end,

        onTrigger = function(player, npc)
         local totalkillc = player:getCharVar('[NMHunt]TOneKills') + player:getCharVar('[NMHunt]TTwoKills') + player:getCharVar('[NMHunt]TThreeKills') + player:getCharVar('[NMHunt]TFourKills') + player:getCharVar('[NMHunt]TFiveKills') + player:getCharVar('[NMHunt]TSixKills')
             player:printToPlayer('Welcome to the Notorious Monster Hunt Shop!', 0, 'Draider')
             player:printToPlayer(string.format('You have currently killed %s of 300 NMs!',totalkillc), 0, 'Draider') 
             menu.options = page1
             delaySendMenu(player)
        end,
    })
    utils.unused(Draider)
end)

return m
