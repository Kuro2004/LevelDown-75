-----------------------------------
-- Trust: mumor_ii
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('mumor_ii')

m:addOverride("xi.actions.spells.trust.mumor_ii.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())
    
    trust:addStatusEffectEx(xi.effect.COLURE_ACTIVE, xi.effect.COLURE_ACTIVE, 6, 3, 0, xi.effect.REGAIN, 2, xi.auraTarget.ALLIES, xi.effectFlag.AURA)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.MB_AVAILABLE, 0, ai.r.MA, ai.s.MB_ELEMENT, xi.magic.spellFamily.NONE)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.NOT_SC_AVAILABLE, 0, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.NONE, 60)
    local power = 100 - trust:getMainLvl()
    local pow2 = math.floor(power / 3)
    trust:addMod(xi.mod.MATT, -power)
    trust:addMod(xi.mod.INT, -pow2)
end)

return m
