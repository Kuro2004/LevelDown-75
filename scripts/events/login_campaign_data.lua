-- This file is called by login_campaign.lua and require()'s no file, it should not be require()'d by any
-- other lua scripts, which should instead require() login_campaign.lua directly.

-- TODO: Move this table somewhere untracked so it can be freely modified without polluting the
--       git workspace

-- TODO: Fill in with _commented out entries_ for all the things seen in each category
-- https://www.bg-wiki.com/ffxi/Repeat_Login_Campaign/Past_Login_Campaign_Rewards
local prizes =
{
    [1] =
    {
        ['price'] = 10,
        ['items'] =
        {
            
		    -- Alwats active	
			
            1126, -- Beastmen's Seal
            1127, -- Kindred's Seal
            2955, -- Kindred's Crest
            2956, -- High Kindred's Crest
            2957, -- Sacred Kindred's Crest
            1449, -- Tukuku Whiteshell
            1452, -- Ordelle Bronzepiece
            1455, -- 1 Byne Bill
            
			-- Cycle #1
			
            5113,  -- Cracked Nut
            5116,  -- Cavorting Worm
            5203,  -- Hume Mochi
            5204,  -- Elvaan Mochi
            5206,  -- Galka Mochi
            5294,  -- Hume rice cake
            5295,  -- Elvaan Rice Cake
            
			-- Cycle #2
			
            -- 5724,  -- Pungent Powder
            -- 5733,  -- Miracle Milk
            -- 6008,  -- Copse Candy
            -- 6535,  -- Pinch of Pungent Powder II
            -- 6537,  -- Pinch of Pungent Powder III
        },
    },

    [5] =
    {
        ['price'] = 50,
        ['items'] =
        {
            
			-- Always active
			
            6413,  -- Astral Cube
            
            -- Cycle #1
            
            154,  -- Miniature Airship
            192,  -- Hoary Spire
            264,  -- Stuffed Chocobo
            265,  -- Adamant Statue
            266,  -- Behemoth Statue
            282,  -- Yovra Replica
            3706, -- Vanaclock
	        3676, -- Celestial Globe
            3755, -- Prismatic Chest
	        3641, -- Kabuto Kazari

            -- Cycle #2
            
            -- 267,  -- Fafnir Statue
            -- 268,  -- N moogle Statue
            -- 269,  -- S lord Statue
            -- 270,  -- Odin Statue
            -- 271,  -- Alexander Statue
            -- 277,  -- Prishe Statue
            -- 278,  -- Cardian Statue
	        -- 320,  --  Harpsichord
            -- 3642, -- Katana-kazari
	        -- 195,  -- The Big One

            -- Cycle #3
            
            -- 279, -- S Lord Statue II
            -- 280, -- S Lord Statue III
            -- 281, -- Atomos Statue
            -- 284, -- Goobbue Statue
            -- 286, -- Nanaa Mihgo Statue
            -- 287, -- Nanaa Mihgo S II
            -- 320, -- Harpsichord
	        -- 264, -- Stuffed Chocobo
            -- 294, -- Campfire

            -- Cycle #4
            
            -- 365,  -- Poele Classique
            -- 366,  -- Kanonenofen
            -- 367,  -- Pot Topper
            -- 415,  -- Aldebaran Horn
            -- 426,  -- Orchestrion
            -- 3585, -- Galley Kitchen
            -- 3652, -- Memorial Cake
	        -- 3739, -- Autumn Tree
            -- 3740, -- Model Synergy Furn

            -- Cycle # 5
            
            -- 88,   -- Timepiece
            -- 3679, -- Beastman Gonfalon
            -- 3681, -- Alzadaal Table
            -- 3698, -- Cherry Tree
            -- 3705, -- Far East Hearth
            -- 3717, -- Birch Tree
	        -- 3642, -- Katana Kazari
            -- 3654, -- Tender Bouquet

			-- OCT Login
            
            -- 3647, -- Spook-a-Swirl
            -- 3648, -- Chocolate Grumpkin
            -- 3649, -- Harvest Horror
            -- 3651, -- Harvest Pastry
            -- 3739, -- Autumn Tree
            -- 3749, -- Chemistry Set
            -- 15921, -- Detonator Belt
            -- 15929, -- Goblin Belt 
            -- 10847, -- Orc Belt
            -- 10849, -- Yagudo Belt
            -- 10851, -- Slime Belt
            -- 10852, -- Hecteyes Belt
            -- 15933, -- Stirge Belt
            -- 16257, -- Ghost Cape
            -- 11320, -- Skeleton Robe
			
			-- DEC Login 
            -- 86,    -- Sandorian Tree
            -- 115,   -- Bastokan Tree
            -- 116,   -- Windurstian Tree
            -- 138,   -- Jeunoan Tree
	    },
    },

    [9] =
    {
        ['price'] = 200,
        ['items'] =
        {   

            -- Cycle #1
            
            20713, -- Excalipoor - Make a craft rec to make +1
            18600, -- Caver's Shovel
            20909, -- Hoe
            18436, -- Lotus Katana
            18866, -- Club Hammer
            20577, -- Chicken Knife II
            28661, -- Glinting Shield
            
			-- Cycle #2
            
            -- 20666, --  Blizzard Brand - Make a craft rec to make +1
            -- 20668, -- Firetongue - Make a craft rec to make +1
            -- 18846, -- Battledore
            -- 20665, -- Kam'lanaut's Sword
            -- 26412, -- Kam'lanaut's Shield			
            
            
            -- Cycle #3
            
            -- 28653, -- Mundus Shield
            -- 10811, -- Chocobo Shield
            -- 17074, -- Chocobo Wand
            -- 18842, -- Nmd. Moogle Rod
            -- 21967, -- Melon Slicer
 

            -- Cycle #4
            
            -- 26496, -- Ageist -- See why +1 wont show up in game/Make rec to make +1
            -- 18401, -- Moogle Rod
            -- 10809, -- Moogle Guard -- Make Rec for +1
            -- 21107, -- Kyuka Uchiwa - Make a craft rec to make +1			


            -- Cycle #5
            
            -- 20713, -- Excalipoor - Make a craft rec to make +1
            -- 27631, -- Cait Sith Guard -- Make a craft rec to make +1
            -- 17031, -- Shell Scepter
            -- 17032, -- Gobbie Gavel

            -- OCT (Costumes)
            
            -- 17565, -- Trick Staff
            -- 18102, -- Pitchfork			
            -- 20532, -- Worm Feelers
            -- 21153, -- Malice Masher
            -- 21820, -- Lost Sickle
            -- 10384, -- Cumulus Masque
            -- 10446, -- Ahriman Cap
            -- 13916, -- Pumpkin-head
            -- 13917, -- Horror Head
            -- 16075, -- Witch Hat
            -- 25586, -- Kakai Cap
            -- 26707, -- Flan Masque
            -- 25638, -- Pachy. Masque
            -- 25639, -- Korrigan Masque
            -- 27715, -- Goblin Masque 
            -- 25657, -- Wyrmking Masque
            -- 26798, -- Behemoth Masque
            -- 27717, -- Worm Masque
            -- 27757, -- Bomb Masque

            -- Might remove some items to add in for event rewards (Dec)
            -- Seasonal event Starlight Celebration. Uncomment for December campaign only.
            -- 176,   -- Snowman Knight
            -- 177,   -- Snowman Miner
            -- 178,   -- Snowman Mage
            -- 3619,  -- Cour Des Etoiles
            -- 3620,  -- Silberkranz
            -- 3621,  -- Leafberry Wreath
            -- 10875, -- Snowman Cap
            -- 11490, -- Snow Bunny Hat
            -- 11966, -- Dream Trousers +1
            -- 11968, -- Dream Pants +1
            -- 14520, -- Dream Robe +1
            -- 15179, -- Dream Hat +1
            -- 10383, -- Dream Mittens +1
            -- 15753, -- Dream Boots +1
            -- 18863, -- Dream Bell
            --21097, -- Leafkin Bopper
        },
    },

    [13] =
    {
        ['price'] = 300,
        ['items'] =
        {

            -- Cycle #1
            
            10807, -- Mandraguard
            11500, -- Chocobo Beret
            16118, -- Moogle Cap
            26730, -- Celeste Cap
            26946, -- Pupil's Shirt -- F comes with skirt
            26964, -- Pupils Camisa F comes with Skirt
            23803, -- Poroggo Cassock -- Make rec for +1
            23805, -- Morbol Apron
            11323, -- Purple Race Silks
            25758, -- Rhapsody Shirt -- Make rec for +1
            26520, -- Akitu Shirt
            25909, -- Morbol Subligar
            27281, -- Pupil's Trousers
            27455, -- Pupil's Shoes

            -- Cycle #2
            
            -- 10808, -- Janus Guard
            -- 11812, -- Charity Cap
            -- 27733, -- Straw Hat M
            -- 27734, -- Straw Hat F
            -- 26956, -- Poroggo Coat -- Make rec for +1
            -- 23731, -- Ryl. Chocobo Beret
            -- 11321, -- Orange Race Silks
            -- 11326, -- Red Race Silks
            -- 23800, -- Cancrine Apron
            -- 25722, -- Jubilee Shirt
            -- 27879, -- Overalls M
            -- 27880, -- Overalls F

            -- Cycle #3
            
            -- 27765, -- Chocobo Masque -- Make rec for +1
            -- 10429, -- Moogle Masque
            -- 15204, -- Mandragora Beret
            -- 23753, -- Sandogasa -- Make Rec for +1
            -- 25648, -- Curm. Helmet
            -- 27911, -- Chocobo Suit -- Make rec for +1
            -- 10250, -- Moogle Suit
            -- 11322, -- Black Race Silks
            -- 11327, -- White Race Silks
            -- 26517, -- Shadow Lord Shirt
			
            -- Cycle #4
            
            -- 15212, -- Stars Cap
            -- 16119, -- Nomad Cap
            -- 23790, -- Adenium Masque
            -- 27716, -- G. Moogle Masque
            -- 27867, -- G. Moogle Suit
            -- 23791, -- Adenium Suit
            -- 1132, -- Blue Race Silk
            -- 11328, -- Green Race Silks
            -- 25755, -- Crustacean Shirt
            -- 26524, -- Gil Nabber Shirt
			
			-- Cycle # 5
            
            -- 16120, -- Redeyes
            -- 23730, -- Karakul Cap
            -- 25645, -- Kupo Masque
            -- 25632, -- Carby Hat -- Make a rec to make +1
            -- 11324, -- S. Blue Race Silks
            -- 25713, -- Track Suit
            -- 25726, -- Kupo Suit
            -- 26518, -- Jody Shirt
            -- 26545, -- Mithkabob Shirt
            -- 25911, -- Denim Pants M
            -- 27325, -- Track Pants -- Make Rec for +1/See if item speed+ works

			
            -- Seasonal event Harvest Festival. Uncomment for October campaign only

            -- 25715, -- Korrigan Suit
            -- 27866, -- Goblin Suit
            -- 25711, -- Botulus Suit
            -- 11300, -- Eerie Cloak
            -- 25756, -- Wyrmking Suit
            -- 26954, -- Behemoth Suit
        },
    },

    [17] =
    {
        ['price'] = 400,
        ['items'] =
        {
           
		    -- Chairs
			
            6694, -- Chocobo Chair II
			
			-- MOUNTS

            -- Cycle #1
            
            10050, -- ♪Tiger
            10051, -- ♪Crab
            10053, -- ♪Bomb
            10077, -- ♪Buffalo
	        10055, -- ♪Morbol

            -- Cycle #2
            
            -- 10056, -- ♪Crawler
            -- 10058, -- ♪Beetle
            -- 10060, -- ♪Magic Pot
            -- 10052, -- ♪Red Crab
	        -- 10074, -- ♪Doll
            
            -- Cycle #3
            
            -- 10061, -- ♪Tulfaire
            -- 10062, -- ♪Warmachine
            -- 10063, -- ♪Xzomit
            -- 10076, -- ♪Golden Bomb
	        -- 10078, -- ♪Wivre
            
            -- Cycle #4
            
            -- 10064, -- ♪Hippogryph
            -- 10066, -- ♪Spheroid
            -- 10068, -- ♪Coeurl
            -- 10075, -- ♪Red Raptor
	        -- 10080, -- ♪Byakko
            
            -- Cycle #5
            
            -- 10069, -- ♪Goobbue
            -- 10070, -- ♪Raaz
            -- 10072, -- ♪Adamantoise
            -- 10079, -- ♪Iron Giant  
        },

    },

    [21] =
    {
        ['price'] = 500,
        ['items'] =
        {

            -- Always up
            1450, -- Lungo-Nango Jadeshell
            1453, -- Montiont Silverpiece
            1456, -- 100 Byne Bill
            3341, -- Beastly Shank
            3343, -- Blue Pondweed
            3340, -- Sweet Tea
            3342, -- Savory Shank
            3344, -- Red Pondweed

            -- HIGHLEVEL MATERIALS

            -- Cycle #1
            658,  -- Damascus Ingot
            686,  -- Imperial Wootz Ingot
            720,  -- Ancient Lumber
            723,  -- Divine Lumber
            747,  -- Orichalcum Ingot
            831,  -- Shining Cloth
	        862,  -- Behemoth Leather
	        1312, -- Angel Skin

            -- Cycle #2
            -- 1313, -- Siren's Hair
            -- 1409, -- Siren's Macrame
            -- 1714, -- Cashmere Cloth
            -- 2169, -- Cerberus Hide
            -- 2371, -- Khimaira Horn
            -- 655,  -- Adaman Ingot
            -- 836,  -- Damascene Cloth
	        -- 837,  -- Malboro Fiber

            -- Cycle #3
            --1133,  -- Dragon Blood
            --1289,  -- Burning Hakutaku Eye
            --1446,  -- Lacquer Tree Log
            --2001,  -- Dark Adaman Sheet
            --2152,  -- Marid Leather
            --2275,  -- Scintillant Ingot
            --2289,  -- Wamoura Cloth

            -- Cycle #4
            -- 2340, -- Imperial Silk Cloth
            -- 2535, -- Jacaranda Lumber
            -- 4272, -- Dragon Meat
            -- 730,  -- Bloodwood Lumber
            -- 866,  -- Wyvern Scales
            -- 867,  -- Dragon Scales
	        -- 901,  -- Venomous Claw

            -- Cycle #5
            -- 903,   -- Dragon Talon
            -- 908,   -- Adamantoise Shell
            -- 1110,  -- Beetle Blood
            -- 1311,  -- Oxblood
            -- 1816,  -- Wyrm Horn
            -- 2168,  -- Cerberus Claw
	        -- 2172,  -- Hydra Scale
        },
    },

    [25] =
    {
        ['price'] = 750,
        ['items'] =
        {	
            
			-- Cycle #1
            
            10113, -- Cipher: Lion
            10118, -- Cipher: Naja
            10170, -- Cipher: Nashmeira II
	        10136, -- Cipher: Uka

            -- Cycle #2

            -- 10145, -- Cipher: Rughadjeen
            -- 10193, -- Cipher: Monberaux
	        -- 10168, -- Cipher: Prishe II

            -- Cycle #3

            -- 10135, -- Cipher: Mumor
            -- 10140, -- Cipher: Koru-Moru
	        -- 10120, -- Cipher: Lehko
			
	    	-- Cycle #4

	        -- 10152, -- Cipher: Qultada
	        -- 10160, -- Cipher: Zeid II
            -- 10187, -- Cipher: Shantotto II
			
            -- Cycle #5

	        -- 10163, -- Cipher: Leonoyne
	        -- 10151, -- Cipher: Mayakov
	        -- 10152, -- Cipher: Adelheid

        },
    },

    [29] =
    {
        ['price'] = 1500,
        ['items'] =
        {
            
            -- EVENT TRUSTS ADD RARLY, for players who missed event. Month after event.
            -- 10178, -- Cipher: Ullegore
            -- 10177, -- Cipher: Mumor II
			
            -- Always Active
            
            14739, -- Suppanomimi
            14741, -- Abyssal Earring
            14742, -- Beastly Earring
            14743, -- Bushinomimi Earring
            14740, -- Knights Earring
            15962, -- static earring
            15963, -- magnetic earring
            15964, -- hollow earring
            15965, -- ethereal earring
            15807, -- balrahns ring
            15808, -- ulthalams ring
            15809, -- jalzahns ring
            15543, -- rajas ring
            15544, -- sattva ring
            15545, -- tamas ring
        },
    },
}
return prizes
