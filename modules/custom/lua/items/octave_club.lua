-----------------------------------
-- ID: 18852
-- Octave club (Rare Ex)
-----------------------------------
require("modules/module_utils")
--------------------------------------------

local m = Module:new("octave_club")

xi.module.ensureTable("xi.items.octave_club")

m:addOverride("xi.items.octave_club.onItemEquip", function(target)
    if target:getGMLevel() > 2 and target:checkNameFlags(0x04000000) then
        return 0
    elseif
        target:getEquipID(xi.slot.MAIN) == xi.item.KRAKEN_CLUB
    then
        target:unequipItem(xi.slot.SUB)
        target:messageBasic(xi.msg.basic.ITEM_UNABLE_TO_USE)
    else
        return 0
    end
end)

return m
