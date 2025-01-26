-- Set new player gear & parameters
-----------------------------------
require('modules/module_utils')
require('scripts/globals/player')
-----------------------------------
local m = Module:new('loginannounce')


m:addOverride('xi.player.onGameIn', function(player, firstLogin, zoning)
super(player, firstLogin, zoning)
local gmlvl = player:getGMLevel()

        if not firstLogin and not zoning and gmlvl <=0 then
        local openingDecoration = '\129\155'
        local mid1Decoration = '\129\154'
        local mid2Decoration = '\129\154'
        local closingDecoration = '\129\155'
        local end1Decoration = '\129\154'
        local end2Decoration = '\129\154'
        local message = string.format('%s has logged in!', player:getName())
        local decoratedMessage = string.format('%s %s %s %s %s %s %s', openingDecoration, mid1Decoration, mid2Decoration, message, end1Decoration, end2Decoration, closingDecoration)
        player:printToArea(decoratedMessage, xi.msg.channel.SYSTEM_3, 0)        
        end
end)

return m