ALTER TABLE `world_state` ADD `AreaIDs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL AFTER `MapIDs`;

UPDATE `world_state` SET `MapIDs`='571,2118',`AreaIDs`='4197,10176' WHERE `ID` IN (3490,3491,3680,3681,3698,3699,3700,3701,3702,3703,3704,3705,3706,3710,3711,3712,3713,3714,3749,3750,3751,3752,3753,3754,3755,3756,3757,3758,3759,3760,3761,3762,3763,3764,3765,3766,3767,3768,3769,3770,3771,3772,3773,3781,3801,3802,3803,4022,4023,4024,4025,4354);
