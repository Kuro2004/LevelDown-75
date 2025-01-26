-----------------------------------
-- Trust: ullegore
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('Ullegore')


m:addOverride("xi.actions.spells.trust.ullegore.onMobSpawn", function(mob)
   xi.trust.message(mob, xi.trust.messageOffset.SPAWN)

    mob:addSimpleGambit(ai.t.TARGET, ai.c.MB_AVAILABLE, 0, ai.r.MA, ai.s.MB_ELEMENT, xi.magic.spellFamily.NONE)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_SC_AVAILABLE, 0, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.NONE, 30)

    mob:addListener('WEAPONSKILL_USE',  'MEMENTO_MORI_ABILITY', function(mobArg, target, wsid, tp, action)
                        if wsid == 3624 then
                                mob:timer(30, function(mobArg)
                                mobArg:castSpell(219) -- comet
                                end)
                        end
    end)
    mob:addListener('WEAPONSKILL_USE',  'BORED_TO_TEARS_ABILITY', function(mobArg, target, wsid, tp, action)
                        if wsid == 3627 then -- bored to tears
                            -- The <target> has become noticeably bored"!
                            xi.trust.message(mobArg, xi.trust.messageOffset.SPECIAL_MOVE_1)
                        end
    end)

    mob:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.RANDOM)
end)
return m
