-------------------------------------------------------------------------------------------
-- func: !eventnm
-- desc: Spawns a nm that gives no drops, Combine with !reward or !reward2 for event.
------------------------------------------------------------------------------------------

local commandObj = {}

commandObj.cmdprops =
{
    permission = 3,
    parameters = 'ii'
}

local function error(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!eventmob <NM #> <Set lvl of NM>')
    player:printToPlayer("1 Earth Worm Jim", 0x3)
    player:printToPlayer("2 Thunder Pony", 0x3)
    player:printToPlayer("3 Flower", 0x3)
    player:printToPlayer("4 The Deep", 0x3)
    player:printToPlayer("5 Mister Crabs", 0x3)
    player:printToPlayer("6 Bowser", 0x3)
end

local mobs = {
    [1] = {name = 'Earth Worm Jim', groupId = 40, groupZoneId = 45},
    [2] = {name = 'Thunder Pony', groupId = 52, groupZoneId = 89},
    [3] = {name = 'Flower', groupId = 39, groupZoneId = 216, mods = {ATT = 100, DEF = 70, MAIN_DMG_RATING = 25, DOUBLE_ATTACK = 50, REGEN = 15}, mobMods = {ROAM_DISTANCE = 20}},
    [4] = {name = 'The Deep', groupId = 42, groupZoneId = 216, mods = {ATT = 180, DEF = 100, MAIN_DMG_RATING = 35, DOUBLE_ATTACK = 20, REGEN = 15}, mobMods = {ROAM_DISTANCE = 10}},
    [5] = {name = 'Mister Crabs', groupId = 37, groupZoneId = 262, mods = {ATT = 140, DEF = 120, MAIN_DMG_RATING = 30, DOUBLE_ATTACK = 22, REGEN = 15}, mobMods = {ROAM_DISTANCE = 15}},
    [6] = {name = 'Bowser', groupId = 38, groupZoneId = 265, mods = {ATT = 300, DEF = 180, MAIN_DMG_RATING = 40, DOUBLE_ATTACK = 20, REGEN = 20}, mobMods = {ROAM_DISTANCE = 17}},
    -- Add more mobs as needed
}

commandObj.onTrigger = function(player, mobId, level)
    if not mobId or not mobs[mobId] then
        error(player, 'Invalid mob ID specified.')
        return
    end
    
    if not level or level <= 0 then
        error(player, 'Invalid level specified.')
        return
    end

    local zoneOrInstanceObj = player:getZone()
    local instance = player:getInstance()
    if instance then
        zoneOrInstanceObj = instance
    end

    local mobData = mobs[mobId]

    local mob = zoneOrInstanceObj:insertDynamicEntity({
        objtype = xi.objType.MOB,
        name = mobData.name,
        x = player:getXPos(),
        y = player:getYPos(),
        z = player:getZPos(),
        rotation = player:getRotPos(),
        groupId = mobData.groupId,
        groupZoneId = mobData.groupZoneId,
        onMobDeath = function(mob, playerArg, optParams)
            mob:setLocalVar('Killed', 1) -- Mark the mob as killed
            player:printToArea(string.format('NM %s has been defeated, Good Job Adventurers!', mobData.name, player:getZoneName()), xi.msg.channel.SYSTEM_3, 0)
        end,
        onMobDespawn = function(mob, playerArg, optParams)
            if mob:getLocalVar('Killed') == 0 then -- Only show despawn message if the mob was not killed
                player:printToArea(string.format('NM %s has disappeared from %s!', mobData.name, player:getZoneName()), xi.msg.channel.SYSTEM_3, 0)
            end
        end,
        releaseIdOnDisappear = true,
        mixins = {
            require('scripts/mixins.job_special'),
        },
        specialSpawnAnimation = true,
    })

    mob:setSpawn(player:getXPos(), player:getYPos(), player:getZPos(), player:getRotPos())
    mob:setClaimable(false)
	mob:spawn()
    
    -- Setting mob level, drop settings, and despawn time early
    player:printToPlayer('Setting mob level to: ' .. tostring(level))
    mob:setMobLevel(level)
    mob:setDropID(0) -- No loot!
    mob:setMobMod(xi.mobMod.NO_DROPS, 1)
    player:printToArea(string.format('NM %s has been spotted in %s, The NM will leave the zone in 30 mins', mobData.name, player:getZoneName(), level), xi.msg.channel.SYSTEM_3, 0)
    mob:setLocalVar('DespawnTime', os.time() + 1800)
    mob:setLocalVar('Killed', 0) -- Initialize the 'Killed' variable to 0
    
    mob:addListener('TICK', 'MOB_DESPAWN_CHECK', function(mob)
        if mob:getLocalVar('DespawnTime') <= os.time() then
            DespawnMob(mob:getID())
        end
    end)

    -- Apply mods and mobMods to the mob
    if mobData.mods then
        for mod, value in pairs(mobData.mods) do
            mob:addMod(xi.mod[mod], value)
        end
    end
    
    if mobData.mobMods then
        for mobMod, value in pairs(mobData.mobMods) do
            mob:setMobMod(xi.mobMod[mobMod], value)
        end
    end
	
    player:printToPlayer(string.format('Spawning %s (Lv: %i, HP: %i)\n%s', mobData.name, mob:getMainLvl(), mob:getMaxHP(), mob))
end

return commandObj

