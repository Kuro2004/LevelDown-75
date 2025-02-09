local commandObj = {}

commandObj.cmdprops = {
    permission = 1,
    parameters = ''
}

local drops = {
    [1]={reward = 1488}, -- A_egg
    [2]={reward = 1489}, -- B_egg
    [3]={reward = 1490}, -- C_egg
    [4]={reward = 1491}, -- D_egg
    [5]={reward = 1492}, -- E_egg
    [6]={reward = 1493}, -- F_egg
    [7]={reward = 1494}, -- G_egg
    [8]={reward = 1495}, -- H_egg
    [9]={reward = 1496}, -- I_egg
    [10]={reward = 1497}, -- J_egg
    [11]={reward = 1498}, -- K_egg
    [12]={reward = 1499}, -- L_egg
    [13]={reward = 1500}, -- M_egg
    [14]={reward = 1501}, -- N_egg
    [15]={reward = 1502}, -- O_egg
    [16]={reward = 1503}, -- P_egg
    [17]={reward = 1504}, -- Q_egg
    [18]={reward = 1505}, -- R_egg
    [19]={reward = 1506}, -- S_egg
    [20]={reward = 1507}, -- T_egg
    [21]={reward = 1508}, -- U_egg
    [22]={reward = 1509}, -- V_egg
    [23]={reward = 1510}, -- W_egg
    [24]={reward = 1511}, -- X_egg
    [25]={reward = 1512}, -- Y_egg
    [26]={reward = 1513}, -- Z_egg
    [27]={reward = 4487}, -- Colored_Egg
    [28]={reward = 4595}, -- Party_Egg
    [29]={reward = 4600}, -- Lucky_Egg
    [30]={reward = 18168}, -- Imperial_Egg
    [31]={reward = 18256}, -- Orphic_Egg
    [32]={reward = 18167}, -- Fortune_Egg
    [33]={reward = 18166}, -- Happy_Egg
}

local endMessageSent = false  -- Global flag to ensure the end message is printed only once for each event

commandObj.onTrigger = function(player)
    -- Reset the flag for the new event
    endMessageSent = false

    local zoneId = player:getZoneID()
    local zoneName = (zoneId == 280) and "The Hangout" or player:getZoneName()

    player:printToArea(string.format('GM: The Moles have stolen our eggs, they have been spotted in %s!', zoneName), xi.msg.channel.SYSTEM_3, 0)
    player:printToArea('GM: Help us stop them, We have 10 minutes before they disappear back into the ground!', xi.msg.channel.SYSTEM_3, 0)

    for i = 1, 10 do 
        local zoneOrInstanceObj = player:getZone()
        local instance = player:getInstance()
        if instance then
            zoneOrInstanceObj = instance
        end

        local mob = zoneOrInstanceObj:insertDynamicEntity({
            objtype = xi.objType.MOB,
            name = 'Mole',
            look = 1972,
            x = player:getXPos(),
            y = player:getYPos(),
            z = player:getZPos(),
            rotation = player:getRotPos(),
            groupId = 17,
            groupZoneId = 95,
            allegiance = 0,
            widescan = 1,

            onMobSpawn = function(mob, playerArg, optParams)
                mob:setMobMod(xi.mobMod.ROAM_DISTANCE, 45)
                mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
                mob:addMod(xi.mod.REGEN, 1000)
                mob:addMod(xi.mod.DMG, -500)
                mob:addMod(xi.mod.ATT, -1000)
                mob:addMod(xi.mod.ACC, -1000)
                mob:addMod(xi.mod.EVA, -500)
                mob:addMod(xi.mod.DEF, -500)
                mob:setUnkillable(true)
                mob:addStatusEffectEx(xi.effect.ARROW_SHIELD, 0, 1, 0, 0)   
                mob:addStatusEffectEx(xi.effect.MAGIC_SHIELD, 0, 1, 0, 0)				
                mob:setLocalVar('MoleDespawn', os.time() + 600) -- Despawn after 10 minutes
            end,

            onMobFight = function(mob, target)
                -- Apply Amnesia effect immediately upon fight initiation (10 minutes)
                target:addStatusEffect(xi.effect.AMNESIA, 1, 0, 600)
                
				if mob:getHP() <= mob:getMaxHP() then
                    for i = xi.slot.MAIN, xi.slot.BACK do
                        target:unequipItem(i)
                    end
                end
                mob:addListener('TAKE_DAMAGE', 'MOLE_TAKE_DAMAGE', function(mob, damage, attacker, attackType, damageType)
                    if attackType == xi.attackType.PHYSICAL and
                       damageType == xi.damageType.NONE or
                       damageType == xi.damageType.HTH then
                        local rand = math.random(1, 20)
                        local randz = math.random(1, 330)
                        if rand == 5 then
                            npcUtil.giveItem(target, { { xi.item.GIL, math.random(500, 10000) } })
                        end
                        for k, v in pairs(drops) do
                            if randz == k then
                                npcUtil.giveItem(target, { { v.reward, 1 } })
                            end
                        end
                    end
                end)
                if mob:getLocalVar('MoleDespawn') <= os.time() then
                    DespawnMob(mob:getID())
                end
            end,

            onMobRoam = function(mob)
                if mob:getLocalVar('MoleDespawn') <= os.time() then
                    DespawnMob(mob:getID())
                end
            end,

            onMobDespawn = function(mob, playerArg, optParams)
                -- Only send the end message if it hasn't been sent yet
                if not endMessageSent then
                    player:printToArea('GM: The Moles have retreated back into the ground!', xi.msg.channel.SYSTEM_3, 0)
                    endMessageSent = true
                end
            end,

            releaseIdOnDisappear = true,
            specialSpawnAnimation = true,
        })

        mob:setSpawn(player:getXPos() + math.random(-5,15), player:getYPos(), player:getZPos() + math.random(-5,15), player:getRotPos())

        mob:setDropID(0) -- No loot!
        mob:setMobMod(xi.mobMod.NO_DROPS, 1)
        mob:setClaimable(false)
        mob:spawn()

        mob:setLocalVar('DespawnTime', os.time() + 600) -- Despawn after 10 minutes

        mob:addListener('TICK', 'MOB_DESPAWN_CHECK', function(mob)
            if mob:getLocalVar('DespawnTime') <= os.time() then
                DespawnMob(mob:getID())
            end
        end)
    end
end

return commandObj
