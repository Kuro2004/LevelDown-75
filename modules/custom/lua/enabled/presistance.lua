-----------------------------------
-- Common Requires
-----------------------------------
require("modules/module_utils")

-----------------------------------
-- ID Requires
-----------------------------------
local gustavTunnelID        = require("scripts/zones/Gustav_Tunnel/IDs")
local kuftalTunnelID        = require("scripts/zones/Kuftal_Tunnel/IDs")
local behemothDomID         = require("scripts/zones/Behemoths_Dominion/IDs")
local dragonsAeryID         = require("scripts/zones/Dragons_Aery/IDs")
local valleySorrowsID       = require("scripts/zones/Valley_of_Sorrows/IDs")
local caedarvaMireID        = require("scripts/zones/Caedarva_Mire/IDs")
local mountZhayolmID        = require("scripts/zones/Mount_Zhayolm/IDs")
local attohwaChasmID        = require("scripts/zones/Attohwa_Chasm/IDs")
local kingRanperresTombID   = require("scripts/zones/King_Ranperres_Tomb/IDs")
local uleguerandRangeID     = require("scripts/zones/Uleguerand_Range/IDs")
local rolanberryFieldsID    = require("scripts/zones/Rolanberry_Fields/IDs")
local sauromugueChampaignID = require("scripts/zones/Sauromugue_Champaign/IDs")
local garlaigeCitadelID     = require("scripts/zones/Garlaige_Citadel/IDs")
local gustavTunnelID        = require("scripts/zones/Gustav_Tunnel/IDs")
local jugnerForestID        = require("scripts/zones/Jugner_Forest/IDs")
local kuftalTunnelID        = require("scripts/zones/Kuftal_Tunnel/IDs")
local mazeOfShakhramiID     = require("scripts/zones/Maze_of_Shakhrami/IDs")
local arrapagoReefID        = require("scripts/zones/Arrapago_Reef/IDs")
local halvungID             = require("scripts/zones/Halvung/IDs")
local mamookID              = require("scripts/zones/Mamook/IDs")

-----------------------------------
-- Mobs with IDs not listed
-----------------------------------
local hundredfacedHapoolJaID = 17043665
local medusaID               = 16998862
local lordOfOnzozoID         = 17649731
local shikigamiWeaponID      = 17277127
local hydraID = 16986355
-----------------------------------
-- PEG_POWLER_PH
-----------------------------------
local table =
{
    PEG_POWLER_PH           =
    {
        [17649755] = 17649761, -- -100.912 4.263 -21.983
        [17649759] = 17649761, -- -128.471 4.952 0.489
        [17649760] = 17649761, -- -104.000 4.000 28.000
        [17649758] = 17649761, -- -111.183 5.357 44.411
        [17649762] = 17649761, -- -81.567 5.013 37.186
        [17649763] = 17649761, -- -72.956 4.943 39.293
        [17649770] = 17649761, -- -33.112 4.735 34.742
        [17649769] = 17649761, -- -51.745 4.288 46.295
        [17649774] = 17649761, -- -54.100 5.462 81.680
        [17649773] = 17649761, -- -65.089 5.386 81.363
        [17649766] = 17649761, -- -64.269 5.441 72.382
    },
}
-----------------------------------
-- Module definition
-----------------------------------
local m = Module:new("perpetuation_lesser_dragons")

----------------------------------------------------------------------------------------------------
-- Gustav Tunnel: Bune
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Gustav_Tunnel.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Bune") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 48) * 1800

        SetServerVariable("[HNM]Bune", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(gustavTunnelID.mob.BUNE)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(gustavTunnelID.mob.BUNE)
    else
        GetMobByID(gustavTunnelID.mob.BUNE):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Gustav_Tunnel.mobs.Bune.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 21600 + math.random(0, 6) * 300 -- 6-6.5 hours with 5 minute windows

    SetServerVariable("[HNM]Bune", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(gustavTunnelID.mob.BUNE):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(gustavTunnelID.mob.BUNE)
end)

----------------------------------------------------------------------------------------------------
-- Kuftal Tunnel: Guivre
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Kuftal_Tunnel.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Guivre") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 48) * 1800

        SetServerVariable("[HNM]Guivre", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(kuftalTunnelID.mob.GUIVRE)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(kuftalTunnelID.mob.GUIVRE)
    else
        GetMobByID(kuftalTunnelID.mob.GUIVRE):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Kuftal_Tunnel.mobs.Guivre.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 21600 + math.random(0, 6) * 300 -- 6-6.5 hours with 5 minute windows

    SetServerVariable("[HNM]Guivre", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(kuftalTunnelID.mob.GUIVRE):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(kuftalTunnelID.mob.GUIVRE)
end)

----------------------------------------------------------------------------------------------------
-- Behemoth's Dominion: Behemoth
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Behemoths_Dominion.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Behemoth") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 48) * 1800

        SetServerVariable("[HNM]Behemoth", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(behemothDomID.mob.BEHEMOTH)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(behemothDomID.mob.BEHEMOTH)
    else
        GetMobByID(behemothDomID.mob.BEHEMOTH):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Behemoths_Dominion.mobs.Behemoth.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 21600 + math.random(0, 6) * 300 -- 6-6.5 hours with 5 minute windows

    SetServerVariable("[HNM]Behemoth", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(behemothDomID.mob.BEHEMOTH):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(behemothDomID.mob.BEHEMOTH)
end)

----------------------------------------------------------------------------------------------------
-- Dragon's Aery: Fafnir
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Dragons_Aery.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Fafnir") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 48) * 1800

        SetServerVariable("[HNM]Fafnir", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(dragonsAeryID.mob.FAFNIR)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(dragonsAeryID.mob.FAFNIR)
    else
        GetMobByID(dragonsAeryID.mob.FAFNIR):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Dragons_Aery.mobs.Fafnir.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 21600 + math.random(0, 6) * 300 -- 6-6.5 hours with 5 minute windows

    SetServerVariable("[HNM]Fafnir", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(dragonsAeryID.mob.FAFNIR):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(dragonsAeryID.mob.FAFNIR)
end)

----------------------------------------------------------------------------------------------------
-- Valley of Sorrows: Adamantoise
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Valley_of_Sorrows.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Adamantoise") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 48) * 1800

        SetServerVariable("[HNM]Adamantoise", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(valleySorrowsID.mob.ADAMANTOISE)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(valleySorrowsID.mob.ADAMANTOISE)
    else
        GetMobByID(valleySorrowsID.mob.ADAMANTOISE):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Valley_of_Sorrows.mobs.Adamantoise.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 21600 + math.random(0, 6) * 300 -- 6-6.5 hours with 5 minute windows

    SetServerVariable("[HNM]Adamantoise", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(valleySorrowsID.mob.ADAMANTOISE):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(valleySorrowsID.mob.ADAMANTOISE)
end)

----------------------------------------------------------------------------------------------------
-- Caedarva Mire: Khimaira
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Caedarva_Mire.Zone.onInitialize", function(zone)
    super(zone)

    -- New stuff below.
    local hnmPopTime = GetServerVariable("[HNM]Khimaira")   -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 12) * 3600 -- Modified

        SetServerVariable("[HNM]Khimaira", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(caedarvaMireID.mob.KHIMAIRA)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(caedarvaMireID.mob.KHIMAIRA)
    else
        GetMobByID(caedarvaMireID.mob.KHIMAIRA):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Caedarva_Mire.mobs.Khimaira.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 75600 + math.random(0, 6) * 1800 -- Modified Windows (21-24 hours with 30 minute windows)

    SetServerVariable("[HNM]Khimaira", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(caedarvaMireID.mob.KHIMAIRA):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(caedarvaMireID.mob.KHIMAIRA)
end)

----------------------------------------------------------------------------------------------------
-- Mount Zhayolm: Cerberus
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Mount_Zhayolm.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Cerberus")   -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 12) * 3600 -- Modified

        SetServerVariable("[HNM]Cerberus", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(mountZhayolmID.mob.CERBERUS)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(mountZhayolmID.mob.CERBERUS)
    else
        GetMobByID(mountZhayolmID.mob.CERBERUS):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Mount_Zhayolm.mobs.Cerberus.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 75600 + math.random(0, 6) * 1800 -- Modified Windows (21-24 hours with 30 minute windows)

    SetServerVariable("[HNM]Cerberus", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(mountZhayolmID.mob.CERBERUS):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(mountZhayolmID.mob.CERBERUS)
end)

----------------------------------------------------------------------------------------------------
-- Wajoam Woodlands: Hydra
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Wajaom_Woodlands.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Hydra")   -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 12) * 3600 -- Modified

        SetServerVariable("[HNM]Hydra", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(hydraID)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(hydraID)
    else
        GetMobByID(hydraID):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Wajaom_Woodlands.mobs.Hydra.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 75600 + math.random(0, 6) * 1800 -- Modified Windows (21-24 hours with 30 minute windows)

    SetServerVariable("[HNM]Hydra", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(hydraID):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(hydraID)
end)

----------------------------------------------------------------------------------------------------
-- Attohwa Chasm: Tiamat
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Attohwa_Chasm.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Tiamat") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 12) * 3600 -- Modified

        SetServerVariable("[HNM]Tiamat", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(attohwaChasmID.mob.TIAMAT)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(attohwaChasmID.mob.TIAMAT)
    else
        GetMobByID(attohwaChasmID.mob.TIAMAT):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Attohwa_Chasm.mobs.Tiamat.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 75600 + math.random(0, 6) * 1800 -- Modified Windows (21-24 hours with 30 minute windows)

    SetServerVariable("[HNM]Tiamat", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(attohwaChasmID.mob.TIAMAT):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(attohwaChasmID.mob.TIAMAT)
end)

----------------------------------------------------------------------------------------------------
-- King Ranperres Tomb: Vrtra
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.King_Ranperres_Tomb.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Vrtra")   -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 12) * 3600 -- Modified

        SetServerVariable("[HNM]Vrtra", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(kingRanperresTombID.mob.VRTRA)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(kingRanperresTombID.mob.VRTRA)
    else
        GetMobByID(kingRanperresTombID.mob.VRTRA):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.King_Ranperres_Tomb.mobs.Vrtra.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 75600 + math.random(0, 6) * 1800 -- Modified Windows (21-24 hours with 30 minute windows)

    SetServerVariable("[HNM]Vrtra", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(kingRanperresTombID.mob.VRTRA):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(kingRanperresTombID.mob.VRTRA)
end)

----------------------------------------------------------------------------------------------------
-- Uleguerand Range: Jormungand
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Uleguerand_Range.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Jormungand")   -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 12) * 3600 -- Modified

        SetServerVariable("[HNM]Jormungand", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(uleguerandRangeID.mob.JORMUNGAND)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(uleguerandRangeID.mob.JORMUNGAND)
    else
        GetMobByID(uleguerandRangeID.mob.JORMUNGAND):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Uleguerand_Range.mobs.Jormungand.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 75600 + math.random(0, 6) * 1800 -- Modified Windows (21-24 hours with 30 minute windows)

    SetServerVariable("[HNM]Jormungand", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(uleguerandRangeID.mob.JORMUNGAND):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(uleguerandRangeID.mob.JORMUNGAND)
end)

----------------------------------------------------------------------------------------------------
-- Rolanberry Fields: Simurgh
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Rolanberry_Fields.Zone.onInitialize", function(zone)
    super(zone) -- Note: We will overwrite existing logic for Simurgh's respawn time with below's logic.

    local hnmPopTime = GetServerVariable("[HNM]Simurgh") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 48) * 1800

        SetServerVariable("[HNM]Simurgh", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(rolanberryFieldsID.mob.SIMURGH)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(rolanberryFieldsID.mob.SIMURGH)
    else
        GetMobByID(rolanberryFieldsID.mob.SIMURGH):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Rolanberry_Fields.mobs.Simurgh.onMobDespawn", function(mob)
    super(mob) -- Note: We will overwrite existing logic for Simurgh's respawn time with below's logic.

    -- Server Variable work.
    local randomPopTime = 21600 + math.random(0, 6) * 300 -- 6-6.5 hours with 5 minute windows

    SetServerVariable("[HNM]Simurgh", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(rolanberryFieldsID.mob.SIMURGH):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(rolanberryFieldsID.mob.SIMURGH)
end)

----------------------------------------------------------------------------------------------------
-- Sauromugue Champaign: Roc
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Sauromugue_Champaign.Zone.onInitialize", function(zone)
    super(zone) -- Note: We will overwrite existing logic for Roc's respawn time with below's logic.

    local hnmPopTime = GetServerVariable("[HNM]Roc") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 48) * 1800

        SetServerVariable("[HNM]Roc", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(sauromugueChampaignID.mob.ROC)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(sauromugueChampaignID.mob.ROC)
    else
        GetMobByID(sauromugueChampaignID.mob.ROC):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Sauromugue_Champaign.mobs.Roc.onMobDespawn", function(mob)
    super(mob) -- Note: We will overwrite existing logic for Roc's respawn time with below's logic.

    -- Server Variable work.
    local randomPopTime = 21600 + math.random(0, 6) * 300 -- 6-6.5 hours with 5 minute windows

    SetServerVariable("[HNM]Roc", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(sauromugueChampaignID.mob.ROC):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(sauromugueChampaignID.mob.ROC)
end)

----------------------------------------------------------------------------------------------------
-- Jugner Forest: King Arthro
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Jugner_Forest.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]KA") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 48) * 1800

        SetServerVariable("[HNM]KA", hnmPopTime) -- Set next pop time.
    end

    UpdateNMSpawnPoint(jugnerForestID.mob.KING_ARTHRO)

    -- Spawn mobs or set spawn time. This case is special. We don't pop the NM, we pop the PHs.
    if hnmPopTime <= os.time() then
        for offset = 1, 10 do
            SpawnMob(jugnerForestID.mob.KING_ARTHRO - offset)
        end
    else
        for offset = 1, 10 do
            GetMobByID(jugnerForestID.mob.KING_ARTHRO - offset):setRespawnTime(hnmPopTime - os.time())
        end
    end
end)

m:addOverride("xi.zones.Jugner_Forest.mobs.King_Arthro.onMobDespawn", function(mob)
    super(mob)

    -- Mob work.
    local kingArthroID = mob:getID()

    GetMobByID(kingArthroID):setLocalVar("[POP]King_Arthro", 0)

    -- Server Variable work.
    local random = 21600 + math.random(0, 6) * 300 -- 6-6.5 hours with 5 minute windows

    SetServerVariable("[HNM]KA", os.time() + random) -- Save next pop time.

    -- Set respawn Time.
    for offset = 1, 10 do
        GetMobByID(kingArthroID - offset):setRespawnTime(random)
    end
end)

----------------------------------------------------------------------------------------------------
-- Ro'Maeve: Shikigami Weapon 
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.RoMaeve.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Shikigami_Weapon") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 48) * 1800

        SetServerVariable("[HNM]Shikigami_Weapon", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(shikigamiWeaponID)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(shikigamiWeaponID)
    else
        GetMobByID(shikigamiWeaponID):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.RoMaeve.mobs.Shikigami_Weapon.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 21600 + math.random(0, 6) * 300 -- 6-6.5 hours with 5 minute windows
    SetServerVariable("[HNM]Shikigami_Weapon", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(shikigamiWeaponID):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(shikigamiWeaponID)
end)

----------------------------------------------------------------------------------------------------
-- Garlaige Citadel: Serket 
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Garlaige_Citadel.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Serket") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 48) * 1800

        SetServerVariable("[HNM]Serket", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(garlaigeCitadelID.mob.SERKET)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(garlaigeCitadelID.mob.SERKET)
    else
        GetMobByID(garlaigeCitadelID.mob.SERKET):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Garlaige_Citadel.mobs.Serket.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 21600 + math.random(0, 6) * 300 -- 6-6.5 hours with 5 minute windows

    SetServerVariable("[HNM]Serket", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(garlaigeCitadelID.mob.SERKET):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(garlaigeCitadelID.mob.SERKET)
end)

----------------------------------------------------------------------------------------------------
-- Maze of Shakhrami: Argus, Leech King
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Maze_of_Shakhrami.Zone.onInitialize", function(zone)
    super(zone)

    local argusPopTime     = GetServerVariable("[HNM]Argus")      -- Time the NM will spawn at.
    local leechKingPopTime = GetServerVariable("[HNM]Leech_King") -- Time the NM will spawn at.

    -- First-time setup.
    if argusPopTime == 0 then
        argusPopTime = os.time() + math.random(1, 48) * 1800
        SetServerVariable("[HNM]Argus", argusPopTime) -- Save pop time.
    end
    if leechKingPopTime == 0 then
        leechKingPopTime = os.time() + math.random(1, 48) * 1800
        SetServerVariable("[HNM]Leech_King", leechKingPopTime) -- Save pop time.
    end

    -- Update spawn points.
    UpdateNMSpawnPoint(mazeOfShakhramiID.mob.ARGUS)
    UpdateNMSpawnPoint(mazeOfShakhramiID.mob.LEECH_KING)

    -- Spawn mob or set spawn time.
    if argusPopTime <= os.time() then
        SpawnMob(mazeOfShakhramiID.mob.ARGUS)
    else
        GetMobByID(mazeOfShakhramiID.mob.ARGUS):setRespawnTime(argusPopTime - os.time())
    end

    if leechKingPopTime <= os.time() then
        SpawnMob(mazeOfShakhramiID.mob.LEECH_KING)
    else
        GetMobByID(mazeOfShakhramiID.mob.LEECH_KING):setRespawnTime(leechKingPopTime - os.time())
    end

end)

m:addOverride("xi.zones.Maze_of_Shakhrami.mobs.Argus.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local argusPopTime = 21600 + math.random(0, 6) * 300 -- 6-6.5 hours with 5 minute windows
    SetServerVariable("[HNM]Argus", os.time() + argusPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(mazeOfShakhramiID.mob.ARGUS):setRespawnTime(argusPopTime)
    UpdateNMSpawnPoint(mazeOfShakhramiID.mob.ARGUS)
end)

m:addOverride("xi.zones.Maze_of_Shakhrami.mobs.Leech_King.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local leechKingPopTime = 21600 + math.random(0, 6) * 300 -- 6-6.5 hours with 5 minute windows
    SetServerVariable("[HNM]Leech_King", os.time() + leechKingPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(mazeOfShakhramiID.mob.LEECH_KING):setRespawnTime(leechKingPopTime)
    UpdateNMSpawnPoint(mazeOfShakhramiID.mob.LEECH_KING)
end)

----------------------------------------------------------------------------------------------------
-- Labyrinth of Onzozo: Lord of Onzozo 
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Labyrinth_of_Onzozo.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Lord_of_Onzozo") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 48) * 1800

        SetServerVariable("[HNM]Lord_of_Onzozo", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(lordOfOnzozoID)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(lordOfOnzozoID)
    else
        GetMobByID(lordOfOnzozoID):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Labyrinth_of_Onzozo.mobs.Lord_of_Onzozo.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 21600 + math.random(0, 6) * 300 -- 6-6.5 hours with 5 minute windows

    SetServerVariable("[HNM]Lord_of_Onzozo", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(lordOfOnzozoID):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(lordOfOnzozoID)
end)

m:addOverride("xi.zones.Labyrinth_of_Onzozo.mobs.Flying_Manta.onMobDespawn", function(mob)
    xi.mob.phOnDespawn(mob, table.PEG_POWLER_PH, 4, 7200)
end)

----------------------------------------------------------------------------------------------------
-- Arrapago Reef: Medusa
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Arrapago_Reef.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Medusa") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 12) * 3600 -- Modified

        SetServerVariable("[HNM]Medusa", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(medusaID)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(medusaID)
    else
        GetMobByID(medusaID):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Arrapago_Reef.mobs.Medusa.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 75600 + math.random(0, 6) * 1800 -- Modified Windows (21-24 hours with 30 minute windows)

    SetServerVariable("[HNM]Medusa", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(medusaID):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(medusaID)
end)

----------------------------------------------------------------------------------------------------
-- Halvung: Gurfurlur the Menacing
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Halvung.Zone.onInitialize", function(zone)
    super(zone)
    local hnmPopTime = GetServerVariable("[HNM]Gurfurlur_the_Menacing") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        -- hnmPopTime = os.time() + math.random(1, 48) * 1800 -- Original
        -- hnmPopTime = os.time() + math.random(1, 2) * 30 -- Testing
        hnmPopTime = os.time() + math.random(1, 12) * 3600 -- Modified

        SetServerVariable("[HNM]Gurfurlur_the_Menacing", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(halvungID.mob.GURFURLUR_THE_MENACING)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(halvungID.mob.GURFURLUR_THE_MENACING)
    else
        GetMobByID(halvungID.mob.GURFURLUR_THE_MENACING):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Halvung.mobs.Gurfurlur_the_Menacing.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 75600 + math.random(0, 6) * 1800 -- Modified Windows (21-24 hours with 30 minute windows)

    SetServerVariable("[HNM]Gurfurlur_the_Menacing", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(halvungID.mob.GURFURLUR_THE_MENACING):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(halvungID.mob.GURFURLUR_THE_MENACING)
end)

----------------------------------------------------------------------------------------------------
-- Mamook: Gulool Ja Ja, Hundredfaced Hapool Ja
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Mamook.Zone.onInitialize", function(zone)
    super(zone)

    local guloolJaJaPopTime   = GetServerVariable("[HNM]Gulool_Ja_Ja")           -- Time the NM will spawn at.
    local hundredfacedPopTime = GetServerVariable("[HNM]Hundredfaced_Hapool_Ja") -- Time the NM will spawn at.

    -- First-time setup.
    if guloolJaJaPopTime == 0 then
        guloolJaJaPopTime = os.time() + math.random(1, 12) * 3600 -- Modified

        SetServerVariable("[HNM]Gulool_Ja_Ja", guloolJaJaPopTime) -- Save pop time.
    end

    if hundredfacedPopTime == 0 then
        hundredfacedPopTime = os.time() + math.random(1, 12) * 3600 -- Modified

        SetServerVariable("[HNM]Hundredfaced_Hapool_Ja", hundredfacedPopTime) -- Save pop time.
    end

    -- Update NM spawn point.
    UpdateNMSpawnPoint(mamookID.mob.GULOOL_JA_JA)
    UpdateNMSpawnPoint(hundredfacedHapoolJaID)

    -- Spawn mob or set spawn time.
    if guloolJaJaPopTime <= os.time() then
        SpawnMob(mamookID.mob.GULOOL_JA_JA)
    else
        GetMobByID(mamookID.mob.GULOOL_JA_JA):setRespawnTime(guloolJaJaPopTime - os.time())
    end

    if hundredfacedPopTime <= os.time() then
        SpawnMob(hundredfacedHapoolJaID)
    else
        GetMobByID(hundredfacedHapoolJaID):setRespawnTime(hundredfacedPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Mamook.mobs.Gulool_Ja_Ja.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local guloolJaJaPopTime = 75600 + math.random(0, 6) * 1800 -- Modified Windows (21-24 hours with 30 minute windows)

    SetServerVariable("[HNM]Gulool_Ja_Ja", os.time() + guloolJaJaPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(mamookID.mob.GULOOL_JA_JA):setRespawnTime(guloolJaJaPopTime)
    UpdateNMSpawnPoint(mamookID.mob.GULOOL_JA_JA)
end)

m:addOverride("xi.zones.Mamook.mobs.Hundredfaced_Hapool_Ja.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local hundredfacedPopTime = 75600 + math.random(0, 6) * 1800 -- Modified Windows (21-24 hours with 30 minute windows)

    SetServerVariable("[HNM]Hundredfaced_Hapool_Ja", os.time() + hundredfacedPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(hundredfacedHapoolJaID):setRespawnTime(hundredfacedPopTime)
    UpdateNMSpawnPoint(hundredfacedHapoolJaID)
end)




















return m
