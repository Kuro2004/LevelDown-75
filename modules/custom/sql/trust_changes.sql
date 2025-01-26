-- Change Elviras default jobs
UPDATE mob_pools SET mJob = 17 WHERE poolid = "1198" AND `name` = 'Elivira';
UPDATE mob_pools SET mJob = 17 WHERE poolid = "5941" AND `name` = 'Elivira';

-- Mob Skill List Elivira
DELETE FROM mob_skill_lists WHERE skill_list_id = "1056";
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Elivira',1056,1201);  -- Coronach (Elivira)
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Elivira',1056,212);   -- Slug Shot (Elivira)
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Elivira',1056,214);   -- Heavy Shot (Elivira)
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Elivira',1056,209);   -- Split Shot (Elivira)
update mob_skills set primary_sc = 14 where mob_skill_id = 1201; -- made where Coronach can WS
update mob_skills set secondary_sc = 12 where mob_skill_id = 1201; -- made where Coronach can WS

-- Mob Skill List Halver
DELETE FROM mob_skill_lists WHERE skill_list_id = "1087";
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Halver',1087,114);  -- Raiden Thrust
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Halver',1087,116);  -- Penta Thrust
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Halver',1087,120);  -- Impulse Drive

-- Maximilian job change
UPDATE mob_pools SET sJob = "13" WHERE poolid = "5975" AND `name` = 'maximilian';

-- Mob Skill List for Maximilian
DELETE FROM mob_skill_lists WHERE skill_list_id = "1090";
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Maximilian',1090,32);  -- Fast Blade
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Maximilian',1090,40);  -- Vorpal Blade
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Maximilian',1090,41);  -- Swift Blade

-- Mob Spell List for Maximilian
DELETE FROM `mob_spell_lists` WHERE spell_list_id = "388";
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Maximilian',388,338,12,255);       -- Utsusemi: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Maximilian',388,339,37,255);       -- Utsusemi: Ni

-- Mob Skills Mayakov
DELETE FROM mob_skill_lists WHERE skill_list_id = "1081";
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Mayakov',1081,41); -- Swift Blade
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Mayakov',1081,40);  -- Vorpal Blade
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Mayakov',1081,42);  -- Savage Blade

-- Mob Skills Leonoyne
DELETE FROM mob_skill_lists WHERE skill_list_id = "1089";
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Leonoyne',1089,60); -- Resolution
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Leonoyne',1089,56); -- Ground Strike
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Leonoyne',1089,55); -- Spinning Slash
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Leonoyne',1089,58); -- Herculean Strike

-- Mob Skills Gilgamesh
DELETE FROM mob_skill_lists WHERE skill_list_id = "1053";
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Gilgamesh',1053,3434); -- Tachi Kamai
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Gilgamesh',1053,3435); -- Iainuki
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Gilgamesh',1053,3436); -- Tachi Gotem
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Gilgamesh',1053,3437); -- Tachi Kasha

-- Mob Spells Leonoyne
DELETE FROM `mob_spell_lists` WHERE spell_list_id = "387";
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,149,20,255); -- Blizzard
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,150,46,255); -- Blizzard II
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,151,66,255); -- Blizzard III
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,164,21,255); -- Thunder
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,165,46,255); -- Thunder II
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,166,66,255); -- Thunder III

-- Mob Skills Matsui-P
DELETE FROM mob_skill_lists WHERE skill_list_id = "1148";
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,128); -- Blade: Rin
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,129); -- Blade: Retsu
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,133); -- Blade: Ei
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,134); -- Blade: Jin
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,135); -- Blade: Ten
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,136); -- Blade: Ku
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,141); -- Blade: Shun
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,138); -- Blade: Kamu

-- Mob Spell List Matsui-P
DELETE FROM `mob_spell_lists` WHERE spell_list_id = "435";
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,144,26,255); -- Fire
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,149,34,255); -- Blizzard
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,154,18,255); -- Aero
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,159,1,255);  -- Stone
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,164,42,255); -- Thunder
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,169,10,255); -- Water
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,245,24,255); -- Drain
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,247,50,255); -- Aspir
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,252,90,255); -- Stun
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,320,15,255); -- Katon: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,321,40,255); -- Katon: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,322,75,255); -- Katon: San
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,323,15,255); -- Hyoton: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,324,40,255); -- Hyoton: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,325,75,255); -- Hyoton: San
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,326,15,255); -- Huton: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,327,40,255); -- Huton: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,328,75,255); -- Huton: San
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,329,15,255); -- Doton: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,330,40,255); -- Doton: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,331,75,255); -- Doton: San
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,332,15,255); -- Raiton: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,333,40,255); -- Raiton: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,334,75,255); -- Raiton: San
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,335,15,255); -- Suiton: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,336,40,255); -- Suiton: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,337,75,255); -- Suiton: San
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,338,12,255); -- Utsusemi: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,339,37,255); -- Utsusemi: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,340,99,255); -- Utsusemi: San

-- Override Lhu Mhakaracca and replace with Matsui-p
UPDATE mob_pools SET sJob = "4" WHERE poolid = "5943" AND name = 'lhu_mhakaracca';
UPDATE mob_pools SET mJob = "13" WHERE poolid = "5943" AND name = 'lhu_mhakaracca';
UPDATE mob_pools SET skill_list_id = "1148" WHERE poolid = "5943" AND name = 'lhu_mhakaracca';
UPDATE mob_pools SET spellList = "455" WHERE poolid = "5943" AND name = 'lhu_mhakaracca';

-- Mob Skills Lady Lilith
DELETE FROM mob_skill_lists WHERE skill_list_id = "5019";
DELETE FROM `mob_spell_lists` WHERE spell_list_id = "422";
DELETE FROM `mob_skills` WHERE mob_skill_id = "4205";
DELETE FROM `mob_skills` WHERE mob_skill_id = "4206";
DELETE FROM `mob_skills` WHERE mob_skill_id = "4207";

-- Update August skills
UPDATE `mob_skills` SET `mob_anim_id` = 2461 WHERE `mob_skill_id` = 3652; -- (Timer: 3min) daybreak
UPDATE `mob_skills` SET `mob_anim_id` = 2462 WHERE `mob_skill_id` = 3653; -- tartaric_sigil
UPDATE `mob_skills` SET `mob_skill_name` = "null_field", `mob_anim_id` = 2463 WHERE `mob_skill_id` = 3654; -- null_field
UPDATE `mob_skills` SET `mob_anim_id` = 2464 WHERE `mob_skill_id` = 3655; -- alabaster_burst
UPDATE `mob_skills` SET `mob_anim_id` = 2465 WHERE `mob_skill_id` = 3656; -- (daybreak) noble_frenzy
UPDATE `mob_skills` SET `mob_anim_id` = 2466 WHERE `mob_skill_id` = 3657; -- (daybreak) fulminous_fury
UPDATE `mob_skills` SET `mob_skill_name` = "no_quarter", `mob_anim_id` = 2467 WHERE `mob_skill_id` = 3658; -- (daybreak) no_quarter
DELETE FROM `mob_skill_lists` WHERE skill_list_id = "1099";
INSERT INTO `mob_skill_lists` VALUES ('August_Skills',1099,3653);
INSERT INTO `mob_skill_lists` VALUES ('August_Skills',1099,3654);
INSERT INTO `mob_skill_lists` VALUES ('August_Skills',1099,3655);

-- Mob Skills Mumor II
INSERT INTO `mob_skills` VALUES (2904, 450, 'final_eternal_heart', 0, 0.0, 7.0, 2000, 0, 4, 0, 0, 0, 0, 0, 0);
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Mumor_II', 1130, 2904);

-- Mob Spells Ingrid
DELETE FROM `mob_spell_lists` WHERE spell_list_id = "333";
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 2, 11, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 3, 21, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 4, 41, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 5, 61, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 6, 80, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 7, 16, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 8, 31, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 9, 51, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 10, 71, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 11, 91, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 14, 6, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 15, 9, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 16, 14, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 17, 19, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 18, 39, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 19, 34, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 20, 29, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 43, 7, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 44, 27, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 45, 47, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 46, 63, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 47, 76, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 48, 17, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 49, 37, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 50, 57, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 51, 68, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 52, 76, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 54, 28, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 57, 40, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 125, 7, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 126, 27, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 127, 47, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 128, 63, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 129, 75, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 130, 17, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 131, 37, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 132, 57, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 133, 68, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 134, 75, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 143, 32, 255);

--
-- General / Morimar --- still working on trust
--

INSERT INTO `mob_skill_lists` VALUES ('TRUST_Morimar',4000,3160); -- vehement_resolution anim 2335
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Morimar',4000,3161); -- camaraderie_of_the_crevasse anim 2336
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Morimar',4000,3162); -- into_the_light anim 2337
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Morimar',4000,3163); -- arduous_decision anim 2338
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Morimar',4000,3164); -- 12_blades_of_remorse anim 2339


UPDATE mob_pools SET skill_list_id = 4000 WHERE poolid = 5990; -- 5990

UPDATE mob_skills SET mob_anim_id = 2335 WHERE mob_skill_id = 3160;
UPDATE mob_skills SET mob_anim_id = 2336 WHERE mob_skill_id = 3161;
UPDATE mob_skills SET mob_anim_id = 2337 WHERE mob_skill_id = 3162;
UPDATE mob_skills SET mob_anim_id = 2338 WHERE mob_skill_id = 3163;
UPDATE mob_skills SET mob_anim_id = 2339 WHERE mob_skill_id = 3164;
--
-- Bart / Lion II
--
REPLACE INTO `mob_skills` VALUES (2891, 2029, 'grapeshot', 4, 0.0, 7.0, 2000, 0, 4, 0, 0, 0, 3, 2, 0);
REPLACE INTO `mob_skills` VALUES (2892, 2030, 'pirate_pummel', 0, 0.0, 7.0, 2000, 0, 4, 0, 0, 0, 9, 0, 0);
REPLACE INTO `mob_skills` VALUES (2893, 2031, 'powder_keg', 4, 0.0, 7.0, 2000, 0, 4, 0, 0, 0, 5, 1, 0);
REPLACE INTO `mob_skills` VALUES (2894, 2032, 'walk_the_plank', 1, 0.0,  7.0, 2000, 0, 4, 0, 0, 0, 11, 0, 0);

INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lion_II',1124,2891);
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lion_II',1124,2892);
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lion_II',1124,2893);
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lion_II',1124,2894);
--
-- Bart / Tenzen II
--
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Tenzen_II', 1129, 1397);

--
-- General / Iroha I & II
--
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3732);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3733);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3734);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3735);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3736);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3737);

INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3732);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3733);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3734);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3735);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3736);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3737);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3738);

INSERT INTO mob_spell_lists VALUES ('TRUST_Iroha', 410, 205, 99, 255);
UPDATE mob_skills SET mob_anim_id = 2541, primary_sc = 11, secondary_sc = 13 WHERE mob_skill_id = 3737;
UPDATE mob_skills SET mob_anim_id = 2540, primary_sc = 7 WHERE mob_skill_id = 3733;
UPDATE mob_skills SET mob_anim_id = 2539, primary_sc = 13, secondary_sc = 12 WHERE mob_skill_id = 3736;
UPDATE mob_skills SET mob_anim_id = 2538, primary_sc = 11 WHERE mob_skill_id = 3735;
UPDATE mob_skills SET mob_anim_id = 2537, primary_sc = 5, secondary_sc = 8 WHERE mob_skill_id = 3734;
UPDATE mob_skills SET mob_anim_id = 2536, primary_sc = 8 WHERE mob_skill_id = 3732;
UPDATE mob_skills SET mob_anim_id = 2564, mob_skill_aoe = 1, mob_skill_distance = 10.0, mob_valid_targets = 3, mob_skill_flag = 128 WHERE mob_skill_id = 3738;
--
-- General / Arciela II
--

INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,43,7,255); -- protect
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,44,27,255); -- protect_ii
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,45,47,255); -- protect_iii
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,46,63,255); -- protect_iv
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,47,77,255); -- protect_v
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,48,17,255); -- shell
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,51,68,255); -- shell_iv
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,49,37,255); -- shell_ii
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,50,57,255); -- shell_iii
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,52,76,255); -- shell_v

INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2448); -- Ascension
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2449); -- Descension
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2450); -- Expunge Magic
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2451); -- harmonic displacement
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2452); -- sight unseen
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2453); -- darkest hour
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2454); -- unceasing dread
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2455); -- dignified awe
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2456); -- naakuals vengance

UPDATE mob_skills SET mob_anim_id = 2448 WHERE mob_skill_id = 3697; -- Ascension
UPDATE mob_skills SET mob_anim_id = 2449 WHERE mob_skill_id = 3698; -- Descension
UPDATE mob_skills SET mob_anim_id = 2450, primary_sc =  6, secondary_sc =  4 WHERE mob_skill_id = 3699; -- Expunge Magic Disctortion 6 / Scission 4
UPDATE mob_skills SET mob_anim_id = 2451, primary_sc = 11, secondary_sc =  5 WHERE mob_skill_id = 3700; -- harmonic displacement Fusion 11 / Reverberation 5
UPDATE mob_skills SET mob_anim_id = 2452, primary_sc =  9, secondary_sc =  3 WHERE mob_skill_id = 3701; -- sight unseen Gravitation 9 / Liquification 3
UPDATE mob_skills SET mob_anim_id = 2453, primary_sc = 12, secondary_sc =  2 WHERE mob_skill_id = 3702; -- darkest hour Fragmentation 12 / Compression 2
UPDATE mob_skills SET mob_anim_id = 2454 WHERE mob_skill_id = 3703; -- unceasing dread -- adds Paralyze
UPDATE mob_skills SET mob_anim_id = 2455 WHERE mob_skill_id = 3704; -- dignified awe -- Adds Amnesia
UPDATE mob_skills SET mob_anim_id = 2456, primary_sc = 13, secondary_sc = 11 WHERE mob_skill_id = 3705; -- naakuals vengance Light 13 / Fusion 11 -- Recovers Own HP & MP Fully 5 Minute Cool down
--
-- Bart / Koru
--
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Koru-Moru', 1067, 173);
--
-- Bart / Semih Lafihna
--
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Semih_Lafihna', 1055, 202);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Semih_Lafihna', 1055, 203);
--
-- Bart / Iron Eater
--

INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 81);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 82);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 84);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 85);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 86);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 87);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 89);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 90);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 91);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 92);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 93);
--
-- Bart / Trion
--
UPDATE `mob_skills` SET `mob_skill_id`=3193, `mob_anim_id`=669, `mob_skill_name`='royal_bash', `mob_skill_aoe`=2, `mob_skill_distance`=7.0, `mob_anim_time`=2000, `mob_prepare_time`=500, `mob_valid_targets`=4, `mob_skill_flag`=0, `mob_skill_param`=0, `knockback`=0, `primary_sc`=0, `secondary_sc`=0, `tertiary_sc`=0 WHERE `mob_skill_id`=3193;
UPDATE `mob_skills` SET `mob_skill_id`=3194, `mob_anim_id`=670, `mob_skill_name`='royal_savior', `mob_skill_aoe`=1, `mob_skill_distance`=7.0, `mob_anim_time`=2000, `mob_prepare_time`=500, `mob_valid_targets`=1, `mob_skill_flag`=0, `mob_skill_param`=0, `knockback`=0, `primary_sc`=0, `secondary_sc`=0, `tertiary_sc`=0 WHERE `mob_skill_id`=3194;
UPDATE `mob_skill_lists` SET `skill_list_name`='TRUST_Trion', `skill_list_id`=1020, `mob_skill_id`=34 WHERE `skill_list_id`=1020 AND `mob_skill_id`=34;
UPDATE `mob_skill_lists` SET `skill_list_name`='TRUST_Trion', `skill_list_id`=1020, `mob_skill_id`=35 WHERE `skill_list_id`=1020 AND `mob_skill_id`=35;
UPDATE `mob_skill_lists` SET `skill_list_name`='TRUST_Trion', `skill_list_id`=1020, `mob_skill_id`=42 WHERE `skill_list_id`=1020 AND `mob_skill_id`=42;
DELETE FROM mob_skill_lists WHERE skill_list_name = 'TRUST_Trion' AND mob_skill_id=3193;
DELETE FROM mob_skill_lists WHERE skill_list_name = 'TRUST_Trion' AND mob_skill_id=3194;
--
-- Bart / Curilla
--
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Curilla', 1017, 42);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Curilla', 1017, 45);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Curilla', 1017, 32);

-- 
-- Bart / Ajido
--
INSERT INTO `mob_spell_lists` (`spell_list_name`, `spell_list_id`, `spell_id`, `min_level`, `max_level`) VALUES ('TRUST_Ajido-Marujido', 316, 235, 50, 255);
INSERT INTO `mob_spell_lists` (`spell_list_name`, `spell_list_id`, `spell_id`, `min_level`, `max_level`) VALUES ('TRUST_Ajido-Marujido', 316, 237, 50, 255);
INSERT INTO `mob_spell_lists` (`spell_list_name`, `spell_list_id`, `spell_id`, `min_level`, `max_level`) VALUES ('TRUST_Ajido-Marujido', 316, 239, 50, 255);
--
-- General - Selhteus
--

INSERT INTO `mob_skill_lists` VALUES ('TRUST_Selh_teus',1094,1508); -- Luminous Lance
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Selh_teus',1094,1509); -- Rejuvination
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Selh_teus',1094,1510); -- Revelation

UPDATE mob_pools SET sJob = 12, skill_list_id = 1094, name = 'selh_teus' WHERE poolid = 5979;
--
-- General - Zeid
--
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Zeid',1021,983); -- abyssal strike
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Zeid',1021,982); -- Abyssal drain
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Zeid',1021,981); -- Ground Strike
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Zeid',1021,980); -- Freeze bite
--
-- General - AAMR
--
UPDATE mob_pools SET mJob = 1, sJob = 13, spellList = 405, name = 'aamr' WHERE poolid = 5994;
--
-- General - Lhe Lhangavo
--
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lhe_Lhangavo',1079,11); -- ascetics_fury
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lhe_Lhangavo',1079,14); -- victory_smite
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lhe_Lhangavo',1079,1033); -- Dragon Kick
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lhe_Lhangavo',1079,1034); -- Asuran Fists
--
-- General - TRUST_Ullegore
-- 
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Ullegore',1102,3624);
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Ullegore',1102,3625);
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Ullegore',1102,3626);
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Ullegore',1102,3627);
UPDATE mob_pools SET sJob = 8 WHERE poolid = 5987 and name = 'ullegore';
UPDATE mob_groups SET MP = 5000 WHERE groupid = 73 and name = 'Ullegore';