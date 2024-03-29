# MySQL-Front 3.2  (Build 13.0)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;

/*!40101 SET NAMES latin1 */;
/*!40103 SET TIME_ZONE='SYSTEM' */;

# Host: localhost    Database: planeshift
# ------------------------------------------------------
# Server version 5.0.19-nt

#
# Table structure for table characters
#

DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(30) NOT NULL default '',
  `lastname` varchar(30) NOT NULL default '',
  `old_lastname` varchar(30) NOT NULL default '',
  `racegender_id` smallint(5) unsigned NOT NULL default '0',
  `character_type` int(10) unsigned default '0',
  `base_strength` float(10,2) NOT NULL default '0.00',
  `base_agility` float(10,2) NOT NULL default '0.00',
  `base_endurance` float(10,2) NOT NULL default '0.00',
  `base_intelligence` float(10,2) NOT NULL default '0.00',
  `base_will` float(10,2) NOT NULL default '0.00',
  `base_charisma` float(10,2) NOT NULL default '0.00',
  `base_hitpoints_max` float(10,2) NOT NULL default '0.00',
  `mod_hitpoints` float(10,2) NOT NULL default '0.00',
  `base_mana_max` float(10,2) NOT NULL default '0.00',
  `mod_mana` float(10,2) NOT NULL default '0.00',
  `stamina_physical` float(10,2) NOT NULL default '0.00',
  `stamina_mental` float(10,2) NOT NULL default '0.00',
  `money_circles` int(10) unsigned NOT NULL default '0',
  `money_octas` int(10) unsigned NOT NULL default '0',
  `money_hexas` int(10) unsigned NOT NULL default '0',
  `money_trias` int(10) unsigned NOT NULL default '0',
  `bank_money_circles` int(10) unsigned NOT NULL default '0',
  `bank_money_octas` int(10) unsigned NOT NULL default '0',
  `bank_money_hexas` int(10) unsigned NOT NULL default '0',
  `bank_money_trias` int(10) unsigned NOT NULL default '0',
  `loc_instance` int(11) unsigned default '0',
  `loc_sector_id` int(10) unsigned NOT NULL default '0',
  `loc_x` float(10,2) NOT NULL default '0.00',
  `loc_y` float(10,2) NOT NULL default '0.00',
  `loc_z` float(10,2) NOT NULL default '0.00',
  `loc_yrot` float(10,2) NOT NULL default '0.00',
  `guild_member_of` int(10) unsigned NOT NULL default '0',
  `guild_level` tinyint(1) unsigned NOT NULL default '0',
  `guild_additional_privileges` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Contains a bitfield with the additional priviledges assigned to this char (additional to the guild level it''s in)',
  `guild_denied_privileges` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Contains a bitfield with the removed priviledges from this char (removed from the guild level it''s in)',
  `guild_points` int(10) unsigned NOT NULL default '0',
  `guild_public_notes` varchar(255) default NULL,
  `guild_private_notes` varchar(255) default '0',
  `join_notifications` tinyint(1) unsigned NOT NULL default '0' COMMENT 'Contains a bitfield with the notifications being issued to this client about players login/logoff',
  `last_login` datetime default NULL,
  `progression_script` blob,
  `npc_spawn_rule` int(10) unsigned default '0',
  `npc_master_id` int(10) unsigned default '0',
  `npc_impervious_ind` char(1) NOT NULL default 'N',
  `account_id` int(10) unsigned NOT NULL default '0',
  `time_connected_sec` int(10) unsigned NOT NULL default '0',
  `npc_addl_loot_category_id` int(10) unsigned default '0',
  `experience_points` int(10) unsigned default '0',
  `progression_points` int(10) unsigned default '0',
  `description` text,
  `description_ooc` TEXT  DEFAULT NULL,
  `creation_info` TEXT  DEFAULT NULL,
  `description_life` TEXT  DEFAULT NULL,
  `kill_exp` int(5) NOT NULL default '10',
  `animal_affinity` text,
  `help_event_flags` int(11) unsigned default '0' COMMENT 'Bit field of which instruction events have played for him.',
  `creation_time` timestamp default current_timestamp,
  `banker` tinyint(1) unsigned NOT NULL default '0',
  `statue` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Determines if the character is a statue so will be put in STATUE mode',
  PRIMARY KEY  (`id`),
  KEY `account_id` (`account_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table characters
#

INSERT INTO `characters` VALUES (1,'Guest','Char','',0,0,144.00,40.00,44.00,40.00,40.00,40.00,0.00,100.00,0.00,100.00,216.00,200.00,34,40,10,134,100,100,100,100,0,3,-43.86,-0.01,-152.30,1.50,0,0,0,0,0,NULL,NULL,0,'0000-00-00 00:00:00','',0,0,'N',3,2604,0,180,18,'Was born in a jar','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (2,'Vengeance','IsMine','',0,0,300.00,60.00,60.00,60.00,60.00,60.00,0.00,280.00,0.00,120.00,200.00,200.00,34,40,10,134,0,0,0,0,0,3,-32.03,0.00,-154.36,0.49,0,0,0,0,0,NULL,NULL,0,'2006-11-29 21:55:15','',0,0,'N',1,14985,0,150,10,'Grew up on a ice mountain','','','',10,'<category attribute=\"Lifecycle\" name=\"Daylight\" value=\"10\" /><category attribute=\"Type\" name=\"Animal\" value=\"5\" />',3,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (3,'Acraig','Newfie','',2,0,144.00,40.00,44.00,40.00,40.00,40.00,0.00,100.00,0.00,100.00,216.00,200.00,34,40,10,134,100,100,100,100,0,3,-61.32,-0.01,-187.16,0.00,0,0,0,0,0,NULL,NULL,0,'0000-00-00 00:00:00','',0,0,'N',5,3798,0,150,1000,'description','','','',1000,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (4,'MaleEnki','','',1,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-1.00,0.00,-179.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,4,'N',9,0,0,0,0,'description','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (5,'Smith','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-53.54,0.00,-155.11,0.00,0,0,0,0,0,'','',0,NULL,'',1,5,'N',9,0,0,0,0,'description','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (6,'Fighter1','','',2,1,65.00,65.00,65.00,60.00,60.00,60.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-2.00,0.00,-181.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,6,'N',9,0,2,0,0,'description','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (7,'Fighter2','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-92.00,0.00,-266.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,6,'N',9,0,2,0,0,'description','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (8,'Merchant','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-46.54,0.00,-151.11,0.00,0,0,0,0,0,'','',0,NULL,'',1,8,'N',9,0,0,0,0,'description','','','',500,'',0,'0000-00-00 00:00:00', 1,0);
INSERT INTO `characters` VALUES (9,'Lady','Aren','',14,0,44.00,40.00,44.00,40.00,40.00,40.00,0.00,100.00,0.00,100.00,216.00,200.00,34,40,10,134,100,100,100,100,0,3,-43.86,-0.01,-152.30,1.50,0,0,0,0,0,NULL,NULL,0,'0000-00-00 00:00:00','',0,0,'N',1,2604,0,180,18,'The love of Guest Char.','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (12,'QuestMaster1','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-30.00,0.00,-150.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,12,'Y',9,0,0,0,0,'Used for quest testing. Type \"step1\" to start Test.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (13,'QuestMaster2','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-35.00,0.00,-150.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,13,'Y',9,0,0,0,0,'Used for quest testing. Type \"step1\" to start Test.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (14,'DictMaster1','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-40.00,0.00,-150.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,14,'N',9,0,0,0,0,'Used for quest testing. Type \"step1\" to start Test.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (15,'DictMaster2','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-45.00,0.00,-150.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,15,'N',9,0,0,0,0,'Used for quest testing. Type \"step1\" to start Test.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (20,'Miner','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-45.00,0.00,-150.00,0.00,0,0,0,0,0,'','',0,NULL,'',0,20,'N',9,0,0,0,0,'Tribe member. Used in tribe testing.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (21,'MoveMaster1','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-30.00,0.00,-130.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,21,'N',9,0,0,0,0,'Used to test movement.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (22,'MoveMaster2','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-35.00,0.00,-130.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,22,'N',9,0,0,0,0,'Used to test movement.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (23,'MoveMaster3','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-40.00,0.00,-130.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,23,'N',9,0,0,0,0,'Used to test movement.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (24,'MoveMaster4','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-45.00,0.00,-130.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,24,'N',9,0,0,0,0,'Used to test movement.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (25,'Fighter3','','',2,1,65.00,65.00,65.00,60.00,60.00,60.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,2.50,0.00,-132.50,0.00,0,0,0,0,0,'','',0,NULL,'',1,6,'N',9,0,2,0,0,'Fighting with region','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (26,'Fighter4','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,17.50,0.00,-147.50,0.00,0,0,0,0,0,'','',0,NULL,'',1,6,'N',9,0,2,0,0,'Fighting with region','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (27,'MoveMaster5A','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-60.00,0.00,-130.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,27,'N',9,0,0,0,0,'Used to test movement.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (28,'MoveMaster5B','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-60.00,0.00,-128.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,28,'N',9,0,0,0,0,'Used to test movement.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (29,'MoveMaster5C','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-60.00,0.00,-126.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,29,'N',9,0,0,0,0,'Used to test movement.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (30,'WinchBeast1','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-50.00,0.00,-130.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,30,'N',9,0,0,0,0,'Used to test interactions with sequences.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (40,'WinchMover1','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-55.00,0.00,-130.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,31,'N',9,0,0,0,0,'Used to test interactions with sequences.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (50,'FAMILIAR:Roge','Sample','',23,2,60.00,60.00,60.00,60.00,60.00,60.00,60.00,100.00,100.00,100.00,200.00,200.00,100,100,100,100,100,100,100,100,0,3,0.00,0.00,0.00,0.00,0,0,0,0,0,'','',0,'0000-00-00 00:00:00','',0,0,'N',9,0,0,10000,1000,'A Pet Sample','','','',10000,NULL,0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (51,'FAMILIAR:Clacker','Sample','',24,2,60.00,60.00,60.00,60.00,60.00,60.00,60.00,100.00,100.00,100.00,200.00,200.00,100,100,100,100,100,100,100,100,0,3,0.00,0.00,0.00,0.00,0,0,0,0,0,'','',0,'0000-00-00 00:00:00','',0,0,'N',9,0,0,10000,1000,'A Pet Sample','','','',10000,NULL,0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (52,'FAMILIAR:Rat','Sample','',25,2,60.00,60.00,60.00,60.00,60.00,60.00,60.00,100.00,100.00,100.00,200.00,200.00,100,100,100,100,100,100,100,100,0,3,0.00,0.00,0.00,0.00,0,0,0,0,0,'','',0,'0000-00-00 00:00:00','',0,0,'N',9,0,0,10000,1000,'A Pet Sample','','','',10000,NULL,0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (53,'MoveUnderground','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-65.00,0.00,-130.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,53,'N',9,0,0,0,0,'Used to test wander underground.','','','',500,'',0,'0000-00-00 00:00:00',0,0);

INSERT INTO `characters` VALUES (54,'Gertie','Hollaback','',1,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-1.00,0.00,-178.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,4,'N',9,0,0,0,0,'description','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (55,'Reginald','Hartlepool','',2,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-1.00,0.00,-177.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,4,'N',9,0,0,0,0,'description','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (56,'Butch','','',3,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-1.00,0.00,-176.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,4,'N',9,0,0,0,0,'description','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (57,'Loudon','','',4,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-1.00,0.00,-175.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,4,'N',9,0,0,0,0,'description','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (58,'Cabot','','',5,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-1.00,0.00,-174.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,4,'N',9,0,0,0,0,'description','','','',10,'',0,'0000-00-00 00:00:00',0,0);

INSERT INTO `characters` VALUES (59,'NPCroom1','','',9999,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-40.08,0.00,-191.86,0.00,0,0,0,0,0,'','',0,NULL,'',1,4,'Y',9,0,0,0,0,'NPCroom1 exploration area.','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (60,'NPCroom2','','',9999,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,6,-32.77,2.61,-0.38,0.00,0,0,0,0,0,'','',0,NULL,'',1,4,'Y',9,0,0,0,0,'NPCroom2 exploration area.','','','',10,'',0,'0000-00-00 00:00:00',0,0);

INSERT INTO `characters` VALUES (61,'Mount1','','',32,3,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-42.86,-0.01,-152.30,0.00,0,0,0,0,0,'','',0,NULL,'',1,6,'Y',9,0,2,0,0,'description','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (62,'Hunter','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-90.00,0.00,-230.00,0.00,0,0,0,0,0,'','',0,NULL,'',0,62,'N',9,0,0,0,0,'Tribe member. Used in tribe testing.','','','',500,'',0,'0000-00-00 00:00:00',0,0);

INSERT INTO `characters` VALUES (63,'RespawnCircle','','',2,1,65.00,65.00,65.00,60.00,60.00,60.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-65.00,0.00,-415.00,0.00,0,0,0,0,0,'','',0,NULL,'',100,63,'N',0,0,2,0,0,'Test respawn rule in circle','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (64,'RespawnCircle','','',2,1,65.00,65.00,65.00,60.00,60.00,60.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-65.00,0.00,-415.00,0.00,0,0,0,0,0,'','',0,NULL,'',100,63,'N',0,0,2,0,0,'Test respawn rule in circle','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (65,'RespawnCircle','','',2,1,65.00,65.00,65.00,60.00,60.00,60.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-65.00,0.00,-415.00,0.00,0,0,0,0,0,'','',0,NULL,'',100,63,'N',0,0,2,0,0,'Test respawn rule in circle','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (66,'RespawnArea','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-55.00,0.00,-417.00,0.00,0,0,0,0,0,'','',0,NULL,'',101,63,'N',0,0,2,0,0,'Test respawn rule in area','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (67,'RespawnArea','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-55.00,0.00,-417.00,0.00,0,0,0,0,0,'','',0,NULL,'',101,63,'N',0,0,2,0,0,'Test respawn rule in area','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (68,'RespawnArea','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-55.00,0.00,-417.00,0.00,0,0,0,0,0,'','',0,NULL,'',101,63,'N',0,0,2,0,0,'Test respawn rule in area','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (69,'RespawnLine','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-42.00,0.00,-379.00,0.00,0,0,0,0,0,'','',0,NULL,'',102,63,'N',0,0,2,0,0,'Test respawn rule in line','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (70,'RespawnLine','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-42.00,0.00,-379.00,0.00,0,0,0,0,0,'','',0,NULL,'',102,63,'N',0,0,2,0,0,'Test respawn rule in line','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (71,'RespawnLine','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-42.00,0.00,-379.00,0.00,0,0,0,0,0,'','',0,NULL,'',102,63,'N',0,0,2,0,0,'Test respawn rule in line','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (72,'RespawnCombination','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-70.00,0.00,-380.00,0.00,0,0,0,0,0,'','',0,NULL,'',103,63,'N',0,0,2,0,0,'Test respawn rule in combination','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (73,'RespawnCombination','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-70.00,0.00,-380.00,0.00,0,0,0,0,0,'','',0,NULL,'',103,63,'N',0,0,2,0,0,'Test respawn rule in combination','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (74,'RespawnCombination','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-70.00,0.00,-380.00,0.00,0,0,0,0,0,'','',0,NULL,'',103,63,'N',0,0,2,0,0,'Test respawn rule in combination','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (75,'RespawnCombination','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-70.00,0.00,-380.00,0.00,0,0,0,0,0,'','',0,NULL,'',103,63,'N',0,0,2,0,0,'Test respawn rule in combination','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (76,'RespawnCombination','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-70.00,0.00,-380.00,0.00,0,0,0,0,0,'','',0,NULL,'',103,63,'N',0,0,2,0,0,'Test respawn rule in combination','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (77,'RespawnCombination','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-70.00,0.00,-380.00,0.00,0,0,0,0,0,'','',0,NULL,'',103,63,'N',0,0,2,0,0,'Test respawn rule in combination','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (78,'MoveMaster6','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-15.00,0.00,-230.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,29,'N',9,0,0,0,0,'Used to test movement.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (79,'LocateMaster1','','',7,1,44.00,40.00,44.00,40.00,40.00,40.00,50.00,100.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-20.00,0.00,-230.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,29,'N',9,0,0,0,0,'Used to test movement.','','','',500,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (80,'Chaser1','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-10.00,0.00,-200.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,6,'N',9,0,2,0,0,'Used to test chase operations.','','','',10,'',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `characters` VALUES (81,'Chaser2','','',3,1,100.00,100.00,100.00,100.00,100.00,100.00,200.00,200.00,100.00,100.00,100.00,100.00,100,100,100,100,100,100,100,100,0,3,-37.00,0.00,-130.00,0.00,0,0,0,0,0,'','',0,NULL,'',1,6,'N',9,0,2,0,0,'Used to test chase operations.','','','',10,'',0,'0000-00-00 00:00:00',0,0);



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
