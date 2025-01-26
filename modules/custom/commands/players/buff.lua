-----------------------------------
-- func: buff
-- desc: Toggles buff on the player, granting them several special abilities.
-----------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 0,
    parameters = 'i'
}

local buffOn = function(player)
    player:setCharVar('BuffLvl', player:getMainLvl())
    player:setCharVar('BuffJob', player:getMainJob())
    player:setCharVar('Buff', 1)
    -- Add bonus effects to the player..
    player:addStatusEffect(xi.effect.REGAIN, 25, 0, 0)
    player:addStatusEffect(xi.effect.REFRESH, 10, 0, 0)
    player:addStatusEffect(xi.effect.REGEN, 10, 0, 0)
        if player:hasStatusEffect(xi.effect.DEDICATION) then
           return
           else
           player:addStatusEffect(xi.effect.DEDICATION, 500, 3, 0, 0, 30000) -- max 30000 or server crash
        end
    -- Add bonus mods to the player..
    player:addMod(xi.mod.RACC, 50)
    player:addMod(xi.mod.RATT, 50)
    player:addMod(xi.mod.ACC, 50)
    player:addMod(xi.mod.ATT, 50)
    player:addMod(xi.mod.MATT, 50)
    player:addMod(xi.mod.MACC, 50)
    player:addMod(xi.mod.RDEF, 50)
    player:addMod(xi.mod.DEF, 50)
    player:addMod(xi.mod.MDEF, 50)
end

local buffOff = function(player)
    player:setCharVar('Buff', 0)
    player:setCharVar('BuffLvl', 0)
    player:setCharVar('BuffJob', 0)
    -- Remove bonus effects..
    player:delStatusEffect(xi.effect.REGAIN)
    player:delStatusEffect(xi.effect.DEDICATION)
    player:delStatusEffect(xi.effect.REFRESH)
    player:delStatusEffect(xi.effect.REGEN)
    -- Remove bonus mods..
    player:delMod(xi.mod.ATT, 50)
    player:delMod(xi.mod.RACC, 50)
    player:delMod(xi.mod.RATT, 50)
    player:delMod(xi.mod.ACC, 50)
    player:delMod(xi.mod.MATT, 50)
    player:delMod(xi.mod.MACC, 50)
    player:delMod(xi.mod.RDEF, 50)
    player:delMod(xi.mod.DEF, 50)
    player:delMod(xi.mod.MDEF, 50)
end


local buffOnCap = function(player)
    player:addStatusEffect(xi.effect.DEDICATION, 40, 3, 0, 0, 30000)
    player:setCharVar('BuffLvl', player:getMainLvl())
    player:setCharVar('BuffJob', player:getMainJob())
    player:setCharVar('Buff', 2)
end

local buffOffCap = function(player)
    player:setCharVar('Buff', 0)
    player:setCharVar('BuffLvl', 0)
    player:setCharVar('BuffJob', 0)
    player:delStatusEffect(xi.effect.DEDICATION)
end


commandObj.onTrigger = function(player, tier)
  local mode = utils.clamp(tier or 0, 0, 2)
  local state = player:getCharVar('Buff')
  if player:hasStatusEffect(xi.effect.BATTLEFIELD) then
     player:printToPlayer('You cannot use or have !buff in battlefields.')
     return
  else
    if state == 0 and -- add only dedication for lvl 75
        player:getMainLvl() == 75 then
        if player:hasStatusEffect(xi.effect.DEDICATION) then
            return
            else
                buffOnCap(player)
                player:printToPlayer('Buff enabled.')
            end
    elseif state == 0 and -- add dedication and buffs for below 75
        player:getMainLvl() <= 74 then
        buffOn(player)
        player:printToPlayer('Buff enabled.')
    elseif state == 1 then -- remove buff from below 75
        buffOff(player)
        player:printToPlayer('Buff disabled.')
    elseif state == 2 then -- remove buff from 75
        buffOffCap(player)
        player:printToPlayer('Buff disabled.')
    end

  end
end
return commandObj
