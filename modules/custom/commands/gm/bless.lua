---------------------------------------------------------------------------------------------------
-- func: @heal <target>
-- desc: Removes any/all detrimental effects from target
---------------------------------------------------------------------------------------------------

local commandObj = {}
commandObj.cmdprops =
{
    permission = 3,
    parameters = "s"
}

commandObj.onTrigger = function(player, target)

    if (target == nil) then
        target = player:getName();
    end

    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
        targ:delStatusEffect(xi.effect.SLEEP_I);
        targ:delStatusEffect(xi.effect.POISON);
        targ:delStatusEffect(xi.effect.PARALYSIS);
        targ:delStatusEffect(xi.effect.BLINDNESS);
        targ:delStatusEffect(xi.effect.SILENCE);
		targ:delStatusEffect(xi.effect.PETRIFICATION);
		targ:delStatusEffect(xi.effect.DISEASE);
		targ:delStatusEffect(xi.effect.CURSE_I);
		targ:delStatusEffect(xi.effect.BIND);
		targ:delStatusEffect(xi.effect.WEIGHT);
		targ:delStatusEffect(xi.effect.SLOW);
		targ:delStatusEffect(xi.effect.CHARM_I);
		targ:delStatusEffect(xi.effect.DOOM);
		targ:delStatusEffect(xi.effect.AMNESIA);
		targ:delStatusEffect(xi.effect.SLEEP_II);
		targ:delStatusEffect(xi.effect.TERROR);
		targ:delStatusEffect(xi.effect.CURSE_II);
		targ:delStatusEffect(xi.effect.PLAGUE);
		targ:delStatusEffect(xi.effect.WEAKNESS);
		targ:delStatusEffect(xi.effect.STUN);
		targ:delStatusEffect(xi.effect.BURN);
		targ:delStatusEffect(xi.effect.FROST);
		targ:delStatusEffect(xi.effect.CHOKE);
		targ:delStatusEffect(xi.effect.RASP);
		targ:delStatusEffect(xi.effect.SHOCK);
		targ:delStatusEffect(xi.effect.DROWN);
		targ:delStatusEffect(xi.effect.DIA);
		targ:delStatusEffect(xi.effect.BIO);
		targ:delStatusEffect(xi.effect.STR_DOWN);
		targ:delStatusEffect(xi.effect.DEX_DOWN);
		targ:delStatusEffect(xi.effect.VIT_DOWN);
		targ:delStatusEffect(xi.effect.AGI_DOWN);
		targ:delStatusEffect(xi.effect.INT_DOWN);
		targ:delStatusEffect(xi.effect.MND_DOWN);
		targ:delStatusEffect(xi.effect.CHR_DOWN);
		targ:delStatusEffect(xi.effect.MAX_HP_DOWN);
		targ:delStatusEffect(xi.effect.MAX_MP_DOWN);
		targ:delStatusEffect(xi.effect.ACCURACY_DOWN);
		targ:delStatusEffect(xi.effect.ATTACK_DOWN);
		targ:delStatusEffect(xi.effect.EVASION_DOWN);
		targ:delStatusEffect(xi.effect.DEFENSE_DOWN);
		targ:delStatusEffect(xi.effect.FLASH);
		targ:delStatusEffect(xi.effect.MAGIC_DEF_DOWN);
		targ:delStatusEffect(xi.effect.MAGIC_ACC_DOWN);
		targ:delStatusEffect(xi.effect.MAGIC_ATK_DOWN);
		targ:delStatusEffect(xi.effect.MAX_TP_DOWN);
		targ:delStatusEffect(xi.effect.REQUIEM);
		targ:delStatusEffect(xi.effect.ELEGY);
		targ:delStatusEffect(xi.effect.ENMITY_DOWN);
		targ:delStatusEffect(xi.effect.CRIT_HIT_EVASION_DOWN);
		targ:delStatusEffect(xi.effect.MAGIC_EVASION_DOWN);
		targ:delStatusEffect(xi.effect.LULLABY);
    else
        player:printToPlayer( string.format( "Player named '%s' not found!", target ) );
    end
end

return commandObj
