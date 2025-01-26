-----------------------------------
require("modules/module_utils")
-----------------------------------
local m = Module:new("rejaNpc")

m:addOverride('xi.zones.Mog_Garden.Zone.onInitialize', function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)
    local Reja = zone:insertDynamicEntity({
        -- NPC or MOB
        objtype = xi.objType.NPC,
        name = 'Reja',
        look = '01000a0700105821003058413950006000700000',
        x = 316.8653,
        y = -1.1432,
        z = -581.5409,
        rotation = 253,
        widescan = 1,

     onTrade = function(player, npc, trade)
     end,

     onTrigger = function(player, npc)
          if player:getCharVar('[CapAllSkills]') == 0 then
             player:capAllSkills()
             player:setCharVar('[CapAllSkills]', 1)
             player:printToPlayer('All your Skills have been capped!', 0, npc:getPacketName())
          end
     end,  
    })
    utils.unused(Reja)
end)
return m
