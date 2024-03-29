###############################################################################
#   Table for the various command groups people have.
#       id           - The group ID
#       group_name   - The name of the group
###############################################################################

DROP TABLE IF EXISTS `command_groups`;
CREATE TABLE command_groups (
  id int(8) unsigned NOT NULL,
  group_name varchar(40) NOT NULL DEFAULT '' ,
  PRIMARY KEY (id)
);


INSERT INTO command_groups VALUES(0, "Player");

INSERT INTO command_groups VALUES(10, "Tester");

INSERT INTO command_groups VALUES(21, "Initiate");
INSERT INTO command_groups VALUES(22, "Moderator");
INSERT INTO command_groups VALUES(23, "Advanced");
INSERT INTO command_groups VALUES(24, "Senior");
INSERT INTO command_groups VALUES(25, "Leader");

INSERT INTO command_groups VALUES(30, "Developers");



###############################################################################
#   Table for the command to group assignments
###############################################################################
DROP TABLE IF EXISTS `command_group_assignment`;
CREATE TABLE command_group_assignment (
  command_name varchar(40) NOT NULL DEFAULT '' ,
  group_member int(8) NOT NULL,
  UNIQUE KEY `UNIQUE1` (`command_name`,`group_member`)
 );

# commands must be listed with the leading slash
# special properties are listed without a slash

# developers only
INSERT INTO command_group_assignment VALUES( "/action", 30 );
INSERT INTO command_group_assignment VALUES( "/badtext", 30 );
INSERT INTO command_group_assignment VALUES( "change NPC names", 30 );
INSERT INTO command_group_assignment VALUES( "/deletechar", 30 );
INSERT INTO command_group_assignment VALUES( "/location", 30 );
INSERT INTO command_group_assignment VALUES( "/npc", 30 );
INSERT INTO command_group_assignment VALUES( "/path", 30 );
INSERT INTO command_group_assignment VALUES( "/reload", 30 );
INSERT INTO command_group_assignment VALUES( "/runscript", 30 );
INSERT INTO command_group_assignment VALUES( "/loadquest", 30 );
INSERT INTO command_group_assignment VALUES( "save quest disable", 30 );
INSERT INTO command_group_assignment VALUES( "/updaterespawn", 30 );
INSERT INTO command_group_assignment VALUES( "/rndmsgtest", 30 );
INSERT INTO command_group_assignment VALUES( "setattrib others", 30 );
INSERT INTO command_group_assignment VALUES( "setkillexp others", 30 );
INSERT INTO command_group_assignment VALUES( "/serverquit", 30 );
INSERT INTO command_group_assignment VALUES( "requested death", 30 );
INSERT INTO command_group_assignment VALUES( "/time", 30 );
INSERT INTO command_group_assignment VALUES( "/version", 30 );
INSERT INTO command_group_assignment VALUES( "/changenpctype", 30 );


# GM5 and above
INSERT INTO command_group_assignment VALUES( "/death", 30 );
INSERT INTO command_group_assignment VALUES( "/death", 25 );
INSERT INTO command_group_assignment VALUES( "/crystal", 30 );
INSERT INTO command_group_assignment VALUES( "/crystal", 25 );
INSERT INTO command_group_assignment VALUES( "/modify", 30 );
INSERT INTO command_group_assignment VALUES( "/modify", 25 );
INSERT INTO command_group_assignment VALUES( "/key", 30 );
INSERT INTO command_group_assignment VALUES( "/key", 25 );
INSERT INTO command_group_assignment VALUES( "/disablequest", 30 );
INSERT INTO command_group_assignment VALUES( "/disablequest", 25 );
INSERT INTO command_group_assignment VALUES( "move unpickupables/spawns", 30 );
INSERT INTO command_group_assignment VALUES( "move unpickupables/spawns", 25 );

# GM4 and above
INSERT INTO command_group_assignment VALUES( "long bans", 30 );
INSERT INTO command_group_assignment VALUES( "long bans", 25 );
INSERT INTO command_group_assignment VALUES( "long bans", 24 );
INSERT INTO command_group_assignment VALUES( "/fog", 30 );
INSERT INTO command_group_assignment VALUES( "/fog", 25 );
INSERT INTO command_group_assignment VALUES( "/fog", 24 );
INSERT INTO command_group_assignment VALUES( "/weather", 30 );
INSERT INTO command_group_assignment VALUES( "/weather", 25 );
INSERT INTO command_group_assignment VALUES( "/weather", 24 );
INSERT INTO command_group_assignment VALUES( "/rain", 30 );
INSERT INTO command_group_assignment VALUES( "/rain", 25 );
INSERT INTO command_group_assignment VALUES( "/rain", 24 );
INSERT INTO command_group_assignment VALUES( "/snow", 30 );
INSERT INTO command_group_assignment VALUES( "/snow", 25 );
INSERT INTO command_group_assignment VALUES( "/snow", 24 );
INSERT INTO command_group_assignment VALUES( "/thunder", 30 );
INSERT INTO command_group_assignment VALUES( "/thunder", 25 );
INSERT INTO command_group_assignment VALUES( "/thunder", 24 );
INSERT INTO command_group_assignment VALUES( "/event", 30 );
INSERT INTO command_group_assignment VALUES( "/event", 25 );
INSERT INTO command_group_assignment VALUES( "/event", 24 );
INSERT INTO command_group_assignment VALUES( "/award", 30 );
INSERT INTO command_group_assignment VALUES( "/award", 25 );
INSERT INTO command_group_assignment VALUES( "/award", 24 );
INSERT INTO command_group_assignment VALUES( "quest change others", 30 );
INSERT INTO command_group_assignment VALUES( "quest change others", 25 );
INSERT INTO command_group_assignment VALUES( "quest change others", 24 );
INSERT INTO command_group_assignment VALUES( "setskill others", 30 );
INSERT INTO command_group_assignment VALUES( "setskill others", 25 );
INSERT INTO command_group_assignment VALUES( "setskill others", 24 );
INSERT INTO command_group_assignment VALUES( "/item", 30 );
INSERT INTO command_group_assignment VALUES( "/item", 25 );
INSERT INTO command_group_assignment VALUES( "/item", 24 );
INSERT INTO command_group_assignment VALUES( "/setitemname", 30 );
INSERT INTO command_group_assignment VALUES( "/setitemname", 25 );
INSERT INTO command_group_assignment VALUES( "/setitemname", 24 );
INSERT INTO command_group_assignment VALUES( "/setquality", 30 );
INSERT INTO command_group_assignment VALUES( "/setquality", 25 );
INSERT INTO command_group_assignment VALUES( "/setquality", 24 );
INSERT INTO command_group_assignment VALUES( "/setstackable", 30 );
INSERT INTO command_group_assignment VALUES( "/setstackable", 25 );
INSERT INTO command_group_assignment VALUES( "/setstackable", 24 );
INSERT INTO command_group_assignment VALUES( "morph others", 30 );
INSERT INTO command_group_assignment VALUES( "morph others", 25 );
INSERT INTO command_group_assignment VALUES( "morph others", 24 );
INSERT INTO command_group_assignment VALUES( "/assignfaction", 30 );
INSERT INTO command_group_assignment VALUES( "/assignfaction", 25 );
INSERT INTO command_group_assignment VALUES( "/assignfaction", 24 );

# GM3 and above
INSERT INTO command_group_assignment VALUES( "/settrait", 30 );
INSERT INTO command_group_assignment VALUES( "/settrait", 25 );
INSERT INTO command_group_assignment VALUES( "/settrait", 24 );
INSERT INTO command_group_assignment VALUES( "/settrait", 23 );
INSERT INTO command_group_assignment VALUES( "/giveitem", 30 );
INSERT INTO command_group_assignment VALUES( "/giveitem", 25 );
INSERT INTO command_group_assignment VALUES( "/giveitem", 24 );
INSERT INTO command_group_assignment VALUES( "/giveitem", 23 );
INSERT INTO command_group_assignment VALUES( "/takeitem", 30 );
INSERT INTO command_group_assignment VALUES( "/takeitem", 25 );
INSERT INTO command_group_assignment VALUES( "/takeitem", 24 );
INSERT INTO command_group_assignment VALUES( "/takeitem", 23 );
INSERT INTO command_group_assignment VALUES( "/impersonate", 30 );
INSERT INTO command_group_assignment VALUES( "/impersonate", 25 );
INSERT INTO command_group_assignment VALUES( "/impersonate", 24 );
INSERT INTO command_group_assignment VALUES( "/impersonate", 23 );
INSERT INTO command_group_assignment VALUES( "changenameall", 30 );
INSERT INTO command_group_assignment VALUES( "changenameall", 25 );
INSERT INTO command_group_assignment VALUES( "changenameall", 24 );
INSERT INTO command_group_assignment VALUES( "changenameall", 23 );
INSERT INTO command_group_assignment VALUES( "/morph", 30 );
INSERT INTO command_group_assignment VALUES( "/morph", 25 );
INSERT INTO command_group_assignment VALUES( "/morph", 24 );
INSERT INTO command_group_assignment VALUES( "/morph", 23 );
INSERT INTO command_group_assignment VALUES( "/setkillexp", 30 );
INSERT INTO command_group_assignment VALUES( "/setkillexp", 25 );
INSERT INTO command_group_assignment VALUES( "/setkillexp", 24 );
INSERT INTO command_group_assignment VALUES( "/setkillexp", 23 );

# GM2 and above
INSERT INTO command_group_assignment VALUES( "/ban", 30 );
INSERT INTO command_group_assignment VALUES( "/ban", 25 );
INSERT INTO command_group_assignment VALUES( "/ban", 24 );
INSERT INTO command_group_assignment VALUES( "/ban", 23 );
INSERT INTO command_group_assignment VALUES( "/ban", 22 );
INSERT INTO command_group_assignment VALUES( "/unban", 30 );
INSERT INTO command_group_assignment VALUES( "/unban", 25 );
INSERT INTO command_group_assignment VALUES( "/unban", 24 );
INSERT INTO command_group_assignment VALUES( "/unban", 23 );
INSERT INTO command_group_assignment VALUES( "/unban", 22 );
INSERT INTO command_group_assignment VALUES( "command area", 30 );
INSERT INTO command_group_assignment VALUES( "command area", 25 );
INSERT INTO command_group_assignment VALUES( "command area", 24 );
INSERT INTO command_group_assignment VALUES( "command area", 23 );
INSERT INTO command_group_assignment VALUES( "command area", 22 );
INSERT INTO command_group_assignment VALUES( "/divorce", 30 );
INSERT INTO command_group_assignment VALUES( "/divorce", 25 );
INSERT INTO command_group_assignment VALUES( "/divorce", 24 );
INSERT INTO command_group_assignment VALUES( "/divorce", 23 );
INSERT INTO command_group_assignment VALUES( "/divorce", 22 );
INSERT INTO command_group_assignment VALUES( "/marriageinfo", 30 );
INSERT INTO command_group_assignment VALUES( "/marriageinfo", 25 );
INSERT INTO command_group_assignment VALUES( "/marriageinfo", 24 );
INSERT INTO command_group_assignment VALUES( "/marriageinfo", 23 );
INSERT INTO command_group_assignment VALUES( "/marriageinfo", 22 );
INSERT INTO command_group_assignment VALUES( "cast all spells", 30 );
INSERT INTO command_group_assignment VALUES( "cast all spells", 25 );
INSERT INTO command_group_assignment VALUES( "cast all spells", 24 );
INSERT INTO command_group_assignment VALUES( "cast all spells", 23 );
INSERT INTO command_group_assignment VALUES( "cast all spells", 22 );
INSERT INTO command_group_assignment VALUES( "/setskill", 30 );
INSERT INTO command_group_assignment VALUES( "/setskill", 25 );
INSERT INTO command_group_assignment VALUES( "/setskill", 24 );
INSERT INTO command_group_assignment VALUES( "/setskill", 23 );
INSERT INTO command_group_assignment VALUES( "/setskill", 22 );
INSERT INTO command_group_assignment VALUES( "/changename", 30 );
INSERT INTO command_group_assignment VALUES( "/changename", 25 );
INSERT INTO command_group_assignment VALUES( "/changename", 24 );
INSERT INTO command_group_assignment VALUES( "/changename", 23 );
INSERT INTO command_group_assignment VALUES( "/changename", 22 );
INSERT INTO command_group_assignment VALUES( "/changeguildname", 30 );
INSERT INTO command_group_assignment VALUES( "/changeguildname", 25 );
INSERT INTO command_group_assignment VALUES( "/changeguildname", 24 );
INSERT INTO command_group_assignment VALUES( "/changeguildname", 23 );
INSERT INTO command_group_assignment VALUES( "/changeguildname", 22 );
INSERT INTO command_group_assignment VALUES( "/changeguildleader", 30 );
INSERT INTO command_group_assignment VALUES( "/changeguildleader", 25 );
INSERT INTO command_group_assignment VALUES( "/changeguildleader", 24 );
INSERT INTO command_group_assignment VALUES( "/changeguildleader", 23 );
INSERT INTO command_group_assignment VALUES( "/changeguildleader", 22 );
INSERT INTO command_group_assignment VALUES( "/banname", 30 );
INSERT INTO command_group_assignment VALUES( "/banname", 25 );
INSERT INTO command_group_assignment VALUES( "/banname", 24 );
INSERT INTO command_group_assignment VALUES( "/banname", 23 );
INSERT INTO command_group_assignment VALUES( "/banname", 22 );
INSERT INTO command_group_assignment VALUES( "/unbanname", 30 );
INSERT INTO command_group_assignment VALUES( "/unbanname", 25 );
INSERT INTO command_group_assignment VALUES( "/unbanname", 24 );
INSERT INTO command_group_assignment VALUES( "/unbanname", 23 );
INSERT INTO command_group_assignment VALUES( "/unbanname", 22 );
INSERT INTO command_group_assignment VALUES( "/banadvisor", 30 );
INSERT INTO command_group_assignment VALUES( "/banadvisor", 25 );
INSERT INTO command_group_assignment VALUES( "/banadvisor", 24 );
INSERT INTO command_group_assignment VALUES( "/banadvisor", 23 );
INSERT INTO command_group_assignment VALUES( "/banadvisor", 22 );
INSERT INTO command_group_assignment VALUES( "/unbanadvisor", 30 );
INSERT INTO command_group_assignment VALUES( "/unbanadvisor", 25 );
INSERT INTO command_group_assignment VALUES( "/unbanadvisor", 24 );
INSERT INTO command_group_assignment VALUES( "/unbanadvisor", 23 );
INSERT INTO command_group_assignment VALUES( "/unbanadvisor", 22 );
INSERT INTO command_group_assignment VALUES( "/freeze", 30 );
INSERT INTO command_group_assignment VALUES( "/freeze", 25 );
INSERT INTO command_group_assignment VALUES( "/freeze", 24 );
INSERT INTO command_group_assignment VALUES( "/freeze", 23 );
INSERT INTO command_group_assignment VALUES( "/freeze", 22 );
INSERT INTO command_group_assignment VALUES( "/thaw", 30 );
INSERT INTO command_group_assignment VALUES( "/thaw", 25 );
INSERT INTO command_group_assignment VALUES( "/thaw", 24 );
INSERT INTO command_group_assignment VALUES( "/thaw", 23 );
INSERT INTO command_group_assignment VALUES( "/thaw", 22 );
INSERT INTO command_group_assignment VALUES( "/kick", 30 );
INSERT INTO command_group_assignment VALUES( "/kick", 25 );
INSERT INTO command_group_assignment VALUES( "/kick", 24 );
INSERT INTO command_group_assignment VALUES( "/kick", 23 );
INSERT INTO command_group_assignment VALUES( "/kick", 22 );
INSERT INTO command_group_assignment VALUES( "move others", 30 );
INSERT INTO command_group_assignment VALUES( "move others", 25 );
INSERT INTO command_group_assignment VALUES( "move others", 24 );
INSERT INTO command_group_assignment VALUES( "move others", 23 );
INSERT INTO command_group_assignment VALUES( "move others", 22 );
INSERT INTO command_group_assignment VALUES( "always login", 30 );
INSERT INTO command_group_assignment VALUES( "always login", 25 );
INSERT INTO command_group_assignment VALUES( "always login", 24 );
INSERT INTO command_group_assignment VALUES( "always login", 23 );
INSERT INTO command_group_assignment VALUES( "always login", 22 );
INSERT INTO command_group_assignment VALUES( "/setlabelcolor", 30 );
INSERT INTO command_group_assignment VALUES( "/setlabelcolor", 25 );
INSERT INTO command_group_assignment VALUES( "/setlabelcolor", 24 );
INSERT INTO command_group_assignment VALUES( "/setlabelcolor", 23 );
INSERT INTO command_group_assignment VALUES( "/setlabelcolor", 22 );
INSERT INTO command_group_assignment VALUES( "/inspect", 30 );
INSERT INTO command_group_assignment VALUES( "/inspect", 25 );
INSERT INTO command_group_assignment VALUES( "/inspect", 24 );
INSERT INTO command_group_assignment VALUES( "/inspect", 23 );
INSERT INTO command_group_assignment VALUES( "/inspect", 22 );
INSERT INTO command_group_assignment VALUES( "quest list others", 30 );
INSERT INTO command_group_assignment VALUES( "quest list others", 25 );
INSERT INTO command_group_assignment VALUES( "quest list others", 24 );
INSERT INTO command_group_assignment VALUES( "quest list others", 23 );
INSERT INTO command_group_assignment VALUES( "quest list others", 22 );
INSERT INTO command_group_assignment VALUES( "/checkitem", 30 );
INSERT INTO command_group_assignment VALUES( "/checkitem", 26 );
INSERT INTO command_group_assignment VALUES( "/checkitem", 25 );
INSERT INTO command_group_assignment VALUES( "/checkitem", 24 );
INSERT INTO command_group_assignment VALUES( "/checkitem", 23 );
INSERT INTO command_group_assignment VALUES( "/checkitem", 22 );
INSERT INTO command_group_assignment VALUES( "pickup override", 30 );
INSERT INTO command_group_assignment VALUES( "pickup override", 25 );
INSERT INTO command_group_assignment VALUES( "pickup override", 24 );
INSERT INTO command_group_assignment VALUES( "pickup override", 23 );
INSERT INTO command_group_assignment VALUES( "pickup override", 22 );
INSERT INTO command_group_assignment VALUES( "/killnpc", 30 );
INSERT INTO command_group_assignment VALUES( "/killnpc", 25 );
INSERT INTO command_group_assignment VALUES( "/killnpc", 24 );
INSERT INTO command_group_assignment VALUES( "/killnpc", 23 );
INSERT INTO command_group_assignment VALUES( "/killnpc", 22 );
INSERT INTO command_group_assignment VALUES( "rotate all", 30 );
INSERT INTO command_group_assignment VALUES( "rotate all", 25 );
INSERT INTO command_group_assignment VALUES( "rotate all", 24 );
INSERT INTO command_group_assignment VALUES( "rotate all", 23 );
INSERT INTO command_group_assignment VALUES( "rotate all", 22 );
INSERT INTO command_group_assignment VALUES( "/deputize", 30 );
INSERT INTO command_group_assignment VALUES( "/deputize", 25 );
INSERT INTO command_group_assignment VALUES( "/deputize", 24 );
INSERT INTO command_group_assignment VALUES( "/deputize", 23 );
INSERT INTO command_group_assignment VALUES( "/deputize", 22 );

# GM1 and above
INSERT INTO command_group_assignment VALUES( "view stats", 30 );
INSERT INTO command_group_assignment VALUES( "view stats", 25 );
INSERT INTO command_group_assignment VALUES( "view stats", 24 );
INSERT INTO command_group_assignment VALUES( "view stats", 23 );
INSERT INTO command_group_assignment VALUES( "view stats", 22 );
INSERT INTO command_group_assignment VALUES( "view stats", 21 );
INSERT INTO command_group_assignment VALUES( "/teleport", 30 );
INSERT INTO command_group_assignment VALUES( "/teleport", 25 );
INSERT INTO command_group_assignment VALUES( "/teleport", 24 );
INSERT INTO command_group_assignment VALUES( "/teleport", 23 );
INSERT INTO command_group_assignment VALUES( "/teleport", 22 );
INSERT INTO command_group_assignment VALUES( "/teleport", 21 );
INSERT INTO command_group_assignment VALUES( "/slide", 30 );
INSERT INTO command_group_assignment VALUES( "/slide", 25 );
INSERT INTO command_group_assignment VALUES( "/slide", 24 );
INSERT INTO command_group_assignment VALUES( "/slide", 23 );
INSERT INTO command_group_assignment VALUES( "/slide", 22 );
INSERT INTO command_group_assignment VALUES( "/slide", 21 );
INSERT INTO command_group_assignment VALUES( "/mute", 30 );
INSERT INTO command_group_assignment VALUES( "/mute", 25 );
INSERT INTO command_group_assignment VALUES( "/mute", 24 );
INSERT INTO command_group_assignment VALUES( "/mute", 23 );
INSERT INTO command_group_assignment VALUES( "/mute", 22 );
INSERT INTO command_group_assignment VALUES( "/mute", 21 );
INSERT INTO command_group_assignment VALUES( "/charlist", 30 );
INSERT INTO command_group_assignment VALUES( "/charlist", 25 );
INSERT INTO command_group_assignment VALUES( "/charlist", 24 );
INSERT INTO command_group_assignment VALUES( "/charlist", 23 );
INSERT INTO command_group_assignment VALUES( "/charlist", 22 );
INSERT INTO command_group_assignment VALUES( "/charlist", 21 );
INSERT INTO command_group_assignment VALUES( "/unmute", 30 );
INSERT INTO command_group_assignment VALUES( "/unmute", 25 );
INSERT INTO command_group_assignment VALUES( "/unmute", 24 );
INSERT INTO command_group_assignment VALUES( "/unmute", 23 );
INSERT INTO command_group_assignment VALUES( "/unmute", 22 );
INSERT INTO command_group_assignment VALUES( "/unmute", 21 );
INSERT INTO command_group_assignment VALUES( "/show_gm", 30 );
INSERT INTO command_group_assignment VALUES( "/show_gm", 25 );
INSERT INTO command_group_assignment VALUES( "/show_gm", 24 );
INSERT INTO command_group_assignment VALUES( "/show_gm", 23 );
INSERT INTO command_group_assignment VALUES( "/show_gm", 22 );
INSERT INTO command_group_assignment VALUES( "/show_gm", 21 );
INSERT INTO command_group_assignment VALUES( "/warn", 30 );
INSERT INTO command_group_assignment VALUES( "/warn", 25 );
INSERT INTO command_group_assignment VALUES( "/warn", 24 );
INSERT INTO command_group_assignment VALUES( "/warn", 23 );
INSERT INTO command_group_assignment VALUES( "/warn", 22 );
INSERT INTO command_group_assignment VALUES( "/warn", 21 );
INSERT INTO command_group_assignment VALUES( "/info", 30 );
INSERT INTO command_group_assignment VALUES( "/info", 25 );
INSERT INTO command_group_assignment VALUES( "/info", 24 );
INSERT INTO command_group_assignment VALUES( "/info", 23 );
INSERT INTO command_group_assignment VALUES( "/info", 22 );
INSERT INTO command_group_assignment VALUES( "/info", 21 );
INSERT INTO command_group_assignment VALUES( "quest notify", 30 );
INSERT INTO command_group_assignment VALUES( "quest notify", 25 );
INSERT INTO command_group_assignment VALUES( "quest notify", 24 );
INSERT INTO command_group_assignment VALUES( "quest notify", 23 );
INSERT INTO command_group_assignment VALUES( "quest notify", 22 );
INSERT INTO command_group_assignment VALUES( "quest notify", 21 );
INSERT INTO command_group_assignment VALUES( "pos extras", 30 );
INSERT INTO command_group_assignment VALUES( "pos extras", 25 );
INSERT INTO command_group_assignment VALUES( "pos extras", 24 );
INSERT INTO command_group_assignment VALUES( "pos extras", 23 );
INSERT INTO command_group_assignment VALUES( "pos extras", 22 );
INSERT INTO command_group_assignment VALUES( "pos extras", 21 );
INSERT INTO command_group_assignment VALUES( "default invincible", 30 );
INSERT INTO command_group_assignment VALUES( "default invincible", 25 );
INSERT INTO command_group_assignment VALUES( "default invincible", 24 );
INSERT INTO command_group_assignment VALUES( "default invincible", 23 );
INSERT INTO command_group_assignment VALUES( "default invincible", 22 );
INSERT INTO command_group_assignment VALUES( "default invincible", 21 );
INSERT INTO command_group_assignment VALUES( "default invisible", 30 );
INSERT INTO command_group_assignment VALUES( "default invisible", 25 );
INSERT INTO command_group_assignment VALUES( "default invisible", 24 );
INSERT INTO command_group_assignment VALUES( "default invisible", 23 );
INSERT INTO command_group_assignment VALUES( "default invisible", 22 );
INSERT INTO command_group_assignment VALUES( "default invisible", 21 );
INSERT INTO command_group_assignment VALUES( "default viewall", 30 );
INSERT INTO command_group_assignment VALUES( "default viewall", 25 );
INSERT INTO command_group_assignment VALUES( "default viewall", 24 );
INSERT INTO command_group_assignment VALUES( "default viewall", 23 );
INSERT INTO command_group_assignment VALUES( "default viewall", 22 );
INSERT INTO command_group_assignment VALUES( "default viewall", 21 );
INSERT INTO command_group_assignment VALUES( "default infinite inventory", 30 );
INSERT INTO command_group_assignment VALUES( "default infinite inventory", 25 );
INSERT INTO command_group_assignment VALUES( "default infinite inventory", 24 );
INSERT INTO command_group_assignment VALUES( "default infinite inventory", 23 );
INSERT INTO command_group_assignment VALUES( "default infinite inventory", 22 );
INSERT INTO command_group_assignment VALUES( "default infinite inventory", 21 );
INSERT INTO command_group_assignment VALUES( "default advisor", 25 );
INSERT INTO command_group_assignment VALUES( "default advisor", 24 );
INSERT INTO command_group_assignment VALUES( "default advisor", 23 );
INSERT INTO command_group_assignment VALUES( "default advisor", 22 );
INSERT INTO command_group_assignment VALUES( "default advisor", 21 );
INSERT INTO command_group_assignment VALUES( "default buddylisthide", 30 );
INSERT INTO command_group_assignment VALUES( "default buddylisthide", 25 );
INSERT INTO command_group_assignment VALUES( "default buddylisthide", 24 );
INSERT INTO command_group_assignment VALUES( "default buddylisthide", 23 );
INSERT INTO command_group_assignment VALUES( "default buddylisthide", 22 );
INSERT INTO command_group_assignment VALUES( "default buddylisthide", 21 );
INSERT INTO command_group_assignment VALUES( "/set", 30 );
INSERT INTO command_group_assignment VALUES( "/set", 25 );
INSERT INTO command_group_assignment VALUES( "/set", 24 );
INSERT INTO command_group_assignment VALUES( "/set", 23 );
INSERT INTO command_group_assignment VALUES( "/set", 22 );
INSERT INTO command_group_assignment VALUES( "/set", 21 );
INSERT INTO command_group_assignment VALUES( "/quest", 30 );
INSERT INTO command_group_assignment VALUES( "/quest", 25 );
INSERT INTO command_group_assignment VALUES( "/quest", 24 );
INSERT INTO command_group_assignment VALUES( "/quest", 23 );
INSERT INTO command_group_assignment VALUES( "/quest", 22 );
INSERT INTO command_group_assignment VALUES( "/quest", 21 );
INSERT INTO command_group_assignment VALUES( "/listwarnings", 30 );
INSERT INTO command_group_assignment VALUES( "/listwarnings", 25 );
INSERT INTO command_group_assignment VALUES( "/listwarnings", 24 );
INSERT INTO command_group_assignment VALUES( "/listwarnings", 23 );
INSERT INTO command_group_assignment VALUES( "/listwarnings", 22 );
INSERT INTO command_group_assignment VALUES( "/listwarnings", 21 );
INSERT INTO command_group_assignment VALUES( "/targetname", 30 );
INSERT INTO command_group_assignment VALUES( "/targetname", 25 );
INSERT INTO command_group_assignment VALUES( "/targetname", 24 );
INSERT INTO command_group_assignment VALUES( "/targetname", 23 );
INSERT INTO command_group_assignment VALUES( "/targetname", 22 );
INSERT INTO command_group_assignment VALUES( "/targetname", 21 );
INSERT INTO command_group_assignment VALUES( "/list", 30 );
INSERT INTO command_group_assignment VALUES( "/list", 25 );
INSERT INTO command_group_assignment VALUES( "/list", 24 );
INSERT INTO command_group_assignment VALUES( "/list", 23 );
INSERT INTO command_group_assignment VALUES( "/list", 22 );
INSERT INTO command_group_assignment VALUES( "/list", 21 );

# testers group
INSERT INTO command_group_assignment VALUES( "/slide", 10 );
INSERT INTO command_group_assignment VALUES( "/teleport", 10 );
INSERT INTO command_group_assignment VALUES( "/set", 10 );
INSERT INTO command_group_assignment VALUES( "quest notify", 10 );
INSERT INTO command_group_assignment VALUES( "pos extras", 10 );
INSERT INTO command_group_assignment VALUES( "default buddylisthide", 10 );

# everyone
INSERT INTO command_group_assignment VALUES( "/petition", 30 );
INSERT INTO command_group_assignment VALUES( "/petition", 25 );
INSERT INTO command_group_assignment VALUES( "/petition", 24 );
INSERT INTO command_group_assignment VALUES( "/petition", 23 );
INSERT INTO command_group_assignment VALUES( "/petition", 22 );
INSERT INTO command_group_assignment VALUES( "/petition", 21 );
INSERT INTO command_group_assignment VALUES( "/petition", 10 );
INSERT INTO command_group_assignment VALUES( "/petition", 0 );
