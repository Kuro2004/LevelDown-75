-----------------------------------
-- Updated to include trading to bypass boat
-----------------------------------

require("modules/module_utils")
require("scripts/globals/npc_util")
local ID = zones[xi.zone.BIBIBKI_BAY]

local m = Module:new("Fheli_Lapatzuo")

m:addOverride("xi.zones.Bibiki_Bay.npcs.Fheli_Lapatzuo.onTrade", function(player, npc, trade)
super(player, npc, trade)
    if trade:getItemQty(xi.item.GIL, 0) == 1000 then
       player:setPos(-393.5172, -3.0001, -389.4102, 66, 4)
    end
end)


return m