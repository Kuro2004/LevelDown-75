-- (`ID`, `Desynth`, `KeyItem`, `Wood`, `Smith`, `Gold`, `Cloth`, `Leather`, `Bone`, `Alchemy`, `Cook`, `Crystal`, `HQCrystal`, `Ingredient1`, `Ingredient2`, `Ingredient3`, `Ingredient4`, `Ingredient5`, `Ingredient6`, `Ingredient7`, `Ingredient8`, `Result`, `ResultHQ1`, `ResultHQ2`, `ResultHQ3`, `ResultQty`, `ResultHQ1Qty`, `ResultHQ2Qty`, `ResultHQ3Qty`, `ResultName`)
# Added Elemental Ore recipes
INSERT INTO `synth_recipes` VALUES (76000, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 4099, 4241, 1469, 4819, 0, 0, 0, 0, 0, 0, 1258, 1258, 1258, 1258, 1, 1, 1, 1, 'Earth Ore',NULL); -- Woodworking
INSERT INTO `synth_recipes` VALUES (76001, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 4101, 4243, 1469, 4823, 0, 0, 0, 0, 0, 0, 1260, 1260, 1260, 1260, 1, 1, 1, 1, 'Water Ore',NULL); -- Smithing
INSERT INTO `synth_recipes` VALUES (76002, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 4098, 4240, 1469, 4817, 0, 0, 0, 0, 0, 0, 1257, 1257, 1257, 1257, 1, 1, 1, 1, 'Wind Ore',NULL); -- Goldsmithing
INSERT INTO `synth_recipes` VALUES (76003, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 4096, 4238, 1469, 4813, 0, 0, 0, 0, 0, 0, 1255, 1255, 1255, 1255, 1, 1, 1, 1, 'Fire Ore',NULL); -- Clothcraft
INSERT INTO `synth_recipes` VALUES (76004, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 4097, 4239, 1469, 4815, 0, 0, 0, 0, 0, 0, 1256, 1256, 1256, 1256, 1, 1, 1, 1, 'Ice Ore',NULL); -- Leathercraft
INSERT INTO `synth_recipes` VALUES (76005, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 4100, 4242, 1469, 4821, 0, 0, 0, 0, 0, 0, 1259, 1259, 1259, 1259, 1, 1, 1, 1, 'Lightning Ore',NULL); -- Bonecraft
INSERT INTO `synth_recipes` VALUES (76006, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 4102, 4244, 1469, 4633, 0, 0, 0, 0, 0, 0, 1261, 1261, 1261, 1261, 1, 1, 1, 1, 'Light Ore',NULL); -- Alchemy
INSERT INTO `synth_recipes` VALUES (76007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 4103, 4245, 1469, 4840, 0, 0, 0, 0, 0, 0, 1262, 1262, 1262, 1262, 1, 1, 1, 1, 'Dark Ore',NULL); -- Cooking

-- new items add 6_6_2024
INSERT INTO `synth_recipes` VALUES (80039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 4096, 4238,  630,  638,  936, 4378, 4509,    0,    0,    0,  4430,  4522,  4522,  4522, 1, 1, 1, 1, 'pumpkin_soup, jack-o-soup',NULL);
INSERT INTO `synth_recipes` VALUES (80040, 0, 0, 100, 100, 100, 0, 0, 0, 0, 0, 4099, 4241, 17546, 17548, 17550, 17552, 17554, 17556, 17558, 17560, 18633, 18633, 18633, 18633, 1, 1, 1, 1, 'Chatoyant staff',NULL);
INSERT INTO `synth_recipes` VALUES (80041, 0, 0, 100, 100, 100, 0, 0, 0, 0, 0, 4099, 4241, 17545, 17547, 17549, 17551, 17553, 17555, 17557, 17559, 18632, 18632, 18632, 18632, 1, 1, 1, 1, 'iridal_staff',NULL);

-- new items 11_3_2024 +1 Login Campaign items
INSERT INTO `synth_recipes` VALUES (80042, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 4102, 4244, 20713, 20713, 0, 0, 0, 0, 0, 0,  20714, 20714, 20714, 20714, 1, 1, 1, 1, 'Excalipoor II',NULL);
INSERT INTO `synth_recipes` VALUES (80043, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 4097, 4239, 20666, 20666, 0, 0, 0, 0, 0, 0, 20667, 20667, 20667, 20667, 1, 1, 1, 1, 'Blizzard Brand II',NULL);
INSERT INTO `synth_recipes` VALUES (80044, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 4096, 4238, 20668, 20668, 0, 0, 0, 0, 0, 0, 20669, 20669, 20669, 20669, 1, 1, 1, 1, 'Firetongue II',NULL);
INSERT INTO `synth_recipes` VALUES (80045, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 4098, 4240, 10811, 10811, 0, 0, 0, 0, 0, 0, 10812, 10812, 10812, 10812, 1, 1, 1, 1, 'Chocobo Shield +1',NULL);
INSERT INTO `synth_recipes` VALUES (80046, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 4098, 4240, 10809, 10809, 0, 0, 0, 0, 0, 0, 10810, 10810, 10810, 10810, 1, 1, 1, 1, 'Moogle Guard +1',NULL);
INSERT INTO `synth_recipes` VALUES (80047, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 4103, 4245, 21107, 21107, 0, 0, 0, 0, 0, 0, 21108, 21108, 21108, 21108, 1, 1, 1, 1, 'Kyuka Uchiwa +1',NULL);
INSERT INTO `synth_recipes` VALUES (80048, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 4103, 4245, 27631, 27631, 0, 0, 0, 0, 0, 0, 27632, 27632, 27632, 27632, 1, 1, 1, 1, 'Cait Sith Guard +1',NULL);
INSERT INTO `synth_recipes` VALUES (80049, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 4101, 4243, 23803, 23803, 0, 0, 0, 0, 0, 0, 23804, 23804, 23804, 23804, 1, 1, 1, 1, 'Poroggo Cassock +1',NULL);
INSERT INTO `synth_recipes` VALUES (80050, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 4101, 4243, 26956, 26956, 0, 0, 0, 0, 0, 0, 26957, 26957, 26957, 26957, 1, 1, 1, 1, 'Poroggo Coat +1',NULL);
INSERT INTO `synth_recipes` VALUES (80051, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 4102, 4244, 25758, 25758, 0, 0, 0, 0, 0, 0, 25759, 25759, 25759, 25759, 1, 1, 1, 1, 'Rhapsody Shirt +1',NULL);
INSERT INTO `synth_recipes` VALUES (80052, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 4099, 4241, 27765, 27765, 0, 0, 0, 0, 0, 0, 27760, 27760, 27760, 27760, 1, 1, 1, 1, 'Chocobo Masque +1',NULL);
INSERT INTO `synth_recipes` VALUES (80053, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 4099, 4241, 27911, 27911, 0, 0, 0, 0, 0, 0, 27906, 27906, 27906, 27906, 1, 1, 1, 1, 'Chocobo Suit +1',NULL);
INSERT INTO `synth_recipes` VALUES (80054, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 4103, 4245, 23753, 23753, 0, 0, 0, 0, 0, 0, 23754, 23754, 23754, 23754, 1, 1, 1, 1, 'Sandogasa +1',NULL);
INSERT INTO `synth_recipes` VALUES (80055, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 4102, 4244, 25632, 25632, 0, 0, 0, 0, 0, 0, 25633, 25633, 25633, 25633, 1, 1, 1, 1, 'Carby Cap +1',NULL);
INSERT INTO `synth_recipes` VALUES (80056, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 4096, 4238, 27325, 27325, 0, 0, 0, 0, 0, 0, 27326, 27326, 27326, 27326, 1, 1, 1, 1, 'Track Pants +1',NULL);
