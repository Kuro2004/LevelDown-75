-----------------------------------
-- Rewards Chest (Mog_Garden)
-----------------------------------
require("modules/module_utils")
require("scripts/globals/npc_util")
require("scripts/globals/utils")
require("scripts/globals/missions")
require("modules/module_utils")
require("scripts/zones/Mog_Garden/Zone")
local ID = require("scripts/zones/Mog_Garden/IDs")
-----------------------------------
local m = Module:new("claim_rewards")

m:addOverride('xi.zones.Mog_Garden.Zone.onInitialize', function(zone)
    super(zone)

    local claimrewards = zone:insertDynamicEntity({

        objtype = xi.objType.NPC,
        name = "Rewards Chest",
        look = 2426,
        x = 350.8588,
        y = -2.9831,
        z = -545.1033,
        rotation = 83,
        widescan = 1,

        onTrigger = function(player, npc)
            -- Key Item Rewards
            local craftSkills = {
                xi.skill.WOODWORKING, xi.skill.SMITHING, xi.skill.GOLDSMITHING,
                xi.skill.CLOTHCRAFT, xi.skill.LEATHERCRAFT, xi.skill.BONECRAFT,
                xi.skill.ALCHEMY, xi.skill.COOKING
            }
            local oneCraftAt100 = false
            local allCraftsAt100 = true

            -- Check if at least one crafting skill is at 100
            for _, skill in ipairs(craftSkills) do
                if player:getSkillLevel(skill) >= 100 then
                    oneCraftAt100 = true
                end
                -- Also check if all skills are at least 100 for Craftmaster's Ring
                if player:getSkillLevel(skill) < 100 then
                    allCraftsAt100 = false
                end
            end

            -- Check if player has Rhapsody in White or Rhapsody in Crimson
            local hasWhite = player:hasKeyItem(xi.ki.RHAPSODY_IN_WHITE)
            local hasCrimson = player:hasKeyItem(xi.ki.RHAPSODY_IN_CRIMSON)

            -- If player reaches level 75 or one crafting skill reaches 100, give Rhapsody in White if they don't have it
            if (player:getMainLvl() == 75 or oneCraftAt100) and not hasWhite then
                player:addKeyItem(xi.ki.RHAPSODY_IN_WHITE)
                player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.RHAPSODY_IN_WHITE)
                player:printToPlayer("You have received the key item: Rhapsody in White!", xi.msg.channel.SYSTEM_3)
            -- If the player already has Rhapsody in White, they can get Rhapsody in Crimson only if they fulfill the other condition
            elseif hasWhite and not hasCrimson then
                -- If they got Rhapsody in White for level 75, they must have a craft at 100 for Crimson
                if player:getMainLvl() == 75 and oneCraftAt100 then
                    player:addKeyItem(xi.ki.RHAPSODY_IN_CRIMSON)
                    player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.RHAPSODY_IN_CRIMSON)
                    player:printToPlayer("You have received the key item: Rhapsody in Crimson!", xi.msg.channel.SYSTEM_3)
                -- If they got Rhapsody in White for a craft at 100, they must reach level 75 for Crimson
                elseif oneCraftAt100 and player:getMainLvl() == 75 then
                    player:addKeyItem(xi.ki.RHAPSODY_IN_CRIMSON)
                    player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.RHAPSODY_IN_CRIMSON)
                    player:printToPlayer("You have received the key item: Rhapsody in Crimson!", xi.msg.channel.SYSTEM_3)
                end
            end

            -- Grant Craftmaster's Ring only if all crafting skills are at least 100
            if allCraftsAt100 then
                local craftmastersring = 28586

                if not player:hasItem(craftmastersring) then
                    player:addItem(craftmastersring, 1)
                    player:messageSpecial(ID.text.ITEM_OBTAINED, craftmastersring)
                    player:printToPlayer("Congratulations! You have received the Craftmaster's Ring!", xi.msg.channel.SYSTEM_3)
                end
            end
        end,
    })

    utils.unused(claimrewards)
end)

return m
