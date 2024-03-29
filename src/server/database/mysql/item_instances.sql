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
# Table structure for table item_instances
#

DROP TABLE IF EXISTS `item_instances`;
CREATE TABLE `item_instances` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `char_id_owner` int(10) unsigned default '0',
  `char_id_guardian` int(10) unsigned default '0',
  `parent_item_id` int(10) unsigned default '0',
  `location_in_parent` smallint(4) default '0',
  `stack_count` int(10) unsigned NOT NULL default '0',
  `creator_mark_id` int(10) unsigned default '0',
  `guild_mark_id` int(10) unsigned default '0',
  `loc_instance` int(11) unsigned default '0',
  `loc_sector_id` smallint(4) unsigned default '0',
  `loc_x` float(14,6) default '0.00',
  `loc_y` float(14,6) default '0.00',
  `loc_z` float(14,6) default '0.00',
  `loc_xrot` float(14,6) default '0.00',
  `loc_yrot` float(14,6) default '0.00',
  `loc_zrot` float(14,6) default '0.00',
  `decay_resistance` float(3,2) NOT NULL default '0.00',
  `item_quality` float(5,2) default '50.00',
  `crafted_quality` float(5,2) default '50.00',
  `item_stats_id_standard` int(10) unsigned NOT NULL default '0',
  `item_stats_id_unique` int(10) unsigned default '0',
  `flags` varchar(200) default '0',
  `lock_str` int(5) NOT NULL default '0',
  `lock_skill` int(2) NOT NULL default '-1',
  `openable_locks` varchar(100) default '0',
  `item_name` varchar(100) default '',
  `item_description` varchar(255) default '',
  `creative_definition` TEXT  DEFAULT NULL COMMENT 'This is used for books/sketch.',
  `charges` int(3) NOT NULL default '0',
  `prefix` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Determines the prefix to be used from the loot modifiers table',
  `suffix` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Determines the suffix to be used from the loot modifiers table',
  `adjective` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Determines the adjective to be used from the loot modifiers table',
  PRIMARY KEY  (`id`),
  KEY `char_id_owner` (`char_id_owner`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table item_instances
#

# Some axes that are hanging around
INSERT INTO `item_instances` VALUES (1,0,0,0,0,1,0,0,0,3,0,2,-200,0,0,0,0,50,50,2,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (2,0,0,0,0,1,0,0,0,3,4,2,-210,0,0,0,0,50,50,2,0,'',0,-1,'','','',NULL,'0',0,0,0);

# Smith items
INSERT INTO `item_instances` VALUES (3,5,0,0,21,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,2,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (4,5,0,0,22,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,3,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (5,5,0,0,19,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,4,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (6,5,0,0,20,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,5,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (7,5,0,0,25,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,6,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (8,5,0,0,26,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,7,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (9,5,0,0,23,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,8,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (10,5,0,0,24,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,9,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (11,5,0,0,18,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,10,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (12,5,0,0,16,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,11,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (13,5,0,0,17,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,12,0,'',0,-1,'','','',NULL,'0',0,0,0);

# More axes
INSERT INTO `item_instances` VALUES (14,0,0,0,0,1,0,0,0,3,20,1,-150,0,0,0,0,50,50,2,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (15,0,0,0,0,1,0,0,0,3,0,1,-150,0,0,0,0,50,50,2,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (16,0,0,0,0,1,0,0,0,3,20,1,-130,0,0,0,0,50,50,2,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (17,0,0,0,0,1,0,0,0,3,0,1,-130,0,0,0,0,50,50,2,0,'',0,-1,'','','',NULL,'0',0,0,0);

# Guest player items
INSERT INTO `item_instances` VALUES (20,1,0,0,16,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,13,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (21,1,0,0,17,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,14,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (22,1,0,0,18,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,15,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (23,1,0,0,19,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,71,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (24,1,0,0,20,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,65,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (25,1,0,0,21,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,90,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (26,1,0,0,22,1,1,1,0,0,0,0,0,0,0,0,0,50,-1,69,0,'',0,-1,'','','',NULL,'0',0,0,0);

# Merchant items
INSERT INTO `item_instances` VALUES (30,8,0,0,29,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,13,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (31,8,0,0,30,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,14,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (32,8,0,0,28,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,15,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (33,8,0,0,26,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,16,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (34,8,0,0,27,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,17,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (35,8,0,0,33,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,18,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (36,8,0,0,34,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,19,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (37,8,0,0,31,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,20,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (38,8,0,0,32,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,21,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (39,8,0,0,25,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,22,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (40,8,0,0,18,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,23,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (41,8,0,0,19,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,24,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (42,8,0,0,16,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,25,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (43,8,0,0,17,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,26,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (44,8,0,0,20,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,27,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (45,8,0,0,23,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,28,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (46,8,0,0,24,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,29,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (47,8,0,0,21,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,44,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (48,8,0,0,22,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,47,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (49,8,0,0,35,1,0,0,0,0,0,0,0,0,0,0,0,50,-1,421,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (172,8,0,0,35,1,0,0,0,0,0,0,0,0,0,0,0,50,-1,423,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (185,8,0,0,35,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,232,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (186,8,0,0,35,1,8,0,0,0,0,0,0,0,0,0,0,50,-1,233,0,'',0,-1,'','','',NULL,'0',0,0,0);

# acraig items
INSERT INTO `item_instances` VALUES (50,3,0,0,16,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,71,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (51,3,0,0,17,1,5,0,0,0,0,0,0,0,0,0,0,50,-1,69,0,'',0,-1,'','','',NULL,'0',0,0,0);

# vengeance items
INSERT INTO `item_instances` VALUES (60,2,0,0,16,1,0,0,0,0,0,0,0,0,0,0,0,50,50,2,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (61,2,0,0,17,1,0,0,0,0,0,0,0,0,0,0,0,50,-1,85,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (62,2,0,0,18,1,0,0,0,0,0,0,0,0,0,0,0,50,-1,411,0,'',0,-1,'','','',NULL,'1',0,0,0);
INSERT INTO `item_instances` VALUES (63,2,0,0,20,1,0,0,0,0,0,0,0,0,0,0,0,50,50,84,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (67,2,0,0,27,1,0,0,0,0,0,0,0,0,0,0,0,50,50,71,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (68,2,0,0,24,1,0,0,0,0,0,0,0,0,0,0,0,50,50,235,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (69,2,0,0,28,1,0,0,0,0,0,0,0,0,0,0,0,50,50,65,0,'',0,-1,'','','',NULL,'0',0,0,0);

# Wooden bowl and contents
INSERT INTO `item_instances` VALUES (70,0,0,0,0,1,0,0,0,3,-3.7,1.07,-180.58,0,0,0,0,50,50,70,0,'NOPICKUP',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (71,0,2,70,1,1,0,0,0,3,0,0,0,0,0,0,0,50,-1,60,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (72,0,2,70,2,2,0,0,0,3,0,0,0,0,0,0,0,50,-1,61,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (73,0,2,70,3,7,0,0,0,3,0,0,0,0,0,0,0,50,-1,62,0,'',0,-1,'','','',NULL,'0',0,0,0);

# Book container and contents
INSERT INTO `item_instances` VALUES (80,0,0,0,0,1,0,0,0,3,-56.16,-3,-154.73,0,4.74,0,0,50,50,234,0,'NOPICKUP',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (81,0,0,80,1,1,0,0,0,0,0,0,0,0,0,0,0,50,-1,2008,0,'NOPICKUP',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (82,0,0,0,0,1,0,0,0,3,-55.79,-3,-153.56,0,4.74,0,0,50,50,234,0,'NOPICKUP NPCOWNED',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (83,0,0,82,1,1,0,0,0,0,0,0,0,0,0,0,0,50,-1,10,0,'NOPICKUP',0,-1,'','','',NULL,'0',0,0,0);

# Weapons for fighter1 and fighter2
INSERT INTO `item_instances` VALUES (90,6,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,50,-1,2,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (91,7,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,50,-1,2,0,'',0,-1,'','','',NULL,'0',0,0,0);

# Key and lock for entrance
INSERT INTO `item_instances` VALUES (95,0,0,0,0,1,0,0,0,3,-56,-1,-148,0,0,0,0,50,50,420,0,'LOCKED,SECURITYLOCK,UNPICKABLE',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (96,0,0,0,0,1,0,0,0,3,-54,1,-148,0,0,0,0,50,50,413,0,'KEY',0,-1,'95','','',NULL,'0',0,0,0);

# Items on ground
INSERT INTO `item_instances` VALUES (100,0,0,0,0,1,0,0,0,3,-2.72,0.37,-182.03,0,90,0,0,50,50,74,0,'NOPICKUP',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (101,0,0,0,0,1,0,0,0,3,-6.67,0.12,-140.5,0,0,0,0,50,50,91,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (102,0,0,0,0,1,0,0,0,3,-6.67,0.12,-142.5,0,0,0,0,50,50,92,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (103,0,0,0,0,1,0,0,0,3,-6.67,0.12,-144.5,0,0,0,0,50,50,93,0,'NOPICKUP',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (104,0,0,0,0,1,0,0,0,3,-6.67,0.12,-146.5,0,0,0,0,50,50,94,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (105,0,0,0,0,1,0,0,0,3,-6.67,0.12,-148.5,0,0,0,0,50,50,95,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (106,0,0,0,0,1,0,0,0,3,-6.67,0.12,-150.5,0,0,0,0,50,50,96,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (107,0,0,0,0,1,0,0,0,3,-6.67,0.12,-152.5,0,0,0,0,50,50,97,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (108,0,0,0,0,1,0,0,0,3,-6.67,0.12,-154.5,0,0,0,0,50,50,98,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (109,0,0,0,0,1,0,0,0,3,-6.67,0.12,-156.5,0,0,0,0,50,50,99,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (110,0,0,0,0,1,0,0,0,3,-6.67,0.12,-158.5,0,0,0,0,50,50,100,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (111,0,0,0,0,1,0,0,0,3,-6.67,0.12,-160.5,0,0,0,0,50,50,101,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (112,0,0,0,0,1,0,0,0,3,-16,0.12,-140.5,0,0,0,0,50,50,412,0,'LOCKED,LOCKABLE,UNPICKABLE',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (113,0,0,0,0,1,0,0,0,3,-15,0.12,-140.5,0,0,0,0,50,50,412,0,'LOCKED,LOCKABLE,UNPICKABLE',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (114,0,0,0,0,1,0,0,0,3,-14,0.12,-140.5,0,0,0,0,50,50,413,0,'KEY',0,-1,'112 113','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (115,0,0,0,0,1,0,0,0,3,-52.77,-4,-157.63,0,9.03,0,0,50,50,4815,0,'NOPICKUP',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (116,0,0,0,0,1,0,0,0,3,-55.34,-4,-157.58,0,4.15,0,0,50,50,4811,0,'NOPICKUP',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (117,0,0,0,0,34,0,0,0,3,-16.6,-0.01,-171.9,0,0,0,0,50,50,91,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (118,0,0,0,0,1,0,0,0,3,-38.51,0,-160.54,0,8.03,0,0,50,99,419,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (119,0,0,0,0,1,0,0,0,3,-16,0.12,-138.5,0,0,0,0,50,50,412,0,'LOCKED,LOCKABLE',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (120,0,0,0,0,1,0,0,0,3,-15,0.12,-138.5,0,0,0,0,50,50,413,0,'KEY',0,-1,'119','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (121,0,0,0,0,1,0,0,0,3,-16,0.12,-136.5,0,0,0,0,50,50,412,0,'LOCKED,LOCKABLE',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (128,0,0,0,0,1,0,0,0,3,-3.72,0.37,-183.03,0,90,0,0,50,50,138,0,'NOPICKUP',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (140,2,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,50,50,9,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (151,20,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,50,50,84,0,'TRANSIENT',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (166,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,50,50,3,0,'',0,-1,'','','',NULL,'0',0,0,0);
INSERT INTO `item_instances` VALUES (171,0,0,0,0,17,0,0,0,3,-16.6,-0.01,-171.9,0,0,0,0,50,50,91,0,'',0,-1,'','','',NULL,'0',0,0,0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
