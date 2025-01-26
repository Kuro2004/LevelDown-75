
-----------------------------------
require("modules/module_utils")
-----------------------------------
local m = Module:new("reapplybuff")


m:addOverride("xi.effects.dedication.onEffectTick", function(target,effect)
super(target,effect)

if target:getCharVar('BuffJob') ~= target:getMainJob() then
   target:setCharVar('Buff',0)
   target:setCharVar('BuffJob',0)
   target:setCharVar('BuffLvl',0)
   target:delStatusEffect(xi.effect.DEDICATION)
local power        = 50

   if target:getMainLvl() ~= 75 then
    -- Remove bonus mods..
    target:delMod(xi.mod.ATT, power)
    target:delMod(xi.mod.RACC, power)
    target:delMod(xi.mod.RATT, power)
    target:delMod(xi.mod.ACC, power)
    target:delMod(xi.mod.MATT, power)
    target:delMod(xi.mod.MACC, power)
    target:delMod(xi.mod.RDEF, power)
    target:delMod(xi.mod.DEF, power)
    target:delMod(xi.mod.MDEF, power)
    end
end
end)


m:addOverride("xi.effects.dedication.onEffectLose", function(target,effect)
super(target,effect)
if target:getCharVar('Buff') == 1 then
   target:addStatusEffect(xi.effect.DEDICATION, 500, 3, 0, 0, 30000) -- max 30000 or server crash
end
end)

m:addOverride("xi.effects.commitment.onEffectLose", function(target,effect)
super(target,effect)
if target:getCharVar('Buff') == 2 then
   target:addStatusEffect(xi.effect.COMMITMENT, 40, 0, 0, 0, 30000) -- max 30000 or server crash
end
end)


return m
