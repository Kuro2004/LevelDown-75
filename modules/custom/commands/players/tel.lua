-----------------------------------
-- func: !tel
-- desc: Lets player pick a Teleport or a Recall to go to from a menu.
-----------------------------------
local commandObj = {}

commandObj.cmdprops = {
    permission = 0,
    parameters = 'is'
}

require('modules/module_utils')

local menu = {}

-- Function for teleporting a player
local teleportPlayer = function(player, x, y, z, rot, zone, keyItem, message)
    -- Check if player or any party member has enmity
    if xi.customutil.hasEnmity(player) then
        player:printToPlayer("You can't use this command if you or a party member has Enmity.")
        return
    end

    -- Check for the required key item
    if not player:hasKeyItem(keyItem) then
        player:printToPlayer("You need a Gate Crystal to use this command.")
        return
    end

    -- Check for Pure White Feather requirement for specific zones
    if (zone == xi.zone.PASHHOW_MARSHLANDS_S or zone == xi.zone.JUGNER_FOREST_S or zone == xi.zone.MERIPHATAUD_MOUNTAINS_S) then
        if not player:hasKeyItem(xi.ki.PURE_WHITE_FEATHER) then
            player:printToPlayer('You need the Pure White Feather Key Item to access this zone.')
            return
        end
    end

    -- Simulate teleport action
    player:printToPlayer(message)
    player:injectActionPacket(player:getID(), 4, 122, 0, 0, 0, 10, 1)
    player:timer(4000, function()
        player:setPos(x, y, z, rot, zone)
    end)
end

-- Define Teleport and Recall options
local teleportOptions = {
    teleport = {
        { 'Dem', function(playerArg) teleportPlayer(playerArg, 220, 19.1, 300, 0, xi.zone.KONSCHTAT_HIGHLANDS, xi.ki.DEM_GATE_CRYSTAL, "Teleporting to Konschtat Highlands (Dem)!") end },
        { 'Holla', function(playerArg) teleportPlayer(playerArg, 420, 19.1, 20, 0, xi.zone.LA_THEINE_PLATEAU, xi.ki.HOLLA_GATE_CRYSTAL, "Teleporting to La Theine Plateau (Holla)!") end },
        { 'Mea', function(playerArg) teleportPlayer(playerArg, 100, 35.15, 340, 198, xi.zone.TAHRONGI_CANYON, xi.ki.MEA_GATE_CRYSTAL, "Teleporting to Tahrongi Canyon (Mea)!") end },
        { 'Altepa', function(playerArg) teleportPlayer(playerArg, -61.942, 3.949, 224.9, 0, xi.zone.EASTERN_ALTEPA_DESERT, xi.ki.ALTEPA_GATE_CRYSTAL, "Teleporting to Eastern Altepa Desert (Altepa)!") end },
        { 'Yhoat', function(playerArg) teleportPlayer(playerArg, -280.826, 0.592, -144.32, 46, xi.zone.YHOATOR_JUNGLE, xi.ki.YHOATOR_GATE_CRYSTAL, "Teleporting to Yhoator Jungle (Yhoat)!") end },
        { 'Vahzl', function(playerArg) teleportPlayer(playerArg, 150.258, -21.048, -37.256, 94, xi.zone.XARCABARD, xi.ki.VAHZL_GATE_CRYSTAL, "Teleporting to Xarcabard (Vahzl)!") end },
    },
    recall = {
        { 'Pashh', function(playerArg) teleportPlayer(playerArg, 345.3076, 24.2583, -114.3982, 45, xi.zone.PASHHOW_MARSHLANDS_S, xi.ki.PASHHOW_GATE_CRYSTAL, "Teleporting to Pashhow Marshlands [S] (Pashh)!") end },
        { 'Jugner', function(playerArg) teleportPlayer(playerArg, -122.73, 0, -163.0898, 212, xi.zone.JUGNER_FOREST_S, xi.ki.JUGNER_GATE_CRYSTAL, "Teleporting to Jugner Forest [S] (Jugner)!") end },
        { 'Meriph', function(playerArg) teleportPlayer(playerArg, 306.1014, -14.9821, 18.6819, 193, xi.zone.MERIPHATAUD_MOUNTAINS_S, xi.ki.MERIPHATAUD_GATE_CRYSTAL, "Teleporting to Meriphataud Mountains [S] (Meriph)!") end },
    },
}

-- Function to display the menu
function displayMenu(player, state)
    menu = { title = "", options = {} } -- Reset menu options every time

    if state == "main" then
        menu.title = "Select a Teleport or a Recall"
        menu.options = {
            { 'Teleport', function(playerArg) displayMenu(playerArg, "teleport") end },
            { 'Recall', function(playerArg) displayMenu(playerArg, "recall") end },
            { 'Exit', function(playerArg) playerArg:printToPlayer("You have exited the menu.") playerArg:customMenu({}) end },
        }
    elseif state == "teleport" or state == "recall" then
        menu.title = state == "teleport" and "Select Destination (Teleport)" or "Select Destination (Recall)"
        menu.options = teleportOptions[state]

        -- Check if "Back" option is already added to avoid duplicates
        local backOptionExists = false
        for _, option in ipairs(menu.options) do
            if option[1] == "Back" then
                backOptionExists = true
                break
            end
        end

        -- Only add "Back" if it doesn't exist yet
        if not backOptionExists then
            table.insert(menu.options, { 'Back', function(playerArg) displayMenu(playerArg, "main") end })
        end
    end

    -- Display the menu with a slight delay
    player:timer(50, function(playerArg)
        playerArg:customMenu(menu)
    end)
end

-- Command trigger
commandObj.onTrigger = function(player, args)
    if player:getCharVar('inJail') > 0 then
        player:printToPlayer("You are in jail buddy... you ain't going nowhere!")
        return
    end

    if xi.customutil.hasEnmity(player) then
        player:printToPlayer("You can't use this command when you or a party member has Enmity.")
        return
    end

    displayMenu(player, "main")
end

return commandObj
