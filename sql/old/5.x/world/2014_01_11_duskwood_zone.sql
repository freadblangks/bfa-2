-- Generic Modify
UPDATE `creature_template_addon` SET `auras`='' WHERE  `entry`=43730;
-- Quest Insert
DELETE FROM `quest_template` WHERE Id=(25235);
INSERT INTO `quest_template` (`Id`, `Level`, `MinLevel`, `ZoneOrSort`, `RewardXPId`, `RewardMoney`, `RewardMoneyMaxLevel`, `RewardHonorMultiplier`, `Flags`, `RewardFactionId1`, `Title`, `Objectives`, `Details`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGoCount1`, `ObjectiveText1`, `WDBVerified`) VALUES (25235, 22, 20, 10, 5, 1400, 10500, 0, 8, 72, 'Vulgar Vul''Gol', 'Kill 15 Splinter Fist Ogres of any kind.', 'Hail, $c. Care to lend a hand for the people of Darkshire?$B$BThere''s a huge ogre mound just down the hill there. The Splinter Fist ogres usually keep to themselves, but they''ve got a bad habit of attacking travelers. Just the other day I saw one drag off a poor man\'\'s horse for food... he was lucky it left him behind!$B$BThe Night Watch wants to only risk its few members in the defense of more immediate threats, me included. But if you kill some of those ogres for me, I''ll pay you for your deed.', 'Return to Watcher Dodds in Duskwood.', 43754, 15, 'Splinter Fist Ogre slain',  15595);
-- Quest:The Embalmer s Revenge
UPDATE `creature` SET `phaseMask`=2 WHERE  `guid`=403001;
DELETE FROM `smart_scripts` WHERE entryorguid=(263);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=263;
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_chance`, `event_param1`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `target_type`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (263, 0, 19, 100, 26727, 12, 26727, 3, 120000, 8, -10557.65, -1161.96, 27.89, 6.079422, 'On quest accept - The Embalmer s Revenge - npc spawn');
-- Quest:The Fate of Morbent Fel
DELETE FROM `gameobject_template` WHERE entry=(204816);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (204816, 10, 6400, 'Bloodsoaked Hat', '', '', '', 0, 0, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
DELETE FROM `quest_template` WHERE Id=(26723);
INSERT INTO `world`.`quest_template` (`Id`, `Level`, `MinLevel`, `ZoneOrSort`, `NextQuestIdChain`, `RewardXPId`, `RewardMoney`, `RewardMoneyMaxLevel`, `Flags`, `RewardFactionId1`, `RewardFactionValueId1`, `Title`, `Objectives`, `Details`, `CompletedText`, `RequiredNpcOrGo1`, `ObjectiveText1`) VALUES (26723, 24, 22, 10, 26724, 5, 1700, 11700, 8, 1134, 5, 'The Fate of Morbent Fel', 'Search Forlorn Rowe for signs of Morbent Fel.', 'Before I was lost to the woods, the last thing I remember is Morbent Fel. He was a vile necromancer, and the reason this land swarms with so many vile undead.$B$BI asked an adventurer to help me put an end to him. I thought they did! But Sister Elsington tells me the land still crawls with ghouls and spectres ripped from the grave.$B$BMorbent Fel should have breathed his last in the house on Forlorn Rowe, north of Raven Hill Cemetary. Go there and see what''s become of him...', 'Return to Sven Yorgen at Raven Hill in Duskwood.', -204816, 'Remains of Morbent Fel');
-- Quest:Guided by the Light
DELETE FROM `gameobject_template` WHERE entry=(204817);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (204817, 2, 20, 'Lightforged Rod', '', '', '', 0, 0, 0.4, 0, 0, 0, 0, 0, 0, 43, 15466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
-- Quest:The Halls of the Dead
DELETE FROM `gameobject_template` WHERE entry=(204824);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (204824, 2, 20, 'Lightforged Arch', '', '', '', 0, 0, 0.4, 0, 0, 0, 0, 0, 0, 43, 15476, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
-- Quest:The Weathered Grave
DELETE FROM `gameobject_queststarter` WHERE  `id`=61 AND `quest`=225;
DELETE FROM `gameobject_template` WHERE entry=(61);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (61, 2, 12, 'A Weathered Grave', '', '', '', 84, 0, 1.29, 0, 0, 0, 0, 0, 0, 0, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 15595);
-- Quest:Mor'Ladim
DELETE FROM `creature_template` WHERE entry=(522);
DELETE FROM `smart_scripts` WHERE entryorguid=(522);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (522, 0, 0, 0, 0, 0, 21691, 0, 0, 0, 'Mor''Ladim', '', NULL, 0, 25, 25, 0, 0, 21, 21, 0, 0.888888, 1.14286, 1, 1, 42, 56, 0, 102, 2.4, 2000, 2000, 2, 64, 2048, 0, 0, 0, 0, 0, 29, 42, 9, 6, 0, 0, 522, 522, 0, 0, 0, 0, 0, 0, 0, 3547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 279, 'SmartAI', 1, 3, 1, 2364, 1, 1, 1, 0, 3514, 0, 0, 0, 0, 0, 0, 1, 8388624, 0, '', 15595);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (522, 0, 0, 0, 0, 0, 100, 0, 0, 3200, 8600, 28300, 11, 3547, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mor''Ladim - In Combat - Cast Enraging Memories');
-- Quest:The Yorgen Worgen
DELETE FROM `gameobject_template` WHERE entry=(204777);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (204777, 10, 20, 'Mound of Loose Dirt', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
-- Quest:The Stolen Letters and In A Dark Corner
DELETE FROM `gameobject_template` WHERE entry=(204462);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (204462, 3, 9749, 'Pile of Scraps', '', '', '', 0, 4, 1, 59357, 59361, 0, 0, 0, 0, 43, 204462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329);
-- Quest:Roland's Doom
DELETE FROM `gameobject_template` WHERE entry=(204591);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (204591, 3, 9749, 'Muddy Journal Page', '', '', '', 0, 4, 1, 938, 0, 0, 0, 0, 0, 43, 204591, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329);
-- Quest not working
UPDATE `quest_template` SET `Method`=0 WHERE Id IN (26777, 26720, 26760);
