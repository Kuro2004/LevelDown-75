UPDATE mob_spawn_points SET pos_X = -478.338, pos_y = -0.152,  pos_z = 764.157,  pos_rot = 85  WHERE mobid = 17572221; -- Voidwrought
UPDATE mob_spawn_points SET pos_X = -273.751, pos_y = -40.202, pos_z = -725.477, pos_rot = 136 WHERE mobid = 17117891; -- 17117891
UPDATE mob_spawn_points SET pos_X = -273.087, pos_y = 0.3,     pos_z = -914.407, pos_rot = 103 WHERE mobid = 16793943; -- Bismarck
UPDATE mob_spawn_points SET pos_X = -223.851, pos_y = -1.589,  pos_z = -495.487, pos_rot = 109 WHERE mobid = 17289664; -- Sabotender_Campeador
UPDATE mob_spawn_points SET pos_X = -193.038, pos_y = -0.657,  pos_z = 191.900,  pos_rot = 193 WHERE mobid = 17584429; -- Mellonia
UPDATE mob_spawn_points SET pos_X = -169.770, pos_y = -2.170,  pos_z = 331.823,  pos_rot = 73  WHERE mobid = 17289670; -- Sabotender_Campeador
UPDATE mob_spawn_points SET pos_X = -133.110, pos_y = -0.428,  pos_z = 377.231,  pos_rot = 96  WHERE mobid = 17584430; -- Mellonia
UPDATE mob_spawn_points SET pos_X = -124.764, pos_y = 7.634,   pos_z = -365.576, pos_rot = 217 WHERE mobid = 17555774; -- Hahava
UPDATE mob_spawn_points SET pos_X = -118.258, pos_y = 0.3,     pos_z = -624.814, pos_rot = 93  WHERE mobid = 16793954; -- Bismarck
UPDATE mob_spawn_points SET pos_X = -6.279,   pos_y = 20.00,   pos_z = 159.098,  pos_rot = 233 WHERE mobid = 17588708; -- Ogbunabali
UPDATE mob_spawn_points SET pos_X = 36.197,   pos_y = -10.904, pos_z = 436.593,  pos_rot = 2   WHERE mobid = 17580342; -- Lorbulcrud
UPDATE mob_spawn_points SET pos_X = 43.825,   pos_y = -12.00,  pos_z = 281.384,  pos_rot = 114 WHERE mobid = 17252817; -- Rw_Nw_Prt_M_Hrw
UPDATE mob_spawn_points SET pos_X = 73.656,   pos_y = -0.000,  pos_z = -205.806, pos_rot = 192 WHERE mobid = 17629649; -- Malleator_Maurok
UPDATE mob_spawn_points SET pos_X = 75.799,   pos_y = -20.168, pos_z = 247.353,  pos_rot = 89  WHERE mobid = 17293650; -- Kaggen
UPDATE mob_spawn_points SET pos_X = 80.351,   pos_y = 31.494,  pos_z = 326.033,  pos_rot = 83  WHERE mobid = 17269128; -- Goji
UPDATE mob_spawn_points SET pos_X = 178.939,  pos_y = -20.521, pos_z = -312.068, pos_rot = 30  WHERE mobid = 17109720; -- Cottus
UPDATE mob_spawn_points SET pos_X = 208.212,  pos_y = 14.9838, pos_z = -680.000, pos_rot = 124 WHERE mobid = 17256919; -- Smierc
UPDATE mob_spawn_points SET pos_X = 240.951,  pos_y = -24.265, pos_z = 565.048,  pos_rot = 72  WHERE mobid = 17252818; -- Rw_Nw_Prt_M_Hrw
UPDATE mob_spawn_points SET pos_X = 245.318,  pos_y = -0.294,  pos_z = -641.355, pos_rot = 247 WHERE mobid = 17215957; -- Bhishani
UPDATE mob_spawn_points SET pos_X = 279.958,  pos_y = -0.040,  pos_z = 563.950,  pos_rot = 130 WHERE mobid = 17113827; -- Kholomodumo
UPDATE mob_spawn_points SET pos_X = 281.265,  pos_y = -60.000, pos_z = 364.232,  pos_rot = 192 WHERE mobid = 17109718; -- Cottus
UPDATE mob_spawn_points SET pos_X = 281.302,  pos_y = 4.6,     pos_z = 219.454,  pos_rot = 71  WHERE mobid = 17281500; -- Holy_Moly
UPDATE mob_spawn_points SET pos_X = 365.333,  pos_y = 20.686,  pos_z = 224.015,  pos_rot = 110 WHERE mobid = 16806258; -- Fjalar
UPDATE mob_spawn_points SET pos_X = 403.066,  pos_y = -1.251,  pos_z = -236.960, pos_rot = 104 WHERE mobid = 17215956; -- Bhishani
UPDATE mob_spawn_points SET pos_X = 439.332,  pos_y = -50.110, pos_z = 325.739,  pos_rot = 58  WHERE mobid = 17109719; -- Cottus
UPDATE mob_spawn_points SET pos_X = 446.041,  pos_y = 19.737,  pos_z = -199.369, pos_rot = 125 WHERE mobid = 16806254; -- Fjalar
UPDATE mob_spawn_points SET pos_X = 562.442,  pos_y = -10.519, pos_z = 606.098,  pos_rot = 116 WHERE mobid = 17138409; -- Ushumgal
UPDATE mob_spawn_points SET pos_X = 200.167,  pos_y = -24.028, pos_z = -164.006, pos_rot = 198 WHERE mobid = 17256920; -- Smierc
UPDATE npc_list SET status = 0 WHERE npcid = 17809534;
UPDATE npc_list SET status = 0 WHERE npcid = 17752373;
UPDATE npc_list SET status = 0 WHERE npcid = 17134277;
UPDATE npc_list SET status = 0 WHERE npcid = 17122262;
UPDATE npc_list SET status = 0 WHERE npcid = 17801354;
UPDATE npc_list SET status = 0 WHERE npcid = 17789016;
UPDATE npc_list SET status = 0 WHERE npcid = 17228394;
UPDATE npc_list SET status = 0 WHERE npcid = 17269279;
UPDATE npc_list SET status = 0 WHERE npcid = 17179523;
UPDATE npc_list SET status = 0 WHERE npcid = 17105695;
UPDATE npc_list SET look = 0x0100060800106620003002400250006000700000 WHERE npcid = 17826146;

INSERT INTO mob_droplist VALUES(4002,1,1,500,23815,300);-- sapphire trousers / VWNM Sallow Seymour
INSERT INTO mob_droplist VALUES(4002,1,1,500,22053,200);-- ethereal_club / VWNM Sallow Seymour
INSERT INTO mob_droplist VALUES(4002,1,2,1000,2168,333);-- Cerberus Claw / VWNM Sallow Seymour
INSERT INTO mob_droplist VALUES(4002,1,2,1000,1133,333);-- Dragon Blood / VWNM Sallow Seymour
INSERT INTO mob_droplist VALUES(4002,1,2,1000,2372,334);-- Khimaira Mane / VWNM Sallow Seymour
INSERT INTO mob_droplist VALUES(4002,1,3,250,1850,125);-- first virtue / VWNM Sallow Seymour
INSERT INTO mob_droplist VALUES(4002,1,3,250,18016,125);-- Odorous Knife +1 / VWNM Sallow Seymour
INSERT INTO mob_droplist VALUES(4003,1,1,500,23818,300);-- jadeite_cuirie / VWNM Ushumgal
INSERT INTO mob_droplist VALUES(4003,1,1,500,21571,200);-- ethereal_dagger / VWNM Ushumgal
INSERT INTO mob_droplist VALUES(4003,1,2,1000,1299,333);-- Fire Bead / VWNM Ushumgal
INSERT INTO mob_droplist VALUES(4003,1,2,1000,1301,333);-- Wind Bead / VWNM Ushumgal
INSERT INTO mob_droplist VALUES(4003,1,2,1000,836,334);-- Damascene Cloth / VWNM Ushumgal
INSERT INTO mob_droplist VALUES(4003,1,3,250,1419,125);-- Spring Stone / VWNM Ushumgal
INSERT INTO mob_droplist VALUES(4003,1,3,250,1850,125);-- first virtue / VWNM Ushumgal
INSERT INTO mob_droplist VALUES(4004,1,1,500,21838,300);-- ethereal_scythe / VWNM Sarimanok
INSERT INTO mob_droplist VALUES(4004,1,1,500,21530,200);-- Tokkosho / VWNM Sarimanok
INSERT INTO mob_droplist VALUES(4004,1,2,1000,1313,333);-- Sirens Hair / VWNM Sarimanok
INSERT INTO mob_droplist VALUES(4004,1,2,1000,1713,333);-- Cashmere Thread / VWNM Sarimanok
INSERT INTO mob_droplist VALUES(4004,1,2,1000,1712,334);-- Cashmere Wool / VWNM Sarimanok
INSERT INTO mob_droplist VALUES(4004,1,3,250,1421,125);-- Summer Stone / VWNM Sarimanok
INSERT INTO mob_droplist VALUES(4004,1,3,250,1419,125);-- Spring Stone / VWNM Sarimanok
INSERT INTO mob_droplist VALUES(4005,1,1,500,23817,300);-- jadeite_visor / VWNM Cottus
INSERT INTO mob_droplist VALUES(4005,1,1,500,23816,200);-- sapphire leggings / VWNM Cottus
INSERT INTO mob_droplist VALUES(4005,1,2,1000,2373,333);-- Khimaira Tail / VWNM Cottus
INSERT INTO mob_droplist VALUES(4005,1,2,1000,2371,333);-- Khimaira Horn / VWNM Cottus
INSERT INTO mob_droplist VALUES(4005,1,2,1000,647,334);-- Molybdenum Ore / VWNM Cottus
INSERT INTO mob_droplist VALUES(4005,1,3,250,1423,125);-- Autumn Stone / VWNM Cottus
INSERT INTO mob_droplist VALUES(4005,1,3,250,1421,125);-- Summer Stone / VWNM Cottus
INSERT INTO mob_droplist VALUES(4006,1,1,500,21713,300);-- ethereal_axe / VWNM Virvatuli
INSERT INTO mob_droplist VALUES(4006,1,1,500,23822,200);-- diamond_somen / VWNM Virvatuli
INSERT INTO mob_droplist VALUES(4006,1,2,1000,837,333);-- Malboro Fiber / VWNM Virvatuli
INSERT INTO mob_droplist VALUES(4006,1,2,1000,867,333);-- Dragon Scales / VWNM Virvatuli
INSERT INTO mob_droplist VALUES(4006,1,2,1000,860,334);-- Behemoth Hide / VWNM Virvatuli
INSERT INTO mob_droplist VALUES(4006,1,3,250,1425,125);-- Winter Stone / VWNM Virvatuli
INSERT INTO mob_droplist VALUES(4006,1,3,250,1423,125);-- Autumn Stone / VWNM Virvatuli
INSERT INTO mob_droplist VALUES(4007,1,1,500,21861,300);-- Aern Spear II / VWNM Pancimanci
INSERT INTO mob_droplist VALUES(4007,1,1,500,21886,200);-- Iapetus / VWNM Pancimanci
INSERT INTO mob_droplist VALUES(4007,1,2,1000,1303,333);-- Lightning Bead / VWNM Pancimanci
INSERT INTO mob_droplist VALUES(4007,1,2,1000,1816,333);-- Wyrm Horn / VWNM Pancimanci
INSERT INTO mob_droplist VALUES(4007,1,2,1000,646,334);-- Adaman Ore / VWNM Pancimanci
INSERT INTO mob_droplist VALUES(4007,1,3,250,3355,125);-- Divine Bijou / VWNM Pancimanci
INSERT INTO mob_droplist VALUES(4007,1,3,250,1425,125);-- Winter Stone / VWNM Pancimanci
INSERT INTO mob_droplist VALUES(4008,1,1,500,20694,300);-- Fermion Sword / VWNM Goji
INSERT INTO mob_droplist VALUES(4008,1,1,500,23813,200);-- sapphire platemail / VWNM Goji
INSERT INTO mob_droplist VALUES(4008,1,2,1000,2169,333);-- Cerberus Hide / VWNM Goji
INSERT INTO mob_droplist VALUES(4008,1,2,1000,1133,333);-- Dragon Blood / VWNM Goji
INSERT INTO mob_droplist VALUES(4008,1,2,1000,655,334);-- Adaman Ingot / VWNM Goji
INSERT INTO mob_droplist VALUES(4008,1,3,250,3353,125);-- Barbaric Bijou / VWNM Goji
INSERT INTO mob_droplist VALUES(4008,1,3,250,3355,125);-- Divine Bijou / VWNM Goji
INSERT INTO mob_droplist VALUES(4009,1,1,500,22146,300);-- ethereal_bow / VWNM Gugalanna
INSERT INTO mob_droplist VALUES(4009,1,1,500,23834,200);-- ruby_cuffs / VWNM Gugalanna
INSERT INTO mob_droplist VALUES(4009,1,2,1000,658,333);-- Damascene Ingot / VWNM Gugalanna
INSERT INTO mob_droplist VALUES(4009,1,2,1000,6416,333);-- Behemoth Meat / VWNM Gugalanna
INSERT INTO mob_droplist VALUES(4009,1,2,1000,903,334);-- Dragon Talon / VWNM Gugalanna
INSERT INTO mob_droplist VALUES(4009,1,3,250,3354,125);-- Steelwall BiJou / VWNM Gugalanna
INSERT INTO mob_droplist VALUES(4009,1,3,250,3353,125);-- Barbaric Bijou / VWNM Gugalanna
INSERT INTO mob_droplist VALUES(4010,1,1,500,22124,300);-- Artemiss bow / VWNM Yatagarasu
INSERT INTO mob_droplist VALUES(4010,1,1,500,20514,200);-- Aphelion knuckles / VWNM Yatagarasu
INSERT INTO mob_droplist VALUES(4010,1,2,1000,4272,333);-- Dragon Meat / VWNM Yatagarasu
INSERT INTO mob_droplist VALUES(4010,1,2,1000,1306,333);-- Dark Bead / VWNM Yatagarasu
INSERT INTO mob_droplist VALUES(4010,1,2,1000,1302,334);-- Earth Bead / VWNM Yatagarasu
INSERT INTO mob_droplist VALUES(4010,1,3,250,3356,125);-- Roving Bijou / VWNM Yatagarasu
INSERT INTO mob_droplist VALUES(4010,1,3,250,3354,125);-- Steelwall BiJou / VWNM Yatagarasu
INSERT INTO mob_droplist VALUES(4011,1,1,500,23820,300);-- jadeite_chausses / VWNM Agathos
INSERT INTO mob_droplist VALUES(4011,1,1,500,23824,200);-- diamond_kote / VWNM Agathos
INSERT INTO mob_droplist VALUES(4011,1,2,1000,831,333);-- Shining Cloth / VWNM Agathos
INSERT INTO mob_droplist VALUES(4011,1,2,1000,1110,333);-- Beetle Blood / VWNM Agathos
INSERT INTO mob_droplist VALUES(4011,1,2,1000,908,334);-- Adamantoise Shell / VWNM Agathos
INSERT INTO mob_droplist VALUES(4011,1,3,250,3343,125);-- Blue Pond Weed / VWNM Agathos
INSERT INTO mob_droplist VALUES(4011,1,3,250,3356,125);-- Roving Bijou / VWNM Agathos
INSERT INTO mob_droplist VALUES(4012,1,1,500,23836,300);-- ruby_pigaches / VWNM Cherufe
INSERT INTO mob_droplist VALUES(4012,1,1,500,23826,200);-- diamond_sune-ate / VWNM Cherufe
INSERT INTO mob_droplist VALUES(4012,1,2,1000,5565,333);-- Cerberus Meat / VWNM Cherufe
INSERT INTO mob_droplist VALUES(4012,1,2,1000,1304,333);-- Water Bead / VWNM Cherufe
INSERT INTO mob_droplist VALUES(4012,1,2,1000,883,334);-- Behemoth Horn / VWNM Cherufe
INSERT INTO mob_droplist VALUES(4012,1,3,250,3339,125);-- Honey Wine / VWNM Cherufe
INSERT INTO mob_droplist VALUES(4012,1,3,250,3343,125);-- Blue Pond Weed / VWNM Cherufe
INSERT INTO mob_droplist VALUES(4013,1,1,500,23821,300);-- jadeite_jambeaux / VWNM Taweret
INSERT INTO mob_droplist VALUES(4013,1,1,500,21624,200);-- ethereal_sword / VWNM Taweret
INSERT INTO mob_droplist VALUES(4013,1,2,1000,722,333);-- Divine Log / VWNM Taweret
INSERT INTO mob_droplist VALUES(4013,1,2,1000,1300,333);-- Ice Bead / VWNM Taweret
INSERT INTO mob_droplist VALUES(4013,1,2,1000,1311,334);-- Oxblood / VWNM Taweret
INSERT INTO mob_droplist VALUES(4013,1,3,250,3341,125);-- Beastly Shank / VWNM Taweret
INSERT INTO mob_droplist VALUES(4013,1,3,250,3339,125);-- Honey Wine / VWNM Taweret
INSERT INTO mob_droplist VALUES(4014,1,1,500,20574,300);-- Aern dagger II / VWNM Holy Moly
INSERT INTO mob_droplist VALUES(4014,1,1,500,21520,200);-- ethereal_fists / VWNM Holy Moly
INSERT INTO mob_droplist VALUES(4014,1,2,1000,2168,333);-- Cerberus Claw / VWNM Holy Moly
INSERT INTO mob_droplist VALUES(4014,1,2,1000,1133,333);-- Dragon Blood / VWNM Holy Moly
INSERT INTO mob_droplist VALUES(4014,1,2,1000,1305,334);-- Light Bead / VWNM Holy Moly
INSERT INTO mob_droplist VALUES(4014,1,3,250,3341,125);-- Beastly Shank / VWNM Holy Moly
INSERT INTO mob_droplist VALUES(4014,1,3,250,18016,125);-- Odorous Knife +1 / VWNM Holy Moly
INSERT INTO mob_droplist VALUES(4015,1,1,500,22066,300);-- Aern Staff II / VWNM Ildebrann
INSERT INTO mob_droplist VALUES(4015,1,1,500,21771,200);-- ethereal_greate_axe / VWNM Ildebrann
INSERT INTO mob_droplist VALUES(4015,1,2,1000,2372,333);-- Khimaira Mane / VWNM Ildebrann
INSERT INTO mob_droplist VALUES(4015,1,2,1000,1299,333);-- Fire Bead / VWNM Ildebrann
INSERT INTO mob_droplist VALUES(4015,1,2,1000,1301,334);-- Wind Bead / VWNM Ildebrann
INSERT INTO mob_droplist VALUES(4015,1,3,250,1850,125);-- first virtue / VWNM Ildebrann
INSERT INTO mob_droplist VALUES(4015,1,3,250,18016,125);-- Odorous Knife +1 / VWNM Ildebrann
INSERT INTO mob_droplist VALUES(4016,1,1,500,21873,300);-- ethereal_spear / VWNM Neith
INSERT INTO mob_droplist VALUES(4016,1,1,500,22050,200);-- Chac-chacs / VWNM Neith
INSERT INTO mob_droplist VALUES(4016,1,2,1000,836,333);-- Damascene Cloth / VWNM Neith
INSERT INTO mob_droplist VALUES(4016,1,2,1000,1313,333);-- Sirens Hair / VWNM Neith
INSERT INTO mob_droplist VALUES(4016,1,2,1000,1713,334);-- Cashmere Thread / VWNM Neith
INSERT INTO mob_droplist VALUES(4016,1,3,250,1419,125);-- Spring Stone / VWNM Neith
INSERT INTO mob_droplist VALUES(4016,1,3,250,1850,125);-- first virtue / VWNM Neith
INSERT INTO mob_droplist VALUES(4017,1,1,500,21743,300);-- Aern Axe II / VWNM Sabotender Campeador
INSERT INTO mob_droplist VALUES(4017,1,1,500,20931,200);-- celestial spear / VWNM Sabotender Campeador
INSERT INTO mob_droplist VALUES(4017,1,2,1000,1712,333);-- Cashmere Wool / VWNM Sabotender Campeador
INSERT INTO mob_droplist VALUES(4017,1,2,1000,2373,333);-- Khimaira Tail / VWNM Sabotender Campeador
INSERT INTO mob_droplist VALUES(4017,1,2,1000,2371,334);-- Khimaira Horn / VWNM Sabotender Campeador
INSERT INTO mob_droplist VALUES(4017,1,3,250,1421,125);-- Summer Stone / VWNM Sabotender Campeador
INSERT INTO mob_droplist VALUES(4017,1,3,250,1419,125);-- Spring Stone / VWNM Sabotender Campeador
INSERT INTO mob_droplist VALUES(4018,1,1,500,21962,300);-- ethereal_tachi / VWNM Tangaroa
INSERT INTO mob_droplist VALUES(4018,1,1,500,23825,200);-- diamond_hizayori / VWNM Tangaroa
INSERT INTO mob_droplist VALUES(4018,1,2,1000,647,333);-- Molybdenum Ore / VWNM Tangaroa
INSERT INTO mob_droplist VALUES(4018,1,2,1000,837,333);-- Malboro Fiber / VWNM Tangaroa
INSERT INTO mob_droplist VALUES(4018,1,2,1000,867,334);-- Dragon Scales / VWNM Tangaroa
INSERT INTO mob_droplist VALUES(4018,1,3,250,1423,125);-- Autumn Stone / VWNM Tangaroa
INSERT INTO mob_droplist VALUES(4018,1,3,250,1421,125);-- Summer Stone / VWNM Tangaroa
INSERT INTO mob_droplist VALUES(4019,1,1,500,21666,300);-- ethereal_g._sword / VWNM Malleator Maurok
INSERT INTO mob_droplist VALUES(4019,1,1,500,26414,200);-- Twinned Shield / VWNM Malleator Maurok
INSERT INTO mob_droplist VALUES(4019,1,2,1000,860,333);-- Behemoth Hide / VWNM Malleator Maurok
INSERT INTO mob_droplist VALUES(4019,1,2,1000,1303,333);-- Lightning Bead / VWNM Malleator Maurok
INSERT INTO mob_droplist VALUES(4019,1,2,1000,1816,334);-- Wyrm Horn / VWNM Malleator Maurok
INSERT INTO mob_droplist VALUES(4019,1,3,250,1425,125);-- Winter Stone / VWNM Malleator Maurok
INSERT INTO mob_droplist VALUES(4019,1,3,250,1423,125);-- Autumn Stone / VWNM Malleator Maurok
INSERT INTO mob_droplist VALUES(4020,1,1,500,21623,300);-- Twinned Blade / VWNM Fjalar
INSERT INTO mob_droplist VALUES(4020,1,1,500,23823,200);-- diamond_haramaki / VWNM Fjalar
INSERT INTO mob_droplist VALUES(4020,1,2,1000,646,333);-- Adaman Ore / VWNM Fjalar
INSERT INTO mob_droplist VALUES(4020,1,2,1000,2169,333);-- Cerberus Hide / VWNM Fjalar
INSERT INTO mob_droplist VALUES(4020,1,2,1000,1133,334);-- Dragon Blood / VWNM Fjalar
INSERT INTO mob_droplist VALUES(4020,1,3,250,3355,125);-- Divine Bijou / VWNM Fjalar
INSERT INTO mob_droplist VALUES(4020,1,3,250,1425,125);-- Winter Stone / VWNM Fjalar
INSERT INTO mob_droplist VALUES(4021,1,1,500,21693,300);-- Irradiance blade / VWNM Abununnu
INSERT INTO mob_droplist VALUES(4021,1,1,500,23814,200);-- sapphire gaunlets / VWNM Abununnu
INSERT INTO mob_droplist VALUES(4021,1,2,1000,655,333);-- Adaman Ingot / VWNM Abununnu
INSERT INTO mob_droplist VALUES(4021,1,2,1000,658,333);-- Damascene Ingot / VWNM Abununnu
INSERT INTO mob_droplist VALUES(4021,1,2,1000,6416,334);-- Behemoth Meat / VWNM Abununnu
INSERT INTO mob_droplist VALUES(4021,1,3,250,3353,125);-- Barbaric Bijou / VWNM Abununnu
INSERT INTO mob_droplist VALUES(4021,1,3,250,3355,125);-- Divine Bijou / VWNM Abununnu
INSERT INTO mob_droplist VALUES(4022,1,1,500,23833,300);-- ruby_robe / VWNM Tsui-Goab
INSERT INTO mob_droplist VALUES(4022,1,1,500,20593,200);-- hedron_dagger / VWNM Tsui-Goab
INSERT INTO mob_droplist VALUES(4022,1,2,1000,903,333);-- Dragon Talon / VWNM Tsui-Goab
INSERT INTO mob_droplist VALUES(4022,1,2,1000,4272,333);-- Dragon Meat / VWNM Tsui-Goab
INSERT INTO mob_droplist VALUES(4022,1,2,1000,1306,334);-- Dark Bead / VWNM Tsui-Goab
INSERT INTO mob_droplist VALUES(4022,1,3,250,3354,125);-- Steelwall BiJou / VWNM Tsui-Goab
INSERT INTO mob_droplist VALUES(4022,1,3,250,3353,125);-- Barbaric Bijou / VWNM Tsui-Goab
INSERT INTO mob_droplist VALUES(4023,1,1,500,23835,300);-- ruby_slops / VWNM Isarukitsck
INSERT INTO mob_droplist VALUES(4023,1,1,500,23819,200);-- jadeite_gloves / VWNM Isarukitsck
INSERT INTO mob_droplist VALUES(4023,1,2,1000,1302,333);-- Earth Bead / VWNM Isarukitsck
INSERT INTO mob_droplist VALUES(4023,1,2,1000,831,333);-- Shining Cloth / VWNM Isarukitsck
INSERT INTO mob_droplist VALUES(4023,1,2,1000,1110,334);-- Beetle Blood / VWNM Isarukitsck
INSERT INTO mob_droplist VALUES(4023,1,3,250,3356,125);-- Roving Bijou / VWNM Isarukitsck
INSERT INTO mob_droplist VALUES(4023,1,3,250,3354,125);-- Steelwall BiJou / VWNM Isarukitsck
INSERT INTO mob_droplist VALUES(4024,1,1,500,22165,300);-- ethereal_gun / VWNM Dimgruzub
INSERT INTO mob_droplist VALUES(4024,1,1,500,21911,200);-- ethereal_katana / VWNM Dimgruzub
INSERT INTO mob_droplist VALUES(4024,1,2,1000,908,333);-- Adamantoise Shell / VWNM Dimgruzub
INSERT INTO mob_droplist VALUES(4024,1,2,1000,5565,333);-- Cerberus Meat / VWNM Dimgruzub
INSERT INTO mob_droplist VALUES(4024,1,2,1000,1304,334);-- Water Bead / VWNM Dimgruzub
INSERT INTO mob_droplist VALUES(4024,1,3,250,3343,125);-- Blue Pond Weed / VWNM Dimgruzub
INSERT INTO mob_droplist VALUES(4024,1,3,250,3356,125);-- Roving Bijou / VWNM Dimgruzub
INSERT INTO mob_droplist VALUES(4025,1,1,500,23812,300);-- sapphire mask / VWNM Brekekekex
INSERT INTO mob_droplist VALUES(4025,1,1,500,21862,200);-- mizukage-no-naginata / VWNM Brekekekex
INSERT INTO mob_droplist VALUES(4025,1,2,1000,883,333);-- Behemoth Horn / VWNM Brekekekex
INSERT INTO mob_droplist VALUES(4025,1,2,1000,722,333);-- Divine Log / VWNM Brekekekex
INSERT INTO mob_droplist VALUES(4025,1,2,1000,1300,334);-- Ice Bead / VWNM Brekekekex
INSERT INTO mob_droplist VALUES(4025,1,3,250,3339,125);-- Honey Wine / VWNM Brekekekex
INSERT INTO mob_droplist VALUES(4025,1,3,250,3343,125);-- Blue Pond Weed / VWNM Brekekekex
INSERT INTO mob_droplist VALUES(4026,1,1,500,22090,300);-- ethereal_staff / VWNM Yalungur
INSERT INTO mob_droplist VALUES(4026,1,1,500,21965,200);-- Zanmato / VWNM Yalungur
INSERT INTO mob_droplist VALUES(4026,1,2,1000,2168,333);-- Cerberus Claw / VWNM Yalungur
INSERT INTO mob_droplist VALUES(4026,1,2,1000,1311,333);-- Oxblood / VWNM Yalungur
INSERT INTO mob_droplist VALUES(4026,1,2,1000,1305,334);-- Light Bead / VWNM Yalungur
INSERT INTO mob_droplist VALUES(4026,1,3,250,3341,125);-- Beastly Shank / VWNM Yalungur
INSERT INTO mob_droplist VALUES(4026,1,3,250,3339,125);-- Honey Wine / VWNM Yalungur
INSERT INTO mob_droplist VALUES(4027,1,1,500,20675,300);-- Aern sword II / VWNM Vanasarvik
INSERT INTO mob_droplist VALUES(4027,1,1,500,23832,200);-- ruby_coronal / VWNM Vanasarvik
INSERT INTO mob_droplist VALUES(4027,1,2,1000,1133,333);-- Dragon Blood / VWNM Vanasarvik
INSERT INTO mob_droplist VALUES(4027,1,2,1000,2372,333);-- Khimaira Mane / VWNM Vanasarvik
INSERT INTO mob_droplist VALUES(4027,1,2,1000,1299,334);-- Fire Bead / VWNM Vanasarvik
INSERT INTO mob_droplist VALUES(4027,1,3,250,3341,125);-- Beastly Shank / VWNM Vanasarvik
INSERT INTO mob_droplist VALUES(4027,1,3,250,18016,125);-- Odorous Knife +1 / VWNM Vanasarvik
INSERT INTO mob_droplist VALUES(4028,1,1,500,23836,300);-- ruby_pigaches / VWNM Lorbulcrud
INSERT INTO mob_droplist VALUES(4028,1,1,500,23817,200);-- jadeite_visor / VWNM Lorbulcrud
INSERT INTO mob_droplist VALUES(4028,1,2,1000,1301,333);-- Wind Bead / VWNM Lorbulcrud
INSERT INTO mob_droplist VALUES(4028,1,2,1000,836,333);-- Damascene Cloth / VWNM Lorbulcrud
INSERT INTO mob_droplist VALUES(4028,1,2,1000,1313,334);-- Sirens Hair / VWNM Lorbulcrud
INSERT INTO mob_droplist VALUES(4028,1,3,250,1418,125);-- Gem of the East / VWNM Lorbulcrud
INSERT INTO mob_droplist VALUES(4028,1,3,250,1853,125);-- second virtue / VWNM Lorbulcrud
INSERT INTO mob_droplist VALUES(4029,1,1,500,21693,300);-- Irradiance blade / VWNM Krabimanjaro
INSERT INTO mob_droplist VALUES(4029,1,1,500,21862,200);-- mizukage-no-naginata / VWNM Krabimanjaro
INSERT INTO mob_droplist VALUES(4029,1,2,1000,1713,333);-- Cashmere Thread / VWNM Krabimanjaro
INSERT INTO mob_droplist VALUES(4029,1,2,1000,1712,333);-- Cashmere Wool / VWNM Krabimanjaro
INSERT INTO mob_droplist VALUES(4029,1,2,1000,2373,334);-- Khimaira Tail / VWNM Krabimanjaro
INSERT INTO mob_droplist VALUES(4029,1,3,250,1422,125);-- Gem of the West / VWNM Krabimanjaro
INSERT INTO mob_droplist VALUES(4029,1,3,250,1418,125);-- Gem of the East / VWNM Krabimanjaro
INSERT INTO mob_droplist VALUES(4030,1,1,500,23813,300);-- sapphire platemail / VWNM Ogbunabali
INSERT INTO mob_droplist VALUES(4030,1,1,500,22146,200);-- ethereal_bow / VWNM Ogbunabali
INSERT INTO mob_droplist VALUES(4030,1,2,1000,2371,333);-- Khimaira Horn / VWNM Ogbunabali
INSERT INTO mob_droplist VALUES(4030,1,2,1000,647,333);-- Molybdenum Ore / VWNM Ogbunabali
INSERT INTO mob_droplist VALUES(4030,1,2,1000,837,334);-- Malboro Fiber / VWNM Ogbunabali
INSERT INTO mob_droplist VALUES(4030,1,3,250,1424,125);-- Gem of the North / VWNM Ogbunabali
INSERT INTO mob_droplist VALUES(4030,1,3,250,1422,125);-- Gem of the West / VWNM Ogbunabali
INSERT INTO mob_droplist VALUES(4031,1,1,500,22090,300);-- ethereal_staff / VWNM Roly-Poly
INSERT INTO mob_droplist VALUES(4031,1,1,500,20931,200);-- celestial spear / VWNM Roly-Poly
INSERT INTO mob_droplist VALUES(4031,1,2,1000,867,333);-- Dragon Scales / VWNM Roly-Poly
INSERT INTO mob_droplist VALUES(4031,1,2,1000,860,333);-- Behemoth Hide / VWNM Roly-Poly
INSERT INTO mob_droplist VALUES(4031,1,2,1000,1303,334);-- Lightning Bead / VWNM Roly-Poly
INSERT INTO mob_droplist VALUES(4031,1,3,250,1420,125);-- Gem of the South / VWNM Roly-Poly
INSERT INTO mob_droplist VALUES(4031,1,3,250,1424,125);-- Gem of the North / VWNM Roly-Poly
INSERT INTO mob_droplist VALUES(4032,1,1,500,23816,300);-- sapphire leggings / VWNM Laidly Laurence
INSERT INTO mob_droplist VALUES(4032,1,1,500,20694,200);-- Fermion Sword / VWNM Laidly Laurence
INSERT INTO mob_droplist VALUES(4032,1,2,1000,1816,333);-- Wyrm Horn / VWNM Laidly Laurence
INSERT INTO mob_droplist VALUES(4032,1,2,1000,646,333);-- Adaman Ore / VWNM Laidly Laurence
INSERT INTO mob_droplist VALUES(4032,1,2,1000,2169,334);-- Cerberus Hide / VWNM Laidly Laurence
INSERT INTO mob_droplist VALUES(4032,1,3,250,3357,125);-- leering bijou / VWNM Laidly Laurence
INSERT INTO mob_droplist VALUES(4032,1,3,250,1420,125);-- Gem of the South / VWNM Laidly Laurence
INSERT INTO mob_droplist VALUES(4033,1,1,500,23834,300);-- ruby_cuffs / VWNM Mellonia
INSERT INTO mob_droplist VALUES(4033,1,1,500,23835,200);-- ruby_slops / VWNM Mellonia
INSERT INTO mob_droplist VALUES(4033,1,2,1000,1133,333);-- Dragon Blood / VWNM Mellonia
INSERT INTO mob_droplist VALUES(4033,1,2,1000,655,333);-- Adaman Ingot / VWNM Mellonia
INSERT INTO mob_droplist VALUES(4033,1,2,1000,658,334);-- Damascene Ingot / VWNM Mellonia
INSERT INTO mob_droplist VALUES(4033,1,3,250,1551,125);-- Cloudy Orb / VWNM Mellonia
INSERT INTO mob_droplist VALUES(4033,1,3,250,3357,125);-- leering bijou / VWNM Mellonia
INSERT INTO mob_droplist VALUES(4034,1,1,500,21861,300);-- Aern Spear II / VWNM Nympha Eunomia
INSERT INTO mob_droplist VALUES(4034,1,1,500,22066,200);-- Aern Staff II / VWNM Nympha Eunomia
INSERT INTO mob_droplist VALUES(4034,1,2,1000,6416,333);-- Behemoth Meat / VWNM Nympha Eunomia
INSERT INTO mob_droplist VALUES(4034,1,2,1000,903,333);-- Dragon Talon / VWNM Nympha Eunomia
INSERT INTO mob_droplist VALUES(4034,1,2,1000,4272,334);-- Dragon Meat / VWNM Nympha Eunomia
INSERT INTO mob_droplist VALUES(4034,1,3,250,1853,125);-- second virtue / VWNM Nympha Eunomia
INSERT INTO mob_droplist VALUES(4034,1,3,250,1551,125);-- Cloudy Orb / VWNM Nympha Eunomia
INSERT INTO mob_droplist VALUES(4035,1,1,500,23825,300);-- diamond_hizayori / VWNM Gasha
INSERT INTO mob_droplist VALUES(4035,1,1,500,21962,200);-- ethereal_tachi / VWNM Gasha
INSERT INTO mob_droplist VALUES(4035,1,2,1000,1306,333);-- Dark Bead / VWNM Gasha
INSERT INTO mob_droplist VALUES(4035,1,2,1000,1302,333);-- Earth Bead / VWNM Gasha
INSERT INTO mob_droplist VALUES(4035,1,2,1000,831,334);-- Shining Cloth / VWNM Gasha
INSERT INTO mob_droplist VALUES(4035,1,3,250,1418,125);-- Gem of the East / VWNM Gasha
INSERT INTO mob_droplist VALUES(4035,1,3,250,1853,125);-- second virtue / VWNM Gasha
INSERT INTO mob_droplist VALUES(4036,1,1,500,21571,300);-- ethereal_dagger / VWNM Giltine
INSERT INTO mob_droplist VALUES(4036,1,1,500,23826,200);-- diamond_sune-ate / VWNM Giltine
INSERT INTO mob_droplist VALUES(4036,1,2,1000,1110,333);-- Beetle Blood / VWNM Giltine
INSERT INTO mob_droplist VALUES(4036,1,2,1000,908,333);-- Adamantoise Shell / VWNM Giltine
INSERT INTO mob_droplist VALUES(4036,1,2,1000,5565,334);-- Cerberus Meat / VWNM Giltine
INSERT INTO mob_droplist VALUES(4036,1,3,250,1422,125);-- Gem of the West / VWNM Giltine
INSERT INTO mob_droplist VALUES(4036,1,3,250,1418,125);-- Gem of the East / VWNM Giltine
INSERT INTO mob_droplist VALUES(4037,1,1,500,23821,300);-- jadeite_jambeaux / VWNM Cath Palug
INSERT INTO mob_droplist VALUES(4037,1,1,500,21771,200);-- ethereal_greate_axe / VWNM Cath Palug
INSERT INTO mob_droplist VALUES(4037,1,2,1000,1304,333);-- Water Bead / VWNM Cath Palug
INSERT INTO mob_droplist VALUES(4037,1,2,1000,883,333);-- Behemoth Horn / VWNM Cath Palug
INSERT INTO mob_droplist VALUES(4037,1,2,1000,722,334);-- Divine Log / VWNM Cath Palug
INSERT INTO mob_droplist VALUES(4037,1,3,250,1424,125);-- Gem of the North / VWNM Cath Palug
INSERT INTO mob_droplist VALUES(4037,1,3,250,1422,125);-- Gem of the West / VWNM Cath Palug
INSERT INTO mob_droplist VALUES(4038,1,1,500,21520,300);-- ethereal_fists / VWNM Modron
INSERT INTO mob_droplist VALUES(4038,1,1,500,22053,200);-- ethereal_club / VWNM Modron
INSERT INTO mob_droplist VALUES(4038,1,2,1000,1300,333);-- Ice Bead / VWNM Modron
INSERT INTO mob_droplist VALUES(4038,1,2,1000,1311,333);-- Oxblood / VWNM Modron
INSERT INTO mob_droplist VALUES(4038,1,2,1000,1305,334);-- Light Bead / VWNM Modron
INSERT INTO mob_droplist VALUES(4038,1,3,250,1420,125);-- Gem of the South / VWNM Modron
INSERT INTO mob_droplist VALUES(4038,1,3,250,1424,125);-- Gem of the North / VWNM Modron
INSERT INTO mob_droplist VALUES(4039,1,1,500,21838,300);-- ethereal_scythe / VWNM Mimic King
INSERT INTO mob_droplist VALUES(4039,1,1,500,23820,200);-- jadeite_chausses / VWNM Mimic King
INSERT INTO mob_droplist VALUES(4039,1,2,1000,2168,333);-- Cerberus Claw / VWNM Mimic King
INSERT INTO mob_droplist VALUES(4039,1,2,1000,1133,333);-- Dragon Blood / VWNM Mimic King
INSERT INTO mob_droplist VALUES(4039,1,2,1000,2372,334);-- Khimaira Mane / VWNM Mimic King
INSERT INTO mob_droplist VALUES(4039,1,3,250,3357,125);-- leering bijou / VWNM Mimic King
INSERT INTO mob_droplist VALUES(4039,1,3,250,1420,125);-- Gem of the South / VWNM Mimic King
INSERT INTO mob_droplist VALUES(4040,1,1,500,22124,300);-- Artemiss bow / VWNM Bismarck
INSERT INTO mob_droplist VALUES(4040,1,1,500,26414,200);-- Twinned Shield / VWNM Bismarck
INSERT INTO mob_droplist VALUES(4040,1,2,1000,1299,333);-- Fire Bead / VWNM Bismarck
INSERT INTO mob_droplist VALUES(4040,1,2,1000,1301,333);-- Wind Bead / VWNM Bismarck
INSERT INTO mob_droplist VALUES(4040,1,2,1000,836,334);-- Damascene Cloth / VWNM Bismarck
INSERT INTO mob_droplist VALUES(4040,1,3,250,1551,125);-- Cloudy Orb / VWNM Bismarck
INSERT INTO mob_droplist VALUES(4040,1,3,250,3357,125);-- leering bijou / VWNM Bismarck
INSERT INTO mob_droplist VALUES(4041,1,1,500,23822,300);-- diamond_somen / VWNM Morta
INSERT INTO mob_droplist VALUES(4041,1,1,500,21873,200);-- ethereal_spear / VWNM Morta
INSERT INTO mob_droplist VALUES(4041,1,2,1000,1313,333);-- Sirens Hair / VWNM Morta
INSERT INTO mob_droplist VALUES(4041,1,2,1000,1713,333);-- Cashmere Thread / VWNM Morta
INSERT INTO mob_droplist VALUES(4041,1,2,1000,1712,334);-- Cashmere Wool / VWNM Morta
INSERT INTO mob_droplist VALUES(4041,1,3,250,1853,125);-- second virtue / VWNM Morta
INSERT INTO mob_droplist VALUES(4041,1,3,250,1551,125);-- Cloudy Orb / VWNM Morta
INSERT INTO mob_droplist VALUES(4042,1,1,500,21666,300);-- ethereal_g._sword / VWNM Murk-Veined Baneberry
INSERT INTO mob_droplist VALUES(4042,1,1,500,21743,200);-- Aern Axe II / VWNM Murk-Veined Baneberry
INSERT INTO mob_droplist VALUES(4042,1,2,1000,2373,333);-- Khimaira Tail / VWNM Murk-Veined Baneberry
INSERT INTO mob_droplist VALUES(4042,1,2,1000,2371,333);-- Khimaira Horn / VWNM Murk-Veined Baneberry
INSERT INTO mob_droplist VALUES(4042,1,2,1000,647,334);-- Molybdenum Ore / VWNM Murk-Veined Baneberry
INSERT INTO mob_droplist VALUES(4042,1,3,250,3456,125);-- creepers juju / VWNM Murk-Veined Baneberry
INSERT INTO mob_droplist VALUES(4042,1,3,250,1856,125);-- third virtue / VWNM Murk-Veined Baneberry
INSERT INTO mob_droplist VALUES(4043,1,1,500,23812,300);-- sapphire mask / VWNM Melancholic Moira
INSERT INTO mob_droplist VALUES(4043,1,1,500,20574,200);-- Aern dagger II / VWNM Melancholic Moira
INSERT INTO mob_droplist VALUES(4043,1,2,1000,837,333);-- Malboro Fiber / VWNM Melancholic Moira
INSERT INTO mob_droplist VALUES(4043,1,2,1000,867,333);-- Dragon Scales / VWNM Melancholic Moira
INSERT INTO mob_droplist VALUES(4043,1,2,1000,860,334);-- Behemoth Hide / VWNM Melancholic Moira
INSERT INTO mob_droplist VALUES(4043,1,3,250,3457,125);-- revelatory juju / VWNM Melancholic Moira
INSERT INTO mob_droplist VALUES(4043,1,3,250,3456,125);-- creepers juju / VWNM Melancholic Moira
INSERT INTO mob_droplist VALUES(4044,1,1,500,23832,300);-- ruby_coronal / VWNM Belphoebe
INSERT INTO mob_droplist VALUES(4044,1,1,500,21624,200);-- ethereal_sword / VWNM Belphoebe
INSERT INTO mob_droplist VALUES(4044,1,2,1000,1303,333);-- Lightning Bead / VWNM Belphoebe
INSERT INTO mob_droplist VALUES(4044,1,2,1000,1816,333);-- Wyrm Horn / VWNM Belphoebe
INSERT INTO mob_droplist VALUES(4044,1,2,1000,646,334);-- Adaman Ore / VWNM Belphoebe
INSERT INTO mob_droplist VALUES(4044,1,3,250,3458,125);-- undying juju / VWNM Belphoebe
INSERT INTO mob_droplist VALUES(4044,1,3,250,3457,125);-- revelatory juju / VWNM Belphoebe
INSERT INTO mob_droplist VALUES(4045,1,1,500,21886,300);-- Iapetus / VWNM Kholomodumo
INSERT INTO mob_droplist VALUES(4045,1,1,500,22050,200);-- Chac-chacs / VWNM Kholomodumo
INSERT INTO mob_droplist VALUES(4045,1,2,1000,2169,333);-- Cerberus Hide / VWNM Kholomodumo
INSERT INTO mob_droplist VALUES(4045,1,2,1000,1133,333);-- Dragon Blood / VWNM Kholomodumo
INSERT INTO mob_droplist VALUES(4045,1,2,1000,655,334);-- Adaman Ingot / VWNM Kholomodumo
INSERT INTO mob_droplist VALUES(4045,1,3,250,1552,125);-- Sky Orb / VWNM Kholomodumo
INSERT INTO mob_droplist VALUES(4045,1,3,250,3458,125);-- undying juju / VWNM Kholomodumo
INSERT INTO mob_droplist VALUES(4046,1,1,500,21713,300);-- ethereal_axe / VWNM Lord Asag
INSERT INTO mob_droplist VALUES(4046,1,1,500,20675,200);-- Aern sword II / VWNM Lord Asag
INSERT INTO mob_droplist VALUES(4046,1,2,1000,658,333);-- Damascene Ingot / VWNM Lord Asag
INSERT INTO mob_droplist VALUES(4046,1,2,1000,6416,333);-- Behemoth Meat / VWNM Lord Asag
INSERT INTO mob_droplist VALUES(4046,1,2,1000,903,334);-- Dragon Talon / VWNM Lord Asag
INSERT INTO mob_droplist VALUES(4046,1,3,250,1180,125);-- Atropos Orb / VWNM Lord Asag
INSERT INTO mob_droplist VALUES(4046,1,3,250,1552,125);-- Sky Orb / VWNM Lord Asag
INSERT INTO mob_droplist VALUES(4047,1,1,500,23818,300);-- jadeite_cuirie / VWNM Akupara
INSERT INTO mob_droplist VALUES(4047,1,1,500,23823,200);-- diamond_haramaki / VWNM Akupara
INSERT INTO mob_droplist VALUES(4047,1,2,1000,4272,333);-- Dragon Meat / VWNM Akupara
INSERT INTO mob_droplist VALUES(4047,1,2,1000,1306,333);-- Dark Bead / VWNM Akupara
INSERT INTO mob_droplist VALUES(4047,1,2,1000,1302,334);-- Earth Bead / VWNM Akupara
INSERT INTO mob_droplist VALUES(4047,1,3,250,1856,125);-- third virtue / VWNM Akupara
INSERT INTO mob_droplist VALUES(4047,1,3,250,1180,125);-- Atropos Orb / VWNM Akupara
INSERT INTO mob_droplist VALUES(4048,1,1,500,23833,300);-- ruby_robe / VWNM Kaggen
INSERT INTO mob_droplist VALUES(4048,1,1,500,21911,200);-- ethereal_katana / VWNM Kaggen
INSERT INTO mob_droplist VALUES(4048,1,2,1000,831,333);-- Shining Cloth / VWNM Kaggen
INSERT INTO mob_droplist VALUES(4048,1,2,1000,1110,333);-- Beetle Blood / VWNM Kaggen
INSERT INTO mob_droplist VALUES(4048,1,2,1000,908,334);-- Adamantoise Shell / VWNM Kaggen
INSERT INTO mob_droplist VALUES(4048,1,3,250,3456,125);-- creepers juju / VWNM Kaggen
INSERT INTO mob_droplist VALUES(4048,1,3,250,1856,125);-- third virtue / VWNM Kaggen
INSERT INTO mob_droplist VALUES(4049,1,1,500,23824,300);-- diamond_kote / VWNM Akvan
INSERT INTO mob_droplist VALUES(4049,1,1,500,21965,200);-- Zanmato / VWNM Akvan
INSERT INTO mob_droplist VALUES(4049,1,2,1000,5565,333);-- Cerberus Meat / VWNM Akvan
INSERT INTO mob_droplist VALUES(4049,1,2,1000,1304,333);-- Water Bead / VWNM Akvan
INSERT INTO mob_droplist VALUES(4049,1,2,1000,883,334);-- Behemoth Horn / VWNM Akvan
INSERT INTO mob_droplist VALUES(4049,1,3,250,3457,125);-- revelatory juju / VWNM Akvan
INSERT INTO mob_droplist VALUES(4049,1,3,250,3456,125);-- creepers juju / VWNM Akvan
INSERT INTO mob_droplist VALUES(4050,1,1,500,23819,300);-- jadeite_gloves / VWNM Pil
INSERT INTO mob_droplist VALUES(4050,1,1,500,23815,200);-- sapphire trousers / VWNM Pil
INSERT INTO mob_droplist VALUES(4050,1,2,1000,722,333);-- Divine Log / VWNM Pil
INSERT INTO mob_droplist VALUES(4050,1,2,1000,1300,333);-- Ice Bead / VWNM Pil
INSERT INTO mob_droplist VALUES(4050,1,2,1000,1311,334);-- Oxblood / VWNM Pil
INSERT INTO mob_droplist VALUES(4050,1,3,250,3458,125);-- undying juju / VWNM Pil
INSERT INTO mob_droplist VALUES(4050,1,3,250,3457,125);-- revelatory juju / VWNM Pil
INSERT INTO mob_droplist VALUES(4051,1,1,500,23814,300);-- sapphire gaunlets / VWNM Aello
INSERT INTO mob_droplist VALUES(4051,1,1,500,20593,200);-- hedron_dagger / VWNM Aello
INSERT INTO mob_droplist VALUES(4051,1,2,1000,1816,333);-- Wyrm Horn / VWNM Aello
INSERT INTO mob_droplist VALUES(4051,1,2,1000,646,333);-- Adaman Ore / VWNM Aello
INSERT INTO mob_droplist VALUES(4051,1,2,1000,2169,334);-- Cerberus Hide / VWNM Aello
INSERT INTO mob_droplist VALUES(4051,1,3,250,1552,125);-- Sky Orb / VWNM Aello
INSERT INTO mob_droplist VALUES(4051,1,3,250,3458,125);-- undying juju / VWNM Aello
INSERT INTO mob_droplist VALUES(4052,1,1,500,20514,300);-- Aphelion knuckles / VWNM Uptala
INSERT INTO mob_droplist VALUES(4052,1,1,500,21530,200);-- Tokkosho / VWNM Uptala
INSERT INTO mob_droplist VALUES(4052,1,2,1000,1306,333);-- Dark Bead / VWNM Uptala
INSERT INTO mob_droplist VALUES(4052,1,2,1000,1302,333);-- Earth Bead / VWNM Uptala
INSERT INTO mob_droplist VALUES(4052,1,2,1000,831,334);-- Shining Cloth / VWNM Uptala
INSERT INTO mob_droplist VALUES(4052,1,3,250,1180,125);-- Atropos Orb / VWNM Uptala
INSERT INTO mob_droplist VALUES(4052,1,3,250,1552,125);-- Sky Orb / VWNM Uptala
INSERT INTO mob_droplist VALUES(4053,1,1,500,22165,300);-- ethereal_gun / VWNM Qilin
INSERT INTO mob_droplist VALUES(4053,1,1,500,21623,200);-- Twinned Blade / VWNM Qilin
INSERT INTO mob_droplist VALUES(4053,1,2,1000,836,333);-- Damascene Cloth / VWNM Qilin
INSERT INTO mob_droplist VALUES(4053,1,2,1000,1313,333);-- Sirens Hair / VWNM Qilin
INSERT INTO mob_droplist VALUES(4053,1,2,1000,1713,334);-- Cashmere Thread / VWNM Qilin
INSERT INTO mob_droplist VALUES(4053,1,3,250,1856,125);-- third virtue / VWNM Qilin
INSERT INTO mob_droplist VALUES(4053,1,3,250,1180,125);-- Atropos Orb / VWNM Qilin
INSERT INTO mob_droplist VALUES(4054,1,1,1000,883,333);-- Behemoth Horn / VWNM Celaeno
INSERT INTO mob_droplist VALUES(4054,1,1,1000,1303,333);-- Lightning Bead / VWNM Celaeno
INSERT INTO mob_droplist VALUES(4054,1,1,1000,1712,334);-- Cashmere Wool / VWNM Celaeno
INSERT INTO mob_droplist VALUES(4054,1,2,250,15737,125);-- Sarutobi Kyahan / VWNM Celaeno
INSERT INTO mob_droplist VALUES(4054,1,2,250,15327,125);-- Fuma Sune-Ate / VWNM Celaeno
INSERT INTO mob_droplist VALUES(4054,1,3,500,1131,250);-- Star Orb / VWNM Celaeno
INSERT INTO mob_droplist VALUES(4054,1,3,500,1848,250);-- fourth virtue / VWNM Celaeno
INSERT INTO mob_droplist VALUES(4055,1,1,1000,722,333);-- Divine Log / VWNM Hahava
INSERT INTO mob_droplist VALUES(4055,1,1,1000,646,333);-- Adaman Ore / VWNM Hahava
INSERT INTO mob_droplist VALUES(4055,1,1,1000,655,334);-- Adaman Ingot / VWNM Hahava
INSERT INTO mob_droplist VALUES(4055,1,2,250,17952,125);-- Sirius Axe / VWNM Hahava
INSERT INTO mob_droplist VALUES(4055,1,2,250,15175,125);-- Revilers Helm / VWNM Hahava
INSERT INTO mob_droplist VALUES(4055,1,3,500,1175,250);-- Clotho Orb / VWNM Hahava
INSERT INTO mob_droplist VALUES(4055,1,3,500,1131,250);-- Star Orb / VWNM Hahava
INSERT INTO mob_droplist VALUES(4056,1,1,1000,831,333);-- Shining Cloth / VWNM Voidwrought
INSERT INTO mob_droplist VALUES(4056,1,1,1000,2371,333);-- Khimaira Horn / VWNM Voidwrought
INSERT INTO mob_droplist VALUES(4056,1,1,1000,2169,334);-- Cerberus Hide / VWNM Voidwrought
INSERT INTO mob_droplist VALUES(4056,1,2,250,14869,125);-- Noritsune kote / VWNM Voidwrought
INSERT INTO mob_droplist VALUES(4056,1,2,250,15457,125);-- Swift Belt / VWNM Voidwrought
INSERT INTO mob_droplist VALUES(4056,1,3,500,1848,250);-- fourth virtue / VWNM Voidwrought
INSERT INTO mob_droplist VALUES(4056,1,3,500,1175,250);-- Clotho Orb / VWNM Voidwrought
INSERT INTO mob_droplist VALUES(4057,1,1,1000,1299,333);-- Fire Bead / VWNM Lancing Lamorak
INSERT INTO mob_droplist VALUES(4057,1,1,1000,1304,333);-- Water Bead / VWNM Lancing Lamorak
INSERT INTO mob_droplist VALUES(4057,1,1,1000,860,334);-- Behemoth Hide / VWNM Lancing Lamorak
INSERT INTO mob_droplist VALUES(4057,1,2,250,13914,125);-- Aegishjalmr / VWNM Lancing Lamorak
INSERT INTO mob_droplist VALUES(4057,1,2,250,14075,125);-- Andvaranauts / VWNM Lancing Lamorak
INSERT INTO mob_droplist VALUES(4057,1,3,500,1131,250);-- Star Orb / VWNM Lancing Lamorak
INSERT INTO mob_droplist VALUES(4057,1,3,500,1848,250);-- fourth virtue / VWNM Lancing Lamorak
INSERT INTO mob_droplist VALUES(4058,1,1,1000,837,333);-- Malboro Fiber / VWNM Bhishani
INSERT INTO mob_droplist VALUES(4058,1,1,1000,1302,333);-- Earth Bead / VWNM Bhishani
INSERT INTO mob_droplist VALUES(4058,1,1,1000,2168,334);-- Cerberus Claw / VWNM Bhishani
INSERT INTO mob_droplist VALUES(4058,1,2,250,16942,125);-- Balmung / VWNM Bhishani
INSERT INTO mob_droplist VALUES(4058,1,2,250,14986,125);-- Ochimusha Kote / VWNM Bhishani
INSERT INTO mob_droplist VALUES(4058,1,3,500,1175,250);-- Clotho Orb / VWNM Bhishani
INSERT INTO mob_droplist VALUES(4058,1,3,500,1131,250);-- Star Orb / VWNM Bhishani
INSERT INTO mob_droplist VALUES(4059,1,1,1000,1301,333);-- Wind Bead / VWNM RW NW Prt M Hrw
INSERT INTO mob_droplist VALUES(4059,1,1,1000,1306,333);-- Dark Bead / VWNM RW NW Prt M Hrw
INSERT INTO mob_droplist VALUES(4059,1,1,1000,2373,334);-- Khimaira Tail / VWNM RW NW Prt M Hrw
INSERT INTO mob_droplist VALUES(4059,1,2,250,15736,125);-- Trotter Boots / VWNM RW NW Prt M Hrw
INSERT INTO mob_droplist VALUES(4059,1,2,250,15515,125);-- Peacock Amulet / VWNM RW NW Prt M Hrw
INSERT INTO mob_droplist VALUES(4059,1,3,500,1848,250);-- fourth virtue / VWNM RW NW Prt M Hrw
INSERT INTO mob_droplist VALUES(4059,1,3,500,1175,250);-- Clotho Orb / VWNM RW NW Prt M Hrw
INSERT INTO mob_droplist VALUES(4060,1,1,1000,1311,500);-- Oxblood / VWNM Stachysaurus
INSERT INTO mob_droplist VALUES(4060,1,1,1000,1110,500);-- Beetle Blood / VWNM Stachysaurus
INSERT INTO mob_droplist VALUES(4060,1,2,300,28419,100);-- hachirin-no-obi / VWNM Stachysaurus
INSERT INTO mob_droplist VALUES(4060,1,2,300,25679,100);-- white rarab cap +1 / VWNM Stachysaurus
INSERT INTO mob_droplist VALUES(4060,1,2,300,15899,100);-- Velocious Belt / VWNM Stachysaurus
INSERT INTO mob_droplist VALUES(4060,1,3,1000,3459,500);-- heralds juju / VWNM Stachysaurus
INSERT INTO mob_droplist VALUES(4060,1,3,1000,3344,500);-- Red Pondweed / VWNM Stachysaurus
INSERT INTO mob_droplist VALUES(4060,0,0,250,1525,1000);-- Adamantoise Egg / VWNM Stachysaurus
INSERT INTO mob_droplist VALUES(4061,1,1,1000,1303,500);-- Lightning Bead / VWNM Gwynn Ap Nudd
INSERT INTO mob_droplist VALUES(4061,1,1,1000,1712,500);-- Cashmere Wool / VWNM Gwynn Ap Nudd
INSERT INTO mob_droplist VALUES(4061,1,2,300,14646,100);-- Shadow Ring / VWNM Gwynn Ap Nudd
INSERT INTO mob_droplist VALUES(4061,1,2,300,13658,100);-- Shadow Mantle / VWNM Gwynn Ap Nudd
INSERT INTO mob_droplist VALUES(4061,1,2,300,11628,100);-- Strigoi Ring / VWNM Gwynn Ap Nudd
INSERT INTO mob_droplist VALUES(4061,1,3,1000,3340,500);-- Sweet Tea / VWNM Gwynn Ap Nudd
INSERT INTO mob_droplist VALUES(4061,1,3,1000,1847,500);-- fifth virtue / VWNM Gwynn Ap Nudd
INSERT INTO mob_droplist VALUES(4061,0,0,250,1527,1000);-- Behemoth Tongue / VWNM Gwynn Ap Nudd
INSERT INTO mob_droplist VALUES(4062,1,1,1000,867,500);-- Dragon Scales / VWNM Smierc
INSERT INTO mob_droplist VALUES(4062,1,1,1000,2372,500);-- Khimaira Mane / VWNM Smierc
INSERT INTO mob_droplist VALUES(4062,1,2,300,11629,100);-- Zilant Ring / VWNM Smierc
INSERT INTO mob_droplist VALUES(4062,1,2,300,28420,100);-- Fotia Belt / VWNM Smierc
INSERT INTO mob_droplist VALUES(4062,1,2,300,27510,100);-- Fotia Gorget / VWNM Smierc
INSERT INTO mob_droplist VALUES(4062,1,3,1000,1177,500);-- Comet Orb / VWNM Smierc
INSERT INTO mob_droplist VALUES(4062,1,3,1000,1178,500);-- Lachesis Orb / VWNM Smierc
INSERT INTO mob_droplist VALUES(4062,0,0,250,1526,1000);-- Wyrm Beard / VWNM Smierc
INSERT INTO mob_droplist VALUES(4063,1,1,1000,5565,333);-- Cerberus Meat / VWNM Gaunab
INSERT INTO mob_droplist VALUES(4063,1,1,1000,1816,333);-- Wyrm Horn / VWNM Gaunab
INSERT INTO mob_droplist VALUES(4063,1,1,1000,1305,334);-- Light Bead / VWNM Gaunab
INSERT INTO mob_droplist VALUES(4063,1,2,200,27456,100);-- Criers gaiters / VWNM Gaunab
INSERT INTO mob_droplist VALUES(4063,1,2,200,19163,100);-- Nightfall / VWNM Gaunab
INSERT INTO mob_droplist VALUES(4063,1,3,1000,1553,500);-- Themis Orb / VWNM Gaunab
INSERT INTO mob_droplist VALUES(4063,1,3,1000,3342,500);-- Savory Shank / VWNM Gaunab
INSERT INTO mob_droplist VALUES(4064,1,1,1000,658,333);-- Damascene Ingot / VWNM Ocythoe
INSERT INTO mob_droplist VALUES(4064,1,1,1000,903,333);-- Dragon Talon / VWNM Ocythoe
INSERT INTO mob_droplist VALUES(4064,1,1,1000,836,334);-- Damascene Cloth / VWNM Ocythoe
INSERT INTO mob_droplist VALUES(4064,1,2,200,11286,100);-- Avalon Breastplate / VWNM Ocythoe
INSERT INTO mob_droplist VALUES(4064,1,2,200,19212,100);-- black tathlum / VWNM Ocythoe
INSERT INTO mob_droplist VALUES(4064,1,3,1000,3342,500);-- Savory Shank / VWNM Ocythoe
INSERT INTO mob_droplist VALUES(4064,1,3,1000,1849,500);-- sixth virtue / VWNM Ocythoe
INSERT INTO mob_droplist VALUES(4065,1,1,1000,1133,333);-- Dragon Blood / VWNM Kalasutrax
INSERT INTO mob_droplist VALUES(4065,1,1,1000,6416,333);-- Behemoth Meat / VWNM Kalasutrax
INSERT INTO mob_droplist VALUES(4065,1,1,1000,647,334);-- Molybdenum Ore / VWNM Kalasutrax
INSERT INTO mob_droplist VALUES(4065,1,2,200,19213,100);-- white tathlum / VWNM Kalasutrax
INSERT INTO mob_droplist VALUES(4065,1,2,200,11630,100);-- Corneus Ring / VWNM Kalasutrax
INSERT INTO mob_droplist VALUES(4065,1,3,1000,1849,500);-- sixth virtue / VWNM Kalasutrax
INSERT INTO mob_droplist VALUES(4065,1,3,1000,3358,500);-- Shrouded Bijou / VWNM Kalasutrax
INSERT INTO mob_droplist VALUES(4066,1,1,1000,1133,333);-- Dragon Blood / VWNM Ig-Alima
INSERT INTO mob_droplist VALUES(4066,1,1,1000,908,333);-- Adamantoise Shell / VWNM Ig-Alima
INSERT INTO mob_droplist VALUES(4066,1,1,1000,1300,334);-- Ice Bead / VWNM Ig-Alima
INSERT INTO mob_droplist VALUES(4066,1,2,200,11631,100);-- Blobnag Ring / VWNM Ig-Alima
INSERT INTO mob_droplist VALUES(4066,1,2,200,11632,100);-- Karka Ring / VWNM Ig-Alima
INSERT INTO mob_droplist VALUES(4066,1,3,1000,3358,500);-- Shrouded Bijou / VWNM Ig-Alima
INSERT INTO mob_droplist VALUES(4066,1,3,1000,1130,500);-- Moon Orb / VWNM Ig-Alima
INSERT INTO mob_droplist VALUES(4067,1,1,1000,1713,333);-- Cashmere Thread / VWNM Botulus Rex
INSERT INTO mob_droplist VALUES(4067,1,1,1000,1313,333);-- Sirens Hair / VWNM Botulus Rex
INSERT INTO mob_droplist VALUES(4067,1,1,1000,4272,334);-- Dragon Meat / VWNM Botulus Rex
INSERT INTO mob_droplist VALUES(4067,1,2,200,11633,100);-- Galdr Ring / VWNM Botulus Rex
INSERT INTO mob_droplist VALUES(4067,1,2,200,11634,100);-- Veela Ring / VWNM Botulus Rex
INSERT INTO mob_droplist VALUES(4067,1,3,1000,1130,500);-- Moon Orb / VWNM Botulus Rex
INSERT INTO mob_droplist VALUES(4067,1,3,1000,1553,500);-- Themis Orb / VWNM Botulus Rex
                           
UPDATE mob_groups SET dropid = 4056 WHERE name = 'Voidwrought'AND groupid = 69;
UPDATE mob_groups SET dropid = 4063 WHERE name = 'Gaunab'AND groupid = 151;
UPDATE mob_groups SET dropid = 4040 WHERE name = 'Bismarck'AND groupid = 50;
UPDATE mob_groups SET dropid = 4017 WHERE name = 'Sabotender_Campeador'AND groupid = 39;
UPDATE mob_groups SET dropid = 4033 WHERE name = 'Mellonia'AND groupid = 40;
UPDATE mob_groups SET dropid = 4055 WHERE name = 'Hahava'AND groupid = 44;
UPDATE mob_groups SET dropid = 4030 WHERE name = 'Ogbunabali'AND groupid = 43;
UPDATE mob_groups SET dropid = 4028 WHERE name = 'Lorbulcrud'AND groupid = 43;
UPDATE mob_groups SET dropid = 4059 WHERE name = 'Rw_Nw_Prt_M_Hrw'AND groupid = 29;
UPDATE mob_groups SET dropid = 4019 WHERE name = 'Malleator_Maurok'AND groupid = 42;
UPDATE mob_groups SET dropid = 4048 WHERE name = 'Kaggen'AND groupid = 51;
UPDATE mob_groups SET dropid = 4008 WHERE name = 'Goji'AND groupid = 58;
UPDATE mob_groups SET dropid = 4005 WHERE name = 'Cottus'AND groupid = 151;
UPDATE mob_groups SET dropid = 4062 WHERE name = 'Smierc'AND groupid = 42;
UPDATE mob_groups SET dropid = 4058 WHERE name = 'Bhishani'AND groupid = 34;
UPDATE mob_groups SET dropid = 4045 WHERE name = 'Kholomodumo'AND groupid = 156;
UPDATE mob_groups SET dropid = 4014 WHERE name = 'Holy_Moly'AND groupid = 53;
UPDATE mob_groups SET dropid = 4020 WHERE name = 'Fjalar'AND groupid = 55;
UPDATE mob_groups SET dropid = 4003 WHERE name = 'Ushumgal'AND groupid = 158;
UPDATE mob_groups SET dropid = 4021 WHERE name = 'Abununnu'AND groupid = 75;
UPDATE mob_groups SET dropid = 4051 WHERE name = 'Aello'AND groupid = 20;
UPDATE mob_groups SET dropid = 4011 WHERE name = 'Agathos'AND groupid = 167;
UPDATE mob_groups SET dropid = 4047 WHERE name = 'Akupara'AND groupid = 159;
UPDATE mob_groups SET dropid = 4049 WHERE name = 'Akvan'AND groupid = 30;
UPDATE mob_groups SET dropid = 4044 WHERE name = 'Belphoebe'AND groupid = 79;
UPDATE mob_groups SET dropid = 4067 WHERE name = 'Botulus_Rex'AND groupid = 53;
UPDATE mob_groups SET dropid = 4025 WHERE name = 'Brekekekex'AND groupid = 66;
UPDATE mob_groups SET dropid = 4037 WHERE name = 'Cath_Palug'AND groupid = 57;
UPDATE mob_groups SET dropid = 4054 WHERE name = 'Celaeno'AND groupid = 34;
UPDATE mob_groups SET dropid = 4012 WHERE name = 'Cherufe'AND groupid = 62;
UPDATE mob_groups SET dropid = 4024 WHERE name = 'Dimgruzub'AND groupid = 92;
UPDATE mob_groups SET dropid = 4035 WHERE name = 'Gasha-1stform'AND groupid = 57;
UPDATE mob_groups SET dropid = 4036 WHERE name = 'Giltine'AND groupid = 128;
UPDATE mob_groups SET dropid = 4009 WHERE name = 'Gugalanna'AND groupid = 154;
UPDATE mob_groups SET dropid = 4061 WHERE name = 'Gwynn_ap_Nudd'AND groupid = 44;
UPDATE mob_groups SET dropid = 4066 WHERE name = 'Ig-Alima'AND groupid = 71;
UPDATE mob_groups SET dropid = 4015 WHERE name = 'Ildebrann'AND groupid = 31;
UPDATE mob_groups SET dropid = 4023 WHERE name = 'Isarukitsck'AND groupid = 54;
UPDATE mob_groups SET dropid = 4065 WHERE name = 'Kalasutrax'AND groupid = 140;
UPDATE mob_groups SET dropid = 4029 WHERE name = 'Krabimanjaro'AND groupid = 52;
UPDATE mob_groups SET dropid = 4032 WHERE name = 'Laidly_Laurence'AND groupid = 127;
UPDATE mob_groups SET dropid = 4057 WHERE name = 'Lancing_Lamorak'AND groupid = 37;
UPDATE mob_groups SET dropid = 4046 WHERE name = 'Lord_Asag'AND groupid = 70;
UPDATE mob_groups SET dropid = 4043 WHERE name = 'Melancholic_Moira'AND groupid = 156;
UPDATE mob_groups SET dropid = 4039 WHERE name = 'Mimic_King'AND groupid = 20;
UPDATE mob_groups SET dropid = 4038 WHERE name = 'Modron'AND groupid = 37;
UPDATE mob_groups SET dropid = 4041 WHERE name = 'Morta'AND groupid = 35;
UPDATE mob_groups SET dropid = 4042 WHERE name = 'Murk-veined_Baneberry'AND groupid = 72;
UPDATE mob_groups SET dropid = 4016 WHERE name = 'Neith'AND groupid = 48;
UPDATE mob_groups SET dropid = 4034 WHERE name = 'Nympha_Eunomia'AND groupid = 120;
UPDATE mob_groups SET dropid = 4064 WHERE name = 'Ocythoe'AND groupid = 156;
UPDATE mob_groups SET dropid = 4007 WHERE name = 'Pancimanci'AND groupid = 164;
UPDATE mob_groups SET dropid = 4050 WHERE name = 'Pil-VNM'AND groupid = 17;
UPDATE mob_groups SET dropid = 4053 WHERE name = 'Qilin'AND groupid = 33;
UPDATE mob_groups SET dropid = 4031 WHERE name = 'Roly-Poly'AND groupid = 44;
UPDATE mob_groups SET dropid = 4002 WHERE name = 'Sallow_Seymour'AND groupid = 49;
UPDATE mob_groups SET dropid = 4004 WHERE name = 'Sarimanok'AND groupid = 30;
UPDATE mob_groups SET dropid = 4060 WHERE name = 'Stachysaurus'AND groupid = 55;
UPDATE mob_groups SET dropid = 4018 WHERE name = 'Tangaroa'AND groupid = 40;
UPDATE mob_groups SET dropid = 4013 WHERE name = 'Taweret'AND groupid = 155;
UPDATE mob_groups SET dropid = 4022 WHERE name = 'Tsui-Goab'AND groupid = 60;
UPDATE mob_groups SET dropid = 4052 WHERE name = 'Uptala'AND groupid = 17;
UPDATE mob_groups SET dropid = 4027 WHERE name = 'Vanasarvik'AND groupid = 55;
UPDATE mob_groups SET dropid = 4006 WHERE name = 'Virvatuli'AND groupid = 42;
UPDATE mob_groups SET dropid = 4026 WHERE name = 'Yalungur'AND groupid = 69;
UPDATE mob_groups SET dropid = 4010 WHERE name = 'Yatagarasu'AND groupid = 57;
UPDATE mob_pools SET roamflag = 0 WHERE name = 'Agathos'AND poolid = 4701;
INSERT INTO `mob_skills` VALUES (2511,1775,'corpse_breath',4,20.0,7.0,2000,1500,4,0,0,0,0,0,0);
INSERT INTO `mob_skills` VALUES (2825,1985,'louring_skies',1,20.0,7.0,2000,1500,4,0,0,0,0,0,0);
INSERT INTO mob_skill_lists VALUES ('Gwynn_ap_Nudd', 40000, 2511);
INSERT INTO mob_skill_lists VALUES ('Gwynn_ap_Nudd', 40000, 2825);
UPDATE mob_pools SET skill_list_id = 30000 WHERE name = 'Gwynn_ap_Nudd';
UPDATE mob_pools SET skill_list_id = 30000 WHERE name = 'Gwynn_Ap_Nudd';
--						  VWNM  Stage I
UPDATE mob_groups SET HP = 15000, minLevel = 75, maxLevel = 80 WHERE name = 'Sallow_Seymour' AND zoneid = 106;
UPDATE mob_groups SET HP = 15000, minLevel = 75, maxLevel = 80 WHERE name = 'Ushumgal' AND zoneid = 88;
UPDATE mob_groups SET HP = 15000, minLevel = 75, maxLevel = 80 WHERE name = 'Sarimanok' AND zoneid = 101;
UPDATE mob_groups SET HP = 15000, minLevel = 75, maxLevel = 80 WHERE name = 'Cottus' AND zoneid = 81;
UPDATE mob_groups SET HP = 15000, minLevel = 75, maxLevel = 80 WHERE name = 'Virvatuli' AND zoneid = 115;
UPDATE mob_groups SET HP = 15000, minLevel = 75, maxLevel = 80 WHERE name = 'Pancimanci' AND zoneid = 95;
UPDATE mob_groups SET HP = 15000, minLevel = 75, maxLevel = 80 WHERE name = 'Goji' AND zoneid = 120;
UPDATE mob_groups SET HP = 15000, minLevel = 75, maxLevel = 80 WHERE name = 'Gugalanna' AND zoneid = 98;
UPDATE mob_groups SET HP = 15000, minLevel = 75, maxLevel = 80 WHERE name = 'Yatagarasu' AND zoneid = 110;
UPDATE mob_groups SET HP = 15000, minLevel = 75, maxLevel = 80 WHERE name = 'Agathos' AND zoneid = 91;
UPDATE mob_groups SET HP = 15000, minLevel = 75, maxLevel = 80 WHERE name = 'Cherufe' AND zoneid = 105;
UPDATE mob_groups SET HP = 15000, minLevel = 75, maxLevel = 80 WHERE name = 'Taweret' AND zoneid = 84;
UPDATE mob_groups SET HP = 15000, minLevel = 75, maxLevel = 80 WHERE name = 'Holy_Moly' AND zoneid = 123;
--						    Stage II
UPDATE mob_groups SET HP = 20000, minLevel = 80, maxLevel = 85 WHERE name = 'Lorbulcrud' AND zoneid = 196;
UPDATE mob_groups SET HP = 20000, minLevel = 80, maxLevel = 85 WHERE name = 'Krabimanjaro' AND zoneid = 193;
UPDATE mob_groups SET HP = 20000, minLevel = 80, maxLevel = 85 WHERE name = 'Ogbunabali' AND zoneid = 198;
UPDATE mob_groups SET HP = 20000, minLevel = 80, maxLevel = 85 WHERE name = 'Roly-Poly' AND zoneid = 200;
UPDATE mob_groups SET HP = 20000, minLevel = 80, maxLevel = 85 WHERE name = 'Laidly_Laurence' AND zoneid = 164;
UPDATE mob_groups SET HP = 20000, minLevel = 80, maxLevel = 85 WHERE name = 'Mellonia' AND zoneid = 197;
UPDATE mob_groups SET HP = 20000, minLevel = 80, maxLevel = 85 WHERE name = 'Nympha_Eunomia' AND zoneid = 171;
UPDATE mob_groups SET HP = 20000, minLevel = 80, maxLevel = 85 WHERE name = 'Gasha-1stform' AND zoneid = 195;
UPDATE mob_groups SET HP = 20000, minLevel = 80, maxLevel = 85 WHERE name = 'Giltine' AND zoneid = 175;
--						    Stage III
UPDATE mob_groups SET HP = 25000, minLevel = 85, maxLevel = 88 WHERE name = 'Murk-veined_Baneberry' AND zoneid = 109;
UPDATE mob_groups SET HP = 25000, minLevel = 85, maxLevel = 88 WHERE name = 'Melancholic_Moira' AND zoneid = 90;
UPDATE mob_groups SET HP = 25000, minLevel = 85, maxLevel = 88 WHERE name = 'Belphoebe' AND zoneid = 104;
UPDATE mob_groups SET HP = 25000, minLevel = 85, maxLevel = 88 WHERE name = 'Kholomodumo' AND zoneid = 82;
UPDATE mob_groups SET HP = 25000, minLevel = 85, maxLevel = 88 WHERE name = 'Lord_Asag' AND zoneid = 119;
UPDATE mob_groups SET HP = 25000, minLevel = 85, maxLevel = 88 WHERE name = 'Akupara' AND zoneid = 97;
UPDATE mob_groups SET HP = 25000, minLevel = 85, maxLevel = 88 WHERE name = 'Kaggen' AND zoneid = 126;
UPDATE mob_groups SET HP = 25000, minLevel = 85, maxLevel = 88 WHERE name = 'Akvan' AND zoneid = 184;
UPDATE mob_groups SET HP = 25000, minLevel = 85, maxLevel = 88 WHERE name = 'Pil-VNM' AND zoneid = 127;
--							Stage IV
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 90 WHERE name = 'Celaeno' AND zoneid = 191;
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 90 WHERE name = 'Hahava' AND zoneid = 190;
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 90 WHERE name = 'Voidwrought' AND zoneid = 194;
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 90 WHERE name = 'Lancing_Lamorak' AND zoneid = 100;
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 90 WHERE name = 'Bhishani' AND zoneid = 107;
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 90 WHERE name = 'Rw_Nw_Prt_M_Hrw' AND zoneid = 116;
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 90 WHERE name = 'Fjalar' AND zoneid = 7;
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 90 WHERE name = 'Abununnu' AND zoneid = 24;
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 90 WHERE name = 'Tsui-Goab' AND zoneid = 25;
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 90 WHERE name = 'Isarukitsck' AND zoneid = 5;
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 90 WHERE name = 'Ildebrann' AND zoneid = 205;
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 90 WHERE name = 'Neith' AND zoneid = 159;
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 90 WHERE name = 'Sabotender_Campeador' AND zoneid = 125;
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 90 WHERE name = 'Tangaroa' AND zoneid = 174;
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 90 WHERE name = 'Malleator_Maurok' AND zoneid = 208;
--						    Stage V
UPDATE mob_groups SET HP = 35000, minLevel = 90, maxLevel = 95 WHERE name = 'Stachysaurus' AND zoneid = 102;
UPDATE mob_groups SET HP = 35000, minLevel = 90, maxLevel = 95 WHERE name = 'Gwynn_ap_Nudd' AND zoneid = 108;
UPDATE mob_groups SET HP = 35000, minLevel = 90, maxLevel = 95 WHERE name = 'Smierc' AND zoneid = 117;
UPDATE mob_groups SET HP = 35000, minLevel = 90, maxLevel = 95 WHERE name = 'Dimgruzub' AND zoneid = 54;
UPDATE mob_groups SET HP = 35000, minLevel = 90, maxLevel = 95 WHERE name = 'Brekekekex' AND zoneid = 79;
UPDATE mob_groups SET HP = 35000, minLevel = 90, maxLevel = 95 WHERE name = 'Yalungur' AND zoneid = 65;
UPDATE mob_groups SET HP = 35000, minLevel = 90, maxLevel = 95 WHERE name = 'Vanasarvik' AND zoneid = 61;
UPDATE mob_groups SET HP = 35000, minLevel = 90, maxLevel = 95 WHERE name = 'Cath_Palug' AND zoneid = 121;
UPDATE mob_groups SET HP = 35000, minLevel = 90, maxLevel = 95 WHERE name = 'Modron' AND zoneid = 153;
UPDATE mob_groups SET HP = 35000, minLevel = 90, maxLevel = 95 WHERE name = 'Mimic_King' AND zoneid = 122;
--  					    Stage VI
UPDATE mob_groups SET HP = 50000, minLevel = 95, maxLevel = 99 WHERE name = 'Gaunab' AND zoneid = 83;
UPDATE mob_groups SET HP = 50000, minLevel = 95, maxLevel = 99 WHERE name = 'Ocythoe' AND zoneid = 89;
UPDATE mob_groups SET HP = 50000, minLevel = 95, maxLevel = 99 WHERE name = 'Kalasutrax' AND zoneid = 96;
UPDATE mob_groups SET HP = 50000, minLevel = 95, maxLevel = 99 WHERE name = 'Ig-Alima' AND zoneid = 103;
UPDATE mob_groups SET HP = 50000, minLevel = 95, maxLevel = 99 WHERE name = 'Botulus_Rex' AND zoneid = 118;
UPDATE mob_groups SET HP = 50000, minLevel = 95, maxLevel = 99 WHERE name = 'Bismarck' AND zoneid = 4;
UPDATE mob_groups SET HP = 50000, minLevel = 95, maxLevel = 99 WHERE name = 'Morta' AND zoneid = 68;
UPDATE mob_groups SET HP = 50000, minLevel = 95, maxLevel = 99 WHERE name = 'Aello' AND zoneid = 130;
UPDATE mob_groups SET HP = 50000, minLevel = 95, maxLevel = 99 WHERE name = 'Uptala' AND zoneid = 177;
UPDATE mob_groups SET HP = 50000, minLevel = 95, maxLevel = 99 WHERE name = 'Qilin' AND zoneid = 178;