-----------------------------------
-- Change your Wyverns skin
-----------------------------------
require('modules/module_utils')
-----------------------------------
local m = Module:new('QoLStarter')

local menu   = {}
local rewards  = {}
local confirmation  = {}

local delaySendMenu = function(player)
    player:timer(50, function(playerArg)
        playerArg:customMenu(menu)
    end)
end

menu =
{
    title = 'What would you like?',
    options = {},
}
rewards =
{
    {
        'Nothing for now.',
        function(player)
        end
    }, 
    {
        'Spells', -- rank 6
         function(player)
         if player:getRank(player:getNation()) >= 6 then
         if player:getCharVar('[QoLSpells]') >= 2 then
            player:printToPlayer('GM General : You have already learned all you can learn!', xi.msg.channel.SYSTEM_3, '')
         else
            player:setCharVar('[QoLSpells]', 1)
                    menu.options = confirmation
                    delaySendMenu(player)
         end
         else
            player:printToPlayer('GM General : You must be Rank 6 or above to use this feature!', xi.msg.channel.SYSTEM_3, '')
         end
         end
    },
    {
        'All Teleports', -- rank 8
         function(player)
         if player:getRank(player:getNation()) >= 8 then
         if player:getCharVar('[QoLPorts]') > 1 then
            player:printToPlayer('GM General : You have already learned all you can learn!', xi.msg.channel.SYSTEM_3, '')
         else
            player:setCharVar('[QoLPorts]', 1)
                    menu.options = confirmation
                    delaySendMenu(player)  
         end
         else
            player:printToPlayer('GM General : You must be Rank 8 or above to use this feature!', xi.msg.channel.SYSTEM_3, '')
         end
         end
    },
    {
        'Add Fame', -- rank 2
         function(player)
         if player:getRank(player:getNation()) >= 2 then
         if player:getCharVar('[QoLFame]') > 1 then
            player:printToPlayer('GM General : You have already reached max fame!', xi.msg.channel.SYSTEM_3,'')
         else
                    menu.options = confirmation
            player:setCharVar('[QoLFame]', 1)
                    delaySendMenu(player)  
         end
         else
            player:printToPlayer('GM General : You must be Rank 2 or above to use this feature!', xi.msg.channel.SYSTEM_3, '')
         end
         end
    },
    {
        'All Jobs', -- rank 4
         function(player)
         if player:getRank(player:getNation()) >= 4 then
         if player:getCharVar('[QoLJobs]') > 1 then
            player:printToPlayer('GM General : You have already learned all you can learn!', xi.msg.channel.SYSTEM_3,'')
         else
                    menu.options = confirmation
            player:setCharVar('[QoLJobs]', 1)
                    delaySendMenu(player)  
         end
         else
            player:printToPlayer('GM General : You must be Rank 4 or above to use this feature!', xi.msg.channel.SYSTEM_3, '')
         end
         end
    },
    {
        'All Weaponskills', -- rank 10
         function(player)
         if player:getRank(player:getNation()) == 10 then
         if player:getCharVar('[QoLWS]') > 1 then
            player:printToPlayer('GM General : You have already learned all you can learn!', xi.msg.channel.SYSTEM_3, '')
         else
                    menu.options = confirmation
            player:setCharVar('[QoLWS]', 1)
                    delaySendMenu(player)  
         end
         else
            player:printToPlayer('GM General : You must be Rank 10 to use this feature!', xi.msg.channel.SYSTEM_3, '')
         end
         end
    },
}
confirmation =
{
    {
        'Yes',
        function(player)
            if player:getCharVar('[QoLWS]') == 1 then
               player:injectActionPacket(player:getID(), 6, 290, 0, 0, 0, 10, 1)
                 for i = 1, 63 do
                                 player:addLearnedWeaponskill(i)
                 end
               player:setCharVar('[QoLWS]', 2)
            elseif player:getCharVar('[QoLJobs]') == 1 then
                   player:injectActionPacket(player:getID(), 6, 290, 0, 0, 0, 10, 1)
                        for i = 7, 22 do
                           if not player:hasJob(i) then
                                  player:unlockJob(i)
                           end
                        end
                        if not player:hasJob(14) then
                                  player:setPetName(xi.petType.WYVERN, math.random(1,32))
                        end
                        if not player:hasJob(18) then
                                  player:setPetName(xi.petType.AUTOMATON, math.random(118, 149))
                                  player:addItem(xi.item.ANIMATOR)
                        end
                        player:setCharVar('[QoLJobs]', 2)
            elseif player:getCharVar('[QoLFame]') == 1 then
                   player:injectActionPacket(player:getID(), 6, 290, 0, 0, 0, 10, 1)
                                  player:addFame(xi.fameArea.BASTOK, 30000)
                                  player:addFame(xi.fameArea.SANDORIA, 30000)
                                  player:addFame(xi.fameArea.JEUNO, 30000)
                                  player:addFame(xi.fameArea.NORG, 30000)
                                  player:addFame(xi.fameArea.WINDURST, 30000)
                                  player:setCharVar('[QoLFame]', 2)
            elseif player:getCharVar('[QoLPorts]') == 1 then
                   player:injectActionPacket(player:getID(), 6, 290, 0, 0, 0, 10, 1)
                    -- add all homepoints
                    local keyIds =
                     {
                        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ,21, 22, 23,
                        24, 25 ,26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44,
                        45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60 ,61, 62, 63, 64, 65,
                        66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
                        87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
                        107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121,
                     }
                    for _, v in ipairs(keyIds) do
                        if not player:hasTeleport(xi.teleport.type.HOMEPOINT,  v % 32, math.floor(v / 32)) then
                               player:addTeleport(xi.teleport.type.HOMEPOINT, v % 32, math.floor(v / 32))
                        end
                    end
                    -- add all survival guide warps
                    local keyIdz =
                     {
                        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ,21, 22, 23,
                        24, 25 ,26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44,
                        45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60 ,61, 62, 63, 64, 65,
                        66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
                        87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 
                     }
                    for _, v in ipairs(keyIdz) do
                        if not player:hasTeleport(xi.teleport.type.SURVIVAL,  v % 32, math.floor(v / 32)) then
                               player:addTeleport(xi.teleport.type.SURVIVAL,v % 32, math.floor(v / 32))
                        end
                    end
                    local eschaPortals =
                     {
                        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ,21, 22, 23,
                        24, 25 ,26, 27, 28, 29, 30, 31
                     }
                    -- add eschaPortals
                    for _, v in ipairs(eschaPortals) do
                        if not player:hasTeleport(xi.teleport.type.ESCHAN_PORTAL, v) then
                               player:addTeleport(xi.teleport.type.ESCHAN_PORTAL, v)
                        end
                    end
                    local confIds =
                          {
                            -- [xi.zone.ABYSSEA_KONSCHTAT] 
                            {0, 0},
                            {0, 1},
                            {0, 2},
                            {0, 3},
                            {0, 4},
                            {0, 5},
                            {0, 6},
                            {0, 7},
                            -- [xi.zone.ABYSSEA_TAHRONGI]
                            {1, 0},
                            {1, 1},
                            {1, 2},
                            {1, 3},
                            {1, 4},
                            {1, 5},
                            {1, 6},
                            {1, 7},
                            -- [xi.zone.ABYSSEA_LA_THEINE]
                            {2, 0},
                            {2, 1},
                            {2, 2},
                            {2, 3},
                            {2, 4},
                            {2, 5},
                            {2, 6},
                            {2, 7},
                            -- [xi.zone.ABYSSEA_ATTOHWA]
                            {3, 0},
                            {3, 1},
                            {3, 2},
                            {3, 3},
                            {3, 4},
                            {3, 5},
                            {3, 6},
                            {3, 7},
                            {3, 8},
                            -- [xi.zone.ABYSSEA_MISAREAUX]
                            {4, 0},
                            {4, 1},
                            {4, 2},
                            {4, 3},
                            {4, 4},
                            {4, 5},
                            {4, 6},
                            {4, 7},
                            {4, 8},
                            -- [xi.zone.ABYSSEA_VUNKERL]
                            {5, 0},
                            {5, 1},
                            {5, 2},
                            {5, 3},
                            {5, 4},
                            {5, 5},
                            {5, 6},
                            {5, 7},
                            {5, 8},
                             -- [xi.zone.ABYSSEA_ALTEPA]
                            {6, 0},
                            {6, 1},
                            {6, 2},
                            {6, 3},
                            {6, 4},
                            {6, 5},
                            {6, 6},
                            {6, 7},
                            -- [xi.zone.ABYSSEA_ULEGUERAND]
                            {7, 0},
                            {7, 1},
                            {7, 2},
                            {7, 3},
                            {7, 4},
                            {7, 5},
                            {7, 6},
                            {7, 7},
                            -- [xi.zone.ABYSSEA_GRAUBERG]
                            {8, 0},
                            {8, 1},
                            {8, 2},
                            {8, 3},
                            {8, 4},
                            {8, 5},
                            {8, 6},
                            {8, 7},
                          }
                    -- add conflux
                    for _, v in ipairs(confIds) do
                        if not player:hasTeleport(xi.teleport.type.ABYSSEA_CONFLUX, v[1], v[2]) then
                               player:addTeleport(xi.teleport.type.ABYSSEA_CONFLUX, v[1], v[2])
                        end
                    end
                    -- add maws
                    for i = 0, 8 do
                        if not player:hasTeleport(xi.teleport.type.PAST_MAW, i) then
                               player:addTeleport(xi.teleport.type.PAST_MAW, i)
                        end
                    end
                    -- add runic portals
                    xi.besieged.addRunicPortal(player, xi.teleport.runic_portal.ILRUSI)
                    xi.besieged.addRunicPortal(player, xi.teleport.runic_portal.DVUCCA)
                    xi.besieged.addRunicPortal(player, xi.teleport.runic_portal.AZOUPH)
                    xi.besieged.addRunicPortal(player, xi.teleport.runic_portal.HALVUNG)
                    xi.besieged.addRunicPortal(player, xi.teleport.runic_portal.MAMOOL)
                    xi.besieged.addRunicPortal(player, xi.teleport.runic_portal.NYZUL)

                    player:setCharVar('[QoLPorts]', 2)
            elseif player:getCharVar('[QoLSpells]') == 1 then
                  -- Corsair Rolls -- 75 only
                    local validCorRolls =
                    {
                        98, -- Fighter's Roll
                        99, -- Monk's Roll
                        100, -- Healer's Roll
                        101, -- Wizard's Roll
                        102, -- Warlock's Roll
                        103, -- Rogue's Roll
                        104, -- Gallant's Roll
                        105, -- Chaos Roll
                        106, -- Beast Roll
                        107, -- Choral Roll
                        108, -- Hunter's Roll
                        109, -- Samurai Roll
                        110, -- Ninja Roll
                        111, -- Drachen Roll
                        112, -- Evoker's Roll
                        113, -- Magus' Roll
                        114, -- Corsair's Roll
                        115, -- Puppet's Roll
                        116, -- Dancer's Roll
                        117, -- Scholar's Roll
                        390, -- Naturalist's Roll
                        391, -- Runeist's Roll
                    }
                   -- all spells
                    local validWhmSpells =
                    {
                        1,2,3,4,5,7,8,9,10,12,13,14,15,16,17,18,19,20,21,23,24,28,29,30,33,34,38,39,
                        43,44,45,46,48,49,50,51,53,54,55,56,57,58,59,66,67,68,69,70,71,81,82,83,86,87,88,89,
                        90,91,92,93,94,95,96,98,108,110,111,112,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,
                        136,137,138,139,140,141,142,143
                    }
                    local validBlmSpells =
                    {
                        135,136,137,138,139,140,141,142,143,144,145,146,147,149,150,151,152,154,155,156,157,159,160,161,162,164,
                        165,166,167,169,170,171,172,174,175,176,179,180,181,184,185,186,189,190,191,194,195,196,199,200,201,204,
                        205,206,207,208,209,210,211,212,213,214,215,220,221,225,226,230,231,235,236,237,238,239,240,241,245,247,
                        249,250,251,252,253,254,258,259,261,262,263,264,273,274
                    }
                    local validRdmSpells =
                    {
                        1,2,3,4,12,23,24,25,33,34,43,44,45,46,48,49,50,51,53,54,55,56,57,58,59,60,61,62,63,64,65,72,73,74,75,76,
                        77,78,79,80,100,101,102,103,104,105,106,107,108,109,136,137,138,144,145,146,149,150,151,154,155,156,159,
                        160,161,164,165,166,169,170,171,216,220,221,230,231,232,249,250,251,253,254,258,259,260,276,312,313,314,
                        315,316,317,841,843,845
                    }
                    local validPldSpells =
                    {
                        1,2,3,4,12,21,28,29,38,43,44,45,46,48,49,50,97,112
                    }
                    local validDrkSpells =
                    {
                        144,145,149,150,154,155,159,160,164,165,169,170,220,221,225,226,230,231,242,245,246,247,252,253,258,259,
                        264,266,267,268,269,270,271,272,275,277
                    }
                    local validBrdSpells =
                    {
                        368,369,370,371,372,373,376,378,379,380,381,382,386,387,389,390,391,392,394,395,396,397,399,400,401,402,
                        403,404,405,406,408,409,410,412,414,415,419,420,421,422,424,425,426,427,428,429,430,431,432,433,434,435,
                        436,437,438,439,440,441,442,443,444,445,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469
                    }
                    local validNinSpells =
                    {
                        318,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,341,344,345,347,348,350,
                        353,354
                    }
                    local validSmnSpells =
                    {
                        288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,307,355
                    }
                    local validBluSpells =
                    {
                        513,515,517,519,521,522,524,527,529,530,531,532,533,534,535,536,537,538,539,
                        540,541,542,543,544,545,547,548,549,551,554,555,557,560,561,563,564,565,567,
                        569,570,572,573,574,575,576,577,578,579,581,582,584,585,587,588,589,591,592,
                        593,594,595,596,597,598,599,603,604,605,606,608,610,611,612,613,614,615,616,
                        617,618,620,621,622,623,626,628,629,631,632,633,634,636,637,638,640,641,642,
                        643,644,645,646,647,648,650,651,652,653,654,655
                    }
                    local validSchSpells =
                    {
                        1,2,3,4,12,13,14,15,16,17,18,19,20,43,44,45,46,48,49,50,51,53,54,55,99,108,110,
                        111,113,114,115,116,117,118,119,135,136,137,138,141,143,144,145,146,147,149,150,
                        151,152,154,155,156,157,159,160,161,162,164,165,166,167,169,170,171,172,245,247,
                        249,250,251,253,259,260,278,279,280,281,282,283,284,285,287,478,502
                    }
                    local validGeoSpells =
                    {
                        144,145,146,149,150,151,154,155,156,159,160,161,164,165,166,169,170,171,245,
                        247,253,259,768,769,770,772,773,774,775,776,777,778,779,780,781,782,783,784,
                        785,786,791,792,793,794,795,796,798,799,800,802,803,804,805,806,807,808,809,
                        810,811,812,813,814,815,816,821,822,823,824,825,826,828,830,832,834,835,836,
                        838,839
                    }
                    local validRunSpells =
                    {
                        43,44,45,48,49,50,51,53,54,55,60,61,62,63,64,65,72,73,74,75,76,77,78,106,108,
                        109,110,111,112,249,250,840
                    }

                local function AddCorRolls(player)
                          for i = 1, #validCorRolls do
                                if i == #validCorRolls then
                                   silent = false
                                   sendUpdate = true
                                end
                                player:addLearnedAbility(validCorRolls[i], true, true)
                          end
                end

                local function AddWhmSpells(player)
                          for i = 1, #validWhmSpells do
                                if i == #validWhmSpells then
                                   silent = false
                                   sendUpdate = true
                                end
                                player:addSpell(validWhmSpells[i], true, true)
                          end
                end

                local function AddBlmSpells(player)
                          for i = 1, #validBlmSpells do
                                if i == #validBlmSpells then
                                   silent = false
                                   sendUpdate = true
                                end
                                player:addSpell(validBlmSpells[i], true, true)
                          end
                end

                local function AddRdmSpells(player)
                          for i = 1, #validRdmSpells do
                                if i == #validRdmSpells then
                                   silent = false
                                   sendUpdate = true
                                end
                                player:addSpell(validRdmSpells[i], true, true)
                          end
                end

                local function AddPldSpells(player)
                          for i = 1, #validPldSpells do
                                if i == #validPldSpells then
                                   silent = false
                                   sendUpdate = true
                                end
                                player:addSpell(validPldSpells[i], true, true)
                          end
                end

                local function AddDrkSpells(player)
                          for i = 1, #validDrkSpells do
                                if i == #validDrkSpells then
                                   silent = false
                                   sendUpdate = true
                                end
                                player:addSpell(validDrkSpells[i], true, true)
                          end
                end

                local function AddBrdSpells(player)
                          for i = 1, #validBrdSpells do
                                if i == #validBrdSpells then
                                   silent = false
                                   sendUpdate = true
                                end
                                player:addSpell(validBrdSpells[i], true, true)
                          end
                end

                local function AddNinSpells(player)
                          for i = 1, #validNinSpells do
                                if i == #validNinSpells then
                                   silent = false
                                   sendUpdate = true
                                end
                                player:addSpell(validNinSpells[i], true, true)
                          end
                end

                local function AddSmnSpells(player)
                          for i = 1, #validSmnSpells do
                                if i == #validSmnSpells then
                                   silent = false
                                   sendUpdate = true
                                end
                                player:addSpell(validSmnSpells[i], true, true)
                          end
                end
                local function AddBluSpells(player)
                          for i = 1, #validBluSpells do
                                if i == #validBluSpells then
                                   silent = false
                                   sendUpdate = true
                                end
                                player:addSpell(validBluSpells[i], true, true)
                          end
                end

                local function AddSchSpells(player)
                          for i = 1, #validSchSpells do
                                if i == #validSchSpells then
                                   silent = false
                                   sendUpdate = true
                                end
                                player:addSpell(validSchSpells[i], true, true)
                          end
                end

                local function AddGeoSpells(player)
                          for i = 1, #validGeoSpells do
                                if i == #validGeoSpells then
                                   silent = false
                                   sendUpdate = true
                                end
                                player:addSpell(validGeoSpells[i], true, true)
                          end
                end

                local function AddRunSpells(player)
                          for i = 1, #validRunSpells do
                                if i == #validRunSpells then
                                   silent = false
                                   sendUpdate = true
                                end
                                player:addSpell(validRunSpells[i], true, true)
                          end
                end
                player:printToPlayer(string.format("******Please wait. This will take a moment.*******"),xi.msg.channel.NS_SAY)
                player:timer(60, function(playerArg)
                playerArg:printToPlayer('Learning Cor Rolls',xi.msg.channel.NS_SAY)
                AddCorRolls(player)
                end)
                player:timer(180, function(playerArg)
                playerArg:printToPlayer('Learning Whm Spells',xi.msg.channel.NS_SAY)
                AddWhmSpells(player)
                end)
                player:timer(360, function(playerArg)
                playerArg:printToPlayer('Learning Blm Spells',xi.msg.channel.NS_SAY)
                AddBlmSpells(player)
                end)
                player:timer(540, function(playerArg)
                playerArg:printToPlayer('Learning Rdm Spells',xi.msg.channel.NS_SAY)
                AddRdmSpells(player)
                end)
                player:timer(720, function(playerArg)
                playerArg:printToPlayer('Learning Pld Spells',xi.msg.channel.NS_SAY)
                AddPldSpells(player)
                end)
                player:timer(900, function(playerArg)
                playerArg:printToPlayer('Learning Drk Spells',xi.msg.channel.NS_SAY)
                AddDrkSpells(player)
                end)
                player:timer(1080, function(playerArg)
                playerArg:printToPlayer('Learning Brd Songs',xi.msg.channel.NS_SAY)
                AddBrdSpells(player)
                end)
                player:timer(1260, function(playerArg)
                playerArg:printToPlayer('Learning Nin Spells',xi.msg.channel.NS_SAY)
                AddNinSpells(player)
                end)
                player:timer(1440, function(playerArg)
                playerArg:printToPlayer('Learning Smn Spells',xi.msg.channel.NS_SAY)
                AddSmnSpells(player)
                end)
                player:timer(1620, function(playerArg)
                playerArg:printToPlayer('Learning Blu Spells',xi.msg.channel.NS_SAY)
                AddBluSpells(player)
                end)
                player:timer(1800, function(playerArg)
                playerArg:printToPlayer('Learning Sch Spells',xi.msg.channel.NS_SAY)
                AddSchSpells(player)
                end)
                player:timer(1980, function(playerArg)
                playerArg:printToPlayer('Learning Geo Spells',xi.msg.channel.NS_SAY)
                AddGeoSpells(player)
                end)
                player:timer(2160, function(playerArg)
                playerArg:printToPlayer('Learning Run Spells',xi.msg.channel.NS_SAY)
                AddRunSpells(player)
                playerArg:printToPlayer('You have learned all spells!',xi.msg.channel.NS_SAY)
                player:setCharVar('[QoLSpells]', 2)
                end)
            end
        end,
    },
    {
        'No',
        function(player)            
        end,
    },
}

m:addOverride('xi.zones.Mog_Garden.Zone.onInitialize', function(zone)
    super(zone)
    local QolNpc = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'QolNpc ',
        look = 298,
        x = 376.2657,
        y = -2.1058,
        z = -572.5261,
        rotation = 134,


        onTrade = function(player, npc, trade)
            if npcUtil.tradeHasExactly(trade, xi.item.FLINT_STONE) then -- item 738
                if not player:hasItem(xi.item.SAN_DORIAN_RING) or
                   not player:hasItem(xi.item.BASTOKAN_RING) or
                   not player:hasItem(xi.item.WINDURSTIAN_RING) then
                       player:addItem(xi.item.SAN_DORIAN_RING)
                       player:addItem(xi.item.BASTOKAN_RING)
                       player:addItem(xi.item.WINDURSTIAN_RING)
                elseif
                       player:hasItem(xi.item.SAN_DORIAN_RING) then
                       player:addItem(xi.item.BASTOKAN_RING)
                       player:addItem(xi.item.WINDURSTIAN_RING)
                elseif
                       player:hasItem(xi.item.BASTOKAN_RING) then
                       player:addItem(xi.item.WINDURSTIAN_RING)
                       player:addItem(xi.item.SAN_DORIAN_RING)
                elseif
                       player:hasItem(xi.item.WINDURSTIAN_RING) then
                       player:addItem(xi.item.SAN_DORIAN_RING)
                       player:addItem(xi.item.BASTOKAN_RING)
                end
            end
        end,
        onTrigger = function(player, npc)
            player:printToPlayer('GM General : Welcome Adventurer!', xi.msg.channel.SYSTEM_3, '')
            player:printToPlayer('GM General : Please be aware, each of the QoL are locked behind a nation rank!', xi.msg.channel.SYSTEM_3, '')
            player:printToPlayer('\nMax Fame         - Rank 2\nAll Jobs           - Rank 4\nAll Spells         - Rank 6\nAll Teleports     - Rank 8\nAll Weaponskills - Rank 10', xi.msg.channel.SYSTEM_3, '')
               menu.options = rewards
               delaySendMenu(player)
        end,
        releaseIdOnDisappear = true,
    })
    QolNpc:hideName(true)
    utils.unused(QolNpc)
end)

return m

