-----------------------------------
-- Lightning
-- Lightning: Magical Damage Element: Thunder damage, shock (-18 HP/tic), and stun. Removes all shadows.
-----------------------------------
---@type TMobSkill
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    local damage = mob:getWeaponDmg() * math.random(4, 6)

    damage = xi.mobskills.mobMagicalMove(mob, target, skill, damage, xi.element.THUNDER, 1, xi.mobskills.magicalTpBonus.NO_EFFECT)
    damage = xi.mobskills.mobFinalAdjustments(damage, mob, skill, target, xi.attackType.MAGICAL, xi.damageType.THUNDER, xi.mobskills.shadowBehavior.WIPE_SHADOWS)
    target:takeDamage(damage, mob, xi.attackType.MAGICAL, xi.damageType.THUNDER)
    target:addStatusEffect(xi.effect.STUN, 1, 0, 2)
    if not target:hasStatusEffect(xi.effect.SHOCK) then
           target:addStatusEffect(xi.effect.SHOCK,18,3,180)
    end
    return damage
end

return mobskillObject
