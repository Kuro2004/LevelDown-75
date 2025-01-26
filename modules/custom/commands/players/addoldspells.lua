-----------------------------------
-- func: addoldspells
-- desc: Adds spells to player basedon job, in place due to issue with NPC
-----------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 5,
    parameters = 's'
}

local function error(player, msg)
    player:PrintToPlayer(msg)
    player:PrintToPlayer('!addoldspells <player>')
end

commandObj.onTrigger = function(player, target)
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


            if player:getCharVar('[QoLSpells]') == 2 then
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
                end)
            end
end

return commandObj
