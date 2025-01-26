-----------------------------------
-- Master Baiter's Fishing Shop (Mog_Garden)
-----------------------------------
require("modules/module_utils")
require("scripts/globals/npc_util")
require("scripts/globals/utils")
require("scripts/globals/missions")
require("modules/module_utils")
require("scripts/zones/Mog_Garden/Zone")
local ID = require("scripts/zones/Mog_Garden/IDs")
-----------------------------------
local m = Module:new("fishing_shop")

m:addOverride('xi.zones.Mog_Garden.Zone.onInitialize', function(zone)
    super(zone)

    local fishing_stock =
    {
        17391,   2000,   -- Willow Fishing Rod
        17390,   2000,   -- Yew Fishing Rod
        17384,   6000,   -- Carbon Fishing Rod
        17015,  16000,   -- Halcyon Fishing Rod
        15452,  50000,   -- Fisherman's Belt
        15552,  100000,  -- Albatross Ring
        15845,  100000,  -- Seagull Ring
        15846,  100000,  --  Heron Ring
        16998,    400,   -- Ball of insect paste
        17407,   3000,   -- Minnow
    }

    local masterbaiter = zone:insertDynamicEntity({

        objtype = xi.objType.NPC,
        name = "Master Baiter",
        look = 2722,
        x = 328.3566,
        y = 0.2649,
        z = -588.5366,
        rotation = 62,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,

        -- Offer crystals to buy
        onTrigger = function(player, npc)
            player:printToPlayer("You gets fishing gear? You looks at me wares.", 0, npc:getPacketName())
            xi.shop.general(player, fishing_stock)
        end,
    })

    utils.unused(masterbaiter)
end)

return m
