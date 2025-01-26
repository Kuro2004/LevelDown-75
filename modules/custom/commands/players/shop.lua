--------------------------------------------------------------
-- func: !shop
-- desc: Opens a custom shop.
--------------------------------------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 0,
    parameters = "i"
}

commandObj.onTrigger = function(player, page)
    if (page == 0 or page == nil) then
        player:printToPlayer( '1: Tool Shop, 2: Food Shop, 3: Pharmacy Shop, 4: Ammo Shop')
    elseif (page == 1) then
        local stock_1 =
        {
            5417, 2000,    -- Toolbag (Sanjaku-Tenugui)
            5319, 2000,    -- Toolbag (Shinobi-Tabi)
            5314, 5100,    -- Toolbag (Shihei)
            5867, 2000,    -- Toolbag (Inoshishinofuda)
            5868, 2000,    -- Toolbag (Shikanofuda)
            5869, 2000,    -- Toolbag (Chonofuda)
            1022, 2000,    -- Thief's Tools
            5870, 10000,   -- Trump Card
        }
        xi.shop.general(player, stock_1)
        player:printToPlayer( 'Tools Shop')
    elseif ( page == 2) then
        local stock_2 =
        {
			4303, 5500,     -- Persikos Au Lait
			4558, 2500,     -- Yagudo Drink	
			5718, 3500,     -- Cream Puff
			5158, 55000,    -- Vermillion Jelly
			5677, 25000,    -- Patriarch Sautee
			5212, 35000,    -- Arrabbiata +1
			5744, 35000,    -- Marinara Pizza +1
			5603, 55000,    -- Hydra Kofte +1
			4574, 2500,     -- Meat Chiefkabob
			4350, 25000,    -- Dragon Steak
			4488, 3500,     -- Jack-o'-Lantern
			5156, 15000,    -- Porcupine Pie
			5216, 4500,     -- Tentacle Sushi +1
			5162, 15000,    -- Squid Sushi +1
			5163, 25000,    -- Sole Sushi +1
			5179, 6500,     -- Dorado Sushi +1
			5177, 5500,     -- Bream Sushi +1
			5160, 25000,    -- Urchin Sushi +1
			5153, 5500,     -- Fatty Tuna Sushi
			5753, 40000,    -- Pot-Au-Feu +1
			5175, 25000,    -- Leremieu Taco
			5765, 25000,    -- Red Curry Bun +1
			4339, 15000,    -- Rolanberry Pie +1
			4523, 5500,     -- Melon Pie +1
			5200, 55000,    -- Pescatora+1
			4269, 25000,    -- Bijou Glace
			4576, 1500,     -- Wizard Cookie
        }
		xi.shop.general(player, stock_2)
		player:printToPlayer( 'Food Shop')
		
		elseif ( page == 3) then
        local stock_3 =
        {
            
            4164, 1500,     -- Prism Powder
            4165, 2500,     -- Silent Oil
            4148, 450,      -- Antidote
            4154, 4000,     -- Holy Water
            4150, 2000,     -- Eye Drops
            4151, 2000,     -- Echo Drops
            4157, 2000,     -- Poison Potion
            4161, 2000,	    -- Sleep Potion
            4149, 5500,     -- Panacea
            4155, 2500,     -- Remedy
            5356, 3500,     -- Remedy Ointment
            5418, 2000,     -- Tincture
			4153, 2000,     -- Bottle of Antacid
            4213, 5500,     -- Icarus Wing
            5876, 25000,    -- Petrify Screen
            5877, 25000,    -- Terror Screen
            5878, 25000,    -- Amnesia Screen
            5879, 25000,    -- Doom Screen
            5880, 25000,    -- Poison Screen
        }
        xi.shop.general(player, stock_3)
		player:printToPlayer( 'Pharmacy Shop')
				elseif ( page == 4) then
        local stock_4 =
        {
            
			5340, 8100,	    -- Silver Bullet pouch
			5359, 3100,     -- Bronze Bullet pouch
			5363, 3100,     -- Bullet Pouch
			5353, 5100,     -- Iron Bullet Pouch
			5342, 5100,     -- Corsair Bullet Pouch
			5416, 5200,     -- Steel Bullet Pouch
            18713, 10,      -- Copper Bullets
			19229, 30,      -- Tin Bullet
			19228, 100,     -- Pakton Bullet
			19201, 150,     -- Electrum Bullet
			17300, 200,     -- Platinum Bullet
			17318, 10,	    -- Wooden Arrow
			17332, 100,	    -- Fang Arrow
			17317, 150,	    -- Gold Arrow
			17334, 200,	    -- Platinum Arrow
			4220, 2100,	    -- Bone Quiver
			4226, 2100,	    -- Silver Quiver
			4222, 1600,	    -- Horn Quiver
			5332, 5100,	    -- Kabura Quiver
			17336, 10,      -- Crossbow Bolt
			19200, 100,     -- Black Bolt
			5334, 3100,     -- Blind Bolt Quiver
			5335, 3100,     -- Acid Bolt Quiver
			5338, 2100,     -- Venom Bolt Quiver
			5337, 3100,	    -- Sleep Bolt Quiver
			5336, 2100,     -- Holy Bolt Quiver
			4228, 1100,     -- Mythril Bolt Quiver
			5339, 5100,     -- Bloody Bolt Quiver
			4229, 2000,     -- Darksteel Bolt Quiver
			17301, 45,	    -- Shuriken
			17302, 250,	    -- Juji Shuriken
			17303, 300,	    -- Manji Shuriken
			18712, 500,	    -- Koga Shuriken
        }
        xi.shop.general(player, stock_4)
		player:printToPlayer( 'Ammo Shop')
		
    else
        player:printToPlayer( string.format( "Page %i not found.", page ) )
    end
end

return commandObj
