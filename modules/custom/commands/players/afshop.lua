--------------------------------------------------------------
-- func: !afshop
-- desc: Opens a custom shop for AF gear.
--------------------------------------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 0,
    parameters = "i"
}

commandObj.onTrigger = function(player)
    player:printToPlayer("Welcome to the AF Shop");
    if(player:getMainJob() == xi.job.WAR) then -- WAR
        local stock =
        {
            -- AF1
            16678,10000, -- Razor Axe
            12511,10000, -- Fighter's Mask
            12638,10000, -- Fighter's Lorica
            13961,10000, -- Fighter's Mufflers
            14214,10000, -- Fighter's Cuisses
            14089,10000, -- Fighter's Calligae

        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.MNK) then -- MNK
        local stock =
        {
            -- AF1
            17478,10000, -- Beat Cesti
            12512,10000, -- Temple Crown
            12639,10000, -- Temple Cyclas
            13962,10000, -- Temple Gloves
            14215,10000, -- Temple Hose
            14090,10000, -- Temple Gaiters

        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.WHM) then -- WHM
        local stock =
        {
            -- AF1
            17422,10000, -- Blessed Hammer
            13855,10000, -- Healer's Cap
            12640,10000, -- Healer's Briault
            13963,10000, -- Healer's Mitts
            14216,10000, -- Healer's Pantaloons
            14091,10000, -- Healer's Duckbills

        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.BLM) then -- BLM
        local stock =
        {
            -- AF1
            17423,10000, -- Casting Wand
            13856,10000, -- Wizard's Petasos
            12641,10000, -- Wizard's Coat
            13964,10000, -- Wizard's Gloves
            14217,10000, -- Wizard's Tonban
            14092,10000, -- Wizard's Sabots

        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.RDM) then -- RDM
        local stock =
        {
            -- AF1
            16829,10000, -- Fencing Degen
            12513,10000, -- Warlock Chapeau
            12642,10000, -- Warlock Tabard
            13965,10000, -- Warlock Gloves
            14218,10000, -- Warlock Tights
            14093,10000, -- Warlock Boots

        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.THF) then -- THF
        local stock =
        {
            -- AF1
            16764,10000, -- Marauder's Knife
            12514,10000, -- Rogue's Bonnet
            12643,10000, -- Rogue's Vest
            13966,10000, -- Rogue's Armlets
            14219,10000, -- Rogue's Culottes
            14094,10000, -- Rogue's Poulaines

        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.PLD) then -- PLD
        local stock =
        {
            -- AF1
            17643,10000, -- Holly Sword
            12515,10000, -- Gallant Coronet
            12644,10000, -- Gallant Surcoat
            13967,10000, -- Gallant Gauntlets
            14220,10000, -- Gallant Breeches
            14095,10000, -- Gallant Leggings
        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.DRK) then -- DRK
        local stock =
        {
            -- AF1
            16798,10000, -- Raven Scythe
            12516,10000, -- Chaos Burgeonet
            12645,10000, -- Chaos Cuirass
            13968,10000, -- Chaos Gauntlets
            14221,10000, -- Chaos Flanchard
            14096,10000, -- Chaos Sollerets
        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.BST) then -- BST
        local stock =
        {
            -- AF1
            16680,10000, -- Barbaroi Axe
            12517,10000, -- Beast Helm
            12646,10000, -- Beast Jackcoat
            14958,10000, -- Beast Gloves
            14222,10000, -- Beast Trousers
            14097,10000, -- Beast Gaiters
        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.BRD) then -- BRD
        local stock =
        {
            -- AF1
            16766,10000, -- Paper Knife
            13857,10000, -- Choral Roundlet
            12647,10000, -- Choral Justaucorps
            13970,10000, -- Choral Cuffs
            14223,10000, -- Choral Cannions
            14098,10000, -- Choral Slippers

        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.RNG) then -- RNG
        local stock =
        {
            -- AF1
            17188,10000, -- Sniping Bow
            12518,10000, -- Hunter's Beret
            12648,10000, -- Hunter's Jerkin
            13971,10000, -- Hunter's Bracers
            14224,10000, -- Hunter's Braccae
            14099,10000, -- Hunter's Socks
        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() ==xi.job.SAM) then -- SAM
        local stock =
        {
		    -- AF1
            17812,10000, -- Magoroku
            13868,10000, -- Myochin Kabuto
            13781,10000, -- Myochin Domaru
            13972,10000, -- Myochin Kote
            14225,10000, -- Myochin Haidate
            14100,10000, -- Myochin Sune-Ate
        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.NIN) then -- NIN
        local stock =
        {
            -- AF1
            17771,10000, -- Anju
            17772,10000, -- Zushio
            13869,10000, -- Ninja Hatsuburi
            13782,10000, -- Ninja Chainmail
            13973,10000, -- Ninja Tekko
            14226,10000, -- Ninja Hakama
            14101,10000, -- Ninja Kyahan
        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.DRG) then -- DRG
        local stock =
        {
            -- AF1
            16887,10000, -- Peregrine
            12519,10000, -- Drachen Armet
            12649,10000, -- Drachen Mail
            13974,10000, -- Drachen Finger Gauntlets
            14227,10000, -- Drachen Brais
            14102,10000, -- Drachen Greaves
        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.SMN) then -- SMN
        local stock =
        {
            -- AF1
            17532,10000, -- Kukulcan's Staff
            12520,10000, -- Evoker's Horn
            12650,10000, -- Evoker's Doublet
            13975,10000, -- Evoker's Bracers
            14228,10000, -- Evoker's Spats
            14103,10000, -- Evoker's Pigaches
        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.BLU) then -- BLU
        local stock =
        {
            -- AF1
            17717,10000, -- Immortal's Scimitar
            15265,10000, -- Magus Keffiyeh
            14521,10000, -- Magus Jubbah
            14928,10000, -- Magus Bazubands
            15600,10000, -- Magus Shalwar
            15684,10000, -- Magus Charuqs
        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.COR) then -- COR
        local stock =
        {
            -- AF1
            18702,10000, -- Trump Gun
            15266,10000, -- Corsair's Tricorne
            14522,10000, -- Corsair's Frac
            14929,10000, -- Corsair's Gants
            15601,10000, -- Corsair's Culottes
            15685,10000, -- Corsair's Bottes
        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.PUP) then -- PUP
        local stock =
        {
            -- AF1
            17858,10000, -- Turbo Animator
            15267,10000, -- Puppetry Taj
            14523,10000, -- Puppetry Tobe
            14930,10000, -- Puppetry Dastanas
            15602,10000, -- Puppetry Churidars
            15686,10000, -- Puppetry Babouches
        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.DNC) then -- DNC
        local stock =
        {
            -- AF1 Male
            19203,10000, -- War Hoop
            16138,10000, -- Dancer's Tiara
            14578,10000, -- Dancer's Casaque
            15002,10000, -- Dancer's Bangles
            15659,10000, -- Dancer's Tights
            15746,10000, -- Dancer's Shoes
            -- AF1 Female
            16139,10000, -- Dancer's Tiara
            14579,10000, -- Dancer's Casaque
            15003,10000, -- Dancer's Bangles
            15660,10000, -- Dancer's Tights
            15747,10000, -- Dancer's Shoes
        }
        xi.shop.general(player, stock);

    elseif(player:getMainJob() == xi.job.SCH) then -- SCH
        local stock =
        {
            -- AF1
            6058,10000, -- Klimaform
            16140,10000, -- Scholar's Mortarboard
            14580,10000, -- Scholar's Gown
            15004,10000, -- Scholar's Bracers
            16311,10000, -- Scholar's Pants
            15748,10000, -- Scholar's Loafers
        }
        xi.shop.general(player, stock);
    end
end

return commandObj