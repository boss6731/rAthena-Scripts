-- Table structures for the Dungeon Quest Service --

CREATE TABLE `dqs_quest` (
 `dg_id` int(10) unsigned NOT NULL,
 `quest_id` int(10) unsigned default '2',
 `quest_name` varchar(255) default 'Unnamed',
 `quest_type` tinyint(3) unsigned default '1',
 `mob_id` int(10) unsigned default '0',
 `mob_am` int(12) unsigned default '0',
 `item_id` int(10) unsigned default '0',
 `item_am` int(10) unsigned default '0',
 `reward_id` int(10) unsigned default '0',
 `reward_am` int(10) unsigned default '0',
 `reward_exptype` int(10) unsigned default '0',
 `reward_bexp` int(10) unsigned default '0',
 `reward_jexp` int(10) unsigned default '0'
 ) ENGINE=MyISAM;
 
CREATE TABLE `dqs_party` (
  `dg_id` int(10) UNSIGNED DEFAULT NULL,
  `pty_id` int(10) UNSIGNED DEFAULT '0',
  `char_id` int(10) UNSIGNED DEFAULT '0',
  `start` int(10) UNSIGNED DEFAULT '1',
  `map` varchar(255) DEFAULT NULL,
  `quest_id` int(10) UNSIGNED NOT NULL,
  `mob_id` int(10) UNSIGNED DEFAULT '0',
  `mob_am` int(12) UNSIGNED DEFAULT '0',
  `req_am` int(12) UNSIGNED DEFAULT '0',
  `complete` tinyint(3) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
 
CREATE TABLE `dqs_dungeon` (
  `dg_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT 'Unknown Dungeon',
  `difficulty` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `req_level` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `pty_limit` int(5) UNSIGNED DEFAULT NULL,
  `mob_clear` int(10) UNSIGNED DEFAULT '10',
  `floor` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `map_name` varchar(255) DEFAULT '',
  `map_x` int(10) UNSIGNED DEFAULT NULL,
  `map_y` int(10) UNSIGNED DEFAULT NULL,
  `repeat` int(5) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT '2',
  `renewal` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `dqs_pending` (
  `char_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED DEFAULT '501',
  `item_am` int(10) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- == Structure of mob_map_db== --
CREATE TABLE `mob_map_db` (
  `mob_id` int(10) NOT NULL,
  `map` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- == Structure of dqs_shop == --
CREATE TABLE `dqs_shop` (
  `type` tinyint(3) NOT NULL,
  `item_id` int(10) NOT NULL,
  `item_price` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
	
-- === Dungeon Data for the Dungeon Quest Service ===
INSERT INTO `dqs_dungeon` (`dg_id`, `name`, `difficulty`, `req_level`, `pty_limit`, `floor`, `mob_clear`, `map_name`, `map_x`, `map_y`, `repeat`, `status`, `renewal`) VALUES
(1, 'Abyss Lakes', 3, 70, 3, 1, 20, 'abyss_01', 261, 272, 3, 2, 1),
(1, 'Abyss Lakes', 3, 70, 3, 2, 20, 'abyss_02', 275, 270, 3, 2, 1),
(1, 'Abyss Lakes', 3, 70, 3, 3, 20, 'abyss_03', 116, 27, 3, 2, 1),
(2, 'Amatsu Dungeon', 2, 50, 3, 1, 20, 'ama_dun01', 228, 11, 3, 2, 1),
(2, 'Amatsu Dungeon', 2, 50, 3, 2, 20, 'ama_dun02', 34, 41, 3, 2, 1),
(2, 'Amatsu Dungeon', 2, 50, 3, 3, 20, 'ama_dun03', 119, 14, 3, 2, 1),
(3, 'Anthell', 1, 10, 3, 1, 20, 'anthell01', 35, 262, 3, 2, 1),
(3, 'Anthell', 1, 10, 3, 2, 20, 'anthell02', 168, 170, 3, 2, 1),
(4, 'Ayothaya Dungeon', 3, 60, 3, 1, 20, 'ayo_dun01', 275, 19, 3, 2, 1),
(4, 'Ayothaya Dungeon', 3, 60, 3, 2, 20, 'ayo_dun02', 24, 26, 3, 2, 1),
(5, 'Bio Labratory', 3, 70, 3, 1, 20, 'lhz_dun01', 150, 288, 3, 2, 1),
(5, 'Bio Labratory', 3, 70, 3, 2, 20, 'lhz_dun02', 150, 18, 3, 2, 1),
(5, 'Bio Labratory', 3, 70, 3, 3, 20, 'lhz_dun03', 140, 134, 3, 2, 1),
(5, 'Bio Labratory', 3, 110, 3, 4, 20, 'lhz_dun04', 244, 52, 3, 2, 3),
(6, 'Brasilis Dungeon', 3, 70, 3, 1, 20, 'bra_dun01', 87, 47, 3, 2, 3),
(6, 'Brasilis Dungeon', 3, 70, 3, 2, 20, 'bra_dun02', 262, 262, 3, 2, 3),
(7, 'Byalan Dungeon', 2, 45, 3, 1, 20, 'iz_dun00', 168, 168, 3, 2, 1),
(7, 'Byalan Dungeon', 2, 45, 3, 2, 20, 'iz_dun01', 253, 252, 3, 2, 1),
(7, 'Byalan Dungeon', 2, 45, 3, 3, 20, 'iz_dun02', 236, 204, 3, 2, 1),
(7, 'Byalan Dungeon', 2, 45, 3, 4, 20, 'iz_dun03', 32, 63, 3, 2, 1),
(7, 'Byalan Dungeon', 2, 55, 3, 5, 20, 'iz_dun04', 26, 27, 3, 2, 1),
(7, 'Byalan Dungeon', 3, 115, 3, 6, 20, 'iz_dun05', 141, 187, 3, 2, 3),
(8, 'Clock Tower', 2, 50, 3, 1, 20, 'c_tower1', 199, 159, 3, 2, 1),
(8, 'Clock Tower', 2, 50, 3, 2, 20, 'c_tower2', 148, 283, 3, 2, 1),
(8, 'Clock Tower', 2, 50, 3, 3, 20, 'c_tower3', 65, 147, 3, 2, 1),
(8, 'Clock Tower', 2, 50, 3, 4, 20, 'c_tower4', 56, 155, 3, 2, 1),
(9, 'Aldebaran Dungeon', 2, 65, 3, 1, 20, 'alde_dun01', 297, 25, 3, 2, 1),
(9, 'Aldebaran Dungeon', 2, 65, 3, 2, 20, 'alde_dun02', 127, 169, 3, 2, 1),
(9, 'Aldebaran Dungeon', 2, 65, 3, 3, 20, 'alde_dun03', 277, 178, 3, 2, 1),
(9, 'Aldebaran Dungeon', 2, 65, 3, 4, 20, 'alde_dun04', 268, 74, 3, 2, 1),
(10, 'Coal Mines', 2, 50, 3, 1, 20, 'mjo_dun01', 52, 17, 3, 2, 1),
(10, 'Coal Mines', 2, 50, 3, 2, 20, 'mjo_dun02', 381, 343, 3, 2, 1),
(10, 'Coal Mines', 2, 50, 3, 3, 20, 'mjo_dun03', 302, 262, 3, 2, 1),
(11, 'Prontera Culvert', 1, 15, 3, 1, 20, 'prt_sewb1', 131, 247, 3, 2, 1),
(11, 'Prontera Culvert', 1, 15, 3, 2, 20, 'prt_sewb2', 19, 19, 3, 2, 1),
(11, 'Prontera Culvert', 1, 15, 3, 3, 20, 'prt_sewb3', 180, 169, 3, 2, 1),
(11, 'Prontera Culvert', 1, 15, 3, 4, 20, 'prt_sewb4', 100, 92, 3, 2, 1),
(12, 'Cursed Abbey', 3, 70, 3, 1, 20, 'abbey01', 51, 14, 3, 2, 1),
(12, 'Cursed Abbey', 3, 70, 3, 2, 20, 'abbey02', 150, 11, 3, 2, 1),
(12, 'Cursed Abbey', 3, 70, 3, 3, 20, 'abbey03', 120, 10, 3, 2, 1),
(13, 'Dewata Dungeon', 3, 90, 3, 1, 20, 'dew_dun01', 285, 160, 3, 2, 3),
(13, 'Dewata Dungeon', 3, 90, 3, 2, 20, 'dew_dun02', 299, 29, 3, 2, 3),
(14, 'Einbroch Dungeon', 2, 55, 3, 1, 20, 'ein_dun01', 22, 14, 3, 2, 1),
(14, 'Einbroch Dungeon', 2, 55, 3, 2, 20, 'ein_dun02', 292, 290, 3, 2, 1),
(15, 'Gefenia', 3, 70, 3, 1, 20, 'gefenia01', 40, 103, 3, 2, 1),
(15, 'Gefenia', 3, 70, 3, 2, 20, 'gefenia02', 203, 34, 3, 2, 1),
(15, 'Gefenia', 3, 70, 3, 3, 20, 'gefenia03', 266, 168, 3, 2, 1),
(15, 'Gefenia', 3, 70, 3, 4, 20, 'gefenia04', 130, 272, 3, 2, 1),
(16, 'Geffen Dungeon', 2, 60, 3, 1, 20, 'gef_dun00', 104, 99, 3, 2, 1),
(16, 'Geffen Dungeon', 2, 60, 3, 2, 20, 'gef_dun01', 115, 236, 3, 2, 1),
(16, 'Geffen Dungeon', 2, 60, 3, 3, 20, 'gef_dun02', 106, 132, 3, 2, 1),
(17, 'Glastheim Castle', 2, 60, 3, 1, 20, 'gl_cas01', 199, 29, 3, 2, 1),
(17, 'Glastheim Castle', 2, 60, 3, 2, 20, 'gl_cas02', 104, 25, 3, 2, 1),
(17, 'Glastheim Chivalry', 2, 60, 3, 1, 20, 'gl_knt01', 150, 15, 3, 2, 1),
(17, 'Glastheim Chivalry', 2, 60, 3, 2, 20, 'gl_knt02', 157, 287, 3, 2, 1),
(17, 'Glastheim Church', 2, 60, 3, 1, 20, 'gl_church', 156, 7, 3, 2, 1),
(17, 'Glastheim Church', 2, 60, 3, 2, 20, 'gl_chyard', 147, 15, 3, 2, 1),
(17, 'Glastheim Culvert', 2, 60, 3, 1, 20, 'gl_step', 12, 7, 3, 2, 1),
(17, 'Glastheim Culvert', 2, 60, 3, 2, 20, 'gl_sew01', 258, 255, 3, 2, 1),
(17, 'Glastheim Culvert', 2, 60, 3, 3, 20, 'gl_sew02', 108, 291, 3, 2, 1),
(17, 'Glastheim Culvert', 2, 60, 3, 4, 20, 'gl_sew03', 171, 283, 3, 2, 1),
(17, 'Glastheim Culvert', 2, 60, 3, 5, 20, 'gl_sew04', 68, 277, 3, 2, 1),
(17, 'Glastheim Cave', 2, 60, 3, 1, 20, 'gl_dun01', 133, 271, 3, 2, 1),
(17, 'Glastheim Cave', 2, 60, 3, 2, 20, 'gl_dun02', 224, 274, 3, 2, 1),
(17, 'Glastheim Prison', 2, 60, 3, 1, 20, 'gl_prison', 14, 70, 3, 2, 1),
(17, 'Glastheim Prison', 2, 60, 3, 2, 20, 'gl_prison1', 150, 14, 3, 2, 1),
(18, 'Gonryun Dungeon', 2, 75, 3, 1, 20, 'gon_dun01', 153, 53, 3, 2, 1),
(18, 'Gonryun Dungeon', 2, 75, 3, 2, 20, 'gon_dun02', 28, 113, 3, 2, 1),
(18, 'Gonryun Dungeon', 2, 75, 3, 3, 20, 'gon_dun03', 68, 16, 3, 2, 1),
(19, 'Hidden Dungeon', 2, 55, 3, 1, 20, 'prt_maze01', 176, 7, 3, 2, 1),
(19, 'Hidden Dungeon', 2, 55, 3, 2, 20, 'prt_maze02', 93, 20, 3, 2, 1),
(19, 'Hidden Dungeon', 2, 55, 3, 3, 20, 'prt_maze03', 23, 8, 3, 2, 1),
(20, 'Ice Dungeon', 2, 65, 3, 1, 20, 'ice_dun01', 157, 14, 3, 2, 1),
(20, 'Ice Dungeon', 2, 65, 3, 2, 20, 'ice_dun02', 151, 155, 3, 2, 1),
(20, 'Ice Dungeon', 2, 65, 3, 3, 20, 'ice_dun03', 149, 22, 3, 2, 1),
(20, 'Ice Dungeon', 2, 65, 3, 4, 20, 'ice_dun04', 33, 158, 3, 2, 1),
(21, 'Juperos', 3, 75, 3, 1, 0, 'jupe_cave', 140, 51, 3, 2, 1),
(21, 'Juperos', 3, 75, 3, 2, 20, 'juperos_01', 53, 247, 3, 2, 1),
(21, 'Juperos', 3, 75, 3, 3, 20, 'juperos_02', 37, 63, 3, 2, 1),
(21, 'Juperos', 3, 75, 3, 4, 20, 'jupe_core', 150, 285, 3, 2, 1),
(22, 'Kiel Dungeon', 3, 75, 3, 1, 20, 'kh_dun01', 28, 226, 3, 2, 1),
(22, 'Kiel Dungeon', 3, 75, 3, 2, 20, 'kh_dun02', 41, 198, 3, 2, 1),
(23, 'Louyang Dungeon', 2, 60, 3, 1, 20, 'lou_dun01', 218, 196, 3, 2, 1),
(23, 'Louyang Dungeon', 2, 60, 3, 2, 20, 'lou_dun02', 282, 20, 3, 2, 1),
(23, 'Louyang Dungeon', 2, 60, 3, 3, 20, 'lou_dun03', 165, 38, 3, 2, 1),
(24, 'Magma Dungeon', 2, 60, 3, 1, 20, 'mag_dun01', 126, 68, 3, 2, 1),
(24, 'Magma Dungeon', 2, 60, 3, 2, 20, 'mag_dun02', 47, 30, 3, 2, 1),
(25, 'Malangdo Dungeon', 1, 50, 3, 1, 20, 'mal_dun01', 33, 230, 3, 2, 3),
(26, 'Moscovia Dungeon', 3, 80, 3, 1, 20, 'mosk_dun01', 189, 48, 3, 2, 1),
(26, 'Moscovia Dungeon', 3, 80, 3, 2, 20, 'mosk_dun02', 165, 30, 3, 2, 1),
(26, 'Moscovia Dungeon', 3, 80, 3, 3, 20, 'mosk_dun03', 32, 135, 3, 2, 1),
(27, 'Nidhoggs Dungeon', 3, 90, 3, 1, 20, 'nyd_dun01', 61, 239, 3, 2, 1),
(28, 'Odin Temple', 3, 90, 3, 1, 20, 'odin_tem01', 298, 167, 3, 2, 1),
(28, 'Odin Temple', 3, 90, 3, 2, 20, 'odin_tem02', 224, 149, 3, 2, 1),
(28, 'Odin Temple', 3, 90, 3, 3, 20, 'odin_tem03', 266, 280, 3, 2, 1),
(29, 'Orc Dungeon', 1, 45, 3, 1, 20, 'orcsdun01', 32, 170, 3, 2, 1),
(29, 'Orc Dungeon', 1, 45, 3, 2, 20, 'orcsdun02', 21, 185, 3, 2, 1),
(30, 'Payon Dungeon', 2, 15, 3, 1, 20, 'pay_dun00', 21, 183, 3, 2, 1),
(30, 'Payon Dungeon', 2, 15, 3, 2, 20, 'pay_dun01', 19, 33, 3, 2, 1),
(30, 'Payon Dungeon', 2, 15, 3, 3, 20, 'pay_dun02', 19, 63, 3, 2, 1),
(30, 'Payon Dungeon', 2, 15, 3, 4, 20, 'pay_dun03', 155, 159, 3, 2, 1),
(30, 'Payon Dungeon', 2, 15, 3, 5, 20, 'pay_dun04', 201, 204, 3, 2, 1),
(31, 'Pyramid', 2, 55, 3, 1, 20, 'moc_pryd01', 192, 9, 3, 2, 1),
(31, 'Pyramid', 2, 55, 3, 2, 20, 'moc_pryd02', 10, 192, 3, 2, 1),
(31, 'Pyramid', 2, 55, 3, 3, 20, 'moc_pryd03', 100, 92, 3, 2, 1),
(31, 'Pyramid', 2, 55, 3, 4, 20, 'moc_pryd04', 181, 11, 3, 2, 1),
(32, 'Pyramid Basement', 2, 55, 3, 1, 20, 'moc_pryd05', 94, 96, 3, 2, 1),
(32, 'Pyramid Basement', 2, 55, 3, 2, 20, 'moc_pryd06', 192, 8, 3, 2, 1),
(32, 'Pyramid Base Nightmare', 3, 55, 3, 3, 20, 'moc_prydn1', 94, 96, 3, 2, 3),
(32, 'Pyramid Base Nightmare', 3, 55, 3, 4, 20, 'moc_prydn2', 192, 8, 3, 2, 3),
(33, 'Rachel Sanctuary', 3, 65, 3, 1, 20, 'ra_san01', 140, 11, 3, 2, 1),
(33, 'Rachel Sanctuary', 3, 65, 3, 2, 20, 'ra_san02', 32, 21, 3, 2, 1),
(33, 'Rachel Sanctuary', 3, 65, 3, 3, 20, 'ra_san03', 8, 149, 3, 2, 1),
(33, 'Rachel Sanctuary', 3, 65, 3, 4, 20, 'ra_san04', 204, 218, 3, 2, 1),
(33, 'Rachel Sanctuary', 3, 65, 3, 5, 20, 'ra_san05', 150, 9, 3, 2, 1),
(34, 'Scaraba Hole', 3, 90, 3, 1, 20, 'dic_dun01', 364, 44, 3, 2, 3),
(34, 'Scaraba Hole', 3, 90, 3, 2, 20, 'dic_dun02', 101, 141, 3, 2, 3),
(35, 'Sphinx', 2, 60, 3, 1, 20, 'in_sphinx1', 288, 9, 3, 2, 1),
(35, 'Sphinx', 2, 60, 3, 2, 20, 'in_sphinx2', 149, 81, 3, 2, 1),
(35, 'Sphinx', 2, 60, 3, 3, 20, 'in_sphinx3', 210, 54, 3, 2, 1),
(35, 'Sphinx', 2, 60, 3, 4, 20, 'in_sphinx4', 10, 222, 3, 2, 1),
(35, 'Sphinx', 2, 60, 3, 5, 20, 'in_sphinx5', 100, 99, 3, 2, 1),
(36, 'Sunken Ship', 1, 40, 3, 1, 20, 'treasure01', 69, 24, 3, 2, 1),
(36, 'Sunken Ship', 1, 40, 3, 2, 20, 'treasure02', 102, 27, 3, 2, 1),
(37, 'Thanatos Tower', 3, 70, 3, 1, 20, 'tha_t01', 150, 39, 3, 2, 1),
(37, 'Thanatos Tower', 3, 70, 3, 2, 20, 'tha_t02', 150, 136, 3, 2, 1),
(37, 'Thanatos Tower', 3, 70, 3, 3, 20, 'tha_t03', 220, 158, 3, 2, 1),
(37, 'Thanatos Tower', 3, 70, 3, 4, 20, 'tha_t04', 59, 143, 3, 2, 1),
(37, 'Thanatos Tower', 3, 70, 3, 5, 20, 'tha_t05', 62, 11, 3, 2, 1),
(37, 'Thanatos Tower', 3, 70, 3, 6, 20, 'tha_t06', 89, 221, 3, 2, 1),
(37, 'Thanatos Tower', 3, 70, 3, 7, 20, 'tha_t07', 35, 166, 3, 2, 1),
(37, 'Thanatos Tower', 3, 70, 3, 8, 20, 'tha_t08', 93, 148, 3, 2, 1),
(37, 'Thanatos Tower', 3, 70, 3, 9, 20, 'tha_t09', 29, 107, 3, 2, 1),
(37, 'Thanatos Tower', 3, 70, 3, 10, 20, 'tha_t10', 159, 138, 3, 2, 1),
(37, 'Thanatos Tower', 3, 70, 3, 11, 20, 'tha_t11', 19, 20, 3, 2, 1),
(37, 'Thanatos Tower', 3, 70, 3, 12, 20, 'tha_t12', 130, 52, 3, 2, 1),
(38, 'Thor Volcano', 3, 75, 3, 1, 20, 'thor_v01', 21, 228, 3, 2, 1),
(38, 'Thor Volcano', 3, 75, 3, 2, 20, 'thor_v02', 75, 205, 3, 2, 1),
(38, 'Thor Volcano', 3, 75, 3, 3, 20, 'thor_v03', 34, 272, 3, 2, 1),
(39, 'Toy Factory', 2, 45, 3, 1, 20, 'xmas_dun01', 205, 15, 3, 2, 1),
(39, 'Toy Factory', 2, 45, 3, 2, 20, 'xmas_dun02', 129, 133, 3, 2, 1),
(40, 'Turtle Dungeon', 2, 55, 3, 1, 20, 'tur_dun01', 154, 49, 3, 2, 1),
(40, 'Turtle Dungeon', 2, 55, 3, 2, 20, 'tur_dun02', 148, 261, 3, 2, 1),
(40, 'Turtle Dungeon', 2, 55, 3, 3, 20, 'tur_dun03', 132, 189, 3, 2, 1),
(40, 'Turtle Dungeon', 2, 55, 3, 4, 20, 'tur_dun04', 100, 192, 3, 2, 1),
(41, 'Bifrost Tower', 3, 90, 3, 1, 20, 'ecl_tdun01', 57, 13, 3, 2, 3),
(41, 'Bifrost Tower', 3, 90, 3, 2, 20, 'ecl_tdun02', 64, 88, 3, 2, 3),
(41, 'Bifrost Tower', 3, 90, 3, 3, 20, 'ecl_tdun03', 45, 14, 3, 2, 3);

-- == mob_map_db Data === --
INSERT INTO `mob_map_db` (`mob_id`, `map`) VALUES
(1714, 'abyss_01'),
(1717, 'abyss_01'),
(1715, 'abyss_01'),
(1216, 'abyss_01'),
(1699, 'abyss_01'),
(1721, 'abyss_01'),
(1191, 'abyss_01'),
(1718, 'abyss_01'),
(1716, 'abyss_02'),
(1714, 'abyss_02'),
(1715, 'abyss_02'),
(1699, 'abyss_02'),
(1721, 'abyss_02'),
(1191, 'abyss_02'),
(1713, 'abyss_02'),
(1718, 'abyss_02'),
(1191, 'abyss_03'),
(1713, 'abyss_03'),
(1721, 'abyss_03'),
(1717, 'abyss_03'),
(1716, 'abyss_03'),
(1699, 'abyss_03'),
(1714, 'abyss_03'),
(2912, 'abyss_03'),
(1720, 'abyss_03'),
(1758, 'abyss_03'),
(1756, 'abyss_03'),
(1719, 'abyss_03'),
(1866, 'abbey01'),
(1036, 'nameless_n'),
(1866, 'nameless_n'),
(1869, 'nameless_n'),
(1867, 'nameless_n'),
(1864, 'nameless_n'),
(1865, 'nameless_n'),
(1036, 'abbey01'),
(1867, 'abbey01'),
(1869, 'abbey01'),
(1864, 'abbey01'),
(1865, 'abbey01'),
(1864, 'abbey02'),
(1865, 'abbey02'),
(1870, 'abbey02'),
(1869, 'abbey02'),
(1868, 'abbey02'),
(1871, 'abbey02'),
(1870, 'abbey03'),
(1867, 'abbey03'),
(1869, 'abbey03'),
(1011, 'abbey03'),
(1872, 'abbey03'),
(1864, 'abbey03'),
(1873, 'abbey03'),
(1682, 'lhz_dun01'),
(1657, 'lhz_dun01'),
(1652, 'lhz_dun01'),
(1613, 'lhz_dun01'),
(1627, 'lhz_dun01'),
(1653, 'lhz_dun01'),
(1655, 'lhz_dun01'),
(1657, 'lhz_dun02'),
(1653, 'lhz_dun02'),
(1654, 'lhz_dun02'),
(1655, 'lhz_dun02'),
(1652, 'lhz_dun02'),
(2692, 'lhz_dun02'),
(1656, 'lhz_dun02'),
(1682, 'lhz_dun02'),
(1635, 'lhz_dun02'),
(1681, 'lhz_dun02'),
(1658, 'lhz_dun02'),
(1636, 'lhz_dun03'),
(1637, 'lhz_dun03'),
(1634, 'lhz_dun03'),
(1639, 'lhz_dun03'),
(1645, 'lhz_dun03'),
(1643, 'lhz_dun03'),
(1638, 'lhz_dun03'),
(1640, 'lhz_dun03'),
(1641, 'lhz_dun03'),
(1644, 'lhz_dun03'),
(1642, 'lhz_dun03'),
(1635, 'lhz_dun03'),
(2667, 'lhz_dun03'),
(2224, 'lhz_dun04'),
(2223, 'lhz_dun04'),
(2875, 'lhz_dun04'),
(2222, 'lhz_dun04'),
(2225, 'lhz_dun04'),
(2227, 'lhz_dun04'),
(2221, 'lhz_dun04'),
(2231, 'lhz_dun04'),
(2226, 'lhz_dun04'),
(2230, 'lhz_dun04'),
(1404, 'ama_dun01'),
(1403, 'ama_dun01'),
(1403, 'ama_dun02'),
(2704, 'ama_dun02'),
(1402, 'ama_dun02'),
(1129, 'ama_dun02'),
(1375, 'ama_dun02'),
(1401, 'ama_dun02'),
(1404, 'ama_dun02'),
(1401, 'ama_dun03'),
(1405, 'ama_dun03'),
(1191, 'ama_dun03'),
(1404, 'ama_dun03'),
(1403, 'ama_dun03'),
(1375, 'ama_dun03'),
(1492, 'ama_dun03'),
(1160, 'anthell01'),
(1097, 'anthell01'),
(1105, 'anthell01'),
(1005, 'anthell01'),
(1095, 'anthell01'),
(1121, 'anthell01'),
(1176, 'anthell01'),
(1176, 'anthell02'),
(1121, 'anthell02'),
(1105, 'anthell02'),
(1160, 'anthell02'),
(1095, 'anthell02'),
(1097, 'anthell02'),
(1005, 'anthell02'),
(2902, 'anthell02'),
(1194, 'anthell02'),
(1147, 'anthell02'),
(1586, 'ayo_dun01'),
(1036, 'ayo_dun01'),
(1179, 'ayo_dun01'),
(1587, 'ayo_dun01'),
(1584, 'ayo_dun02'),
(1587, 'ayo_dun02'),
(1688, 'ayo_dun02'),
(1148, 'beach_dun'),
(1255, 'beach_dun'),
(1256, 'beach_dun'),
(1583, 'beach_dun'),
(1278, 'beach_dun2'),
(1274, 'beach_dun2'),
(1279, 'beach_dun2'),
(1068, 'beach_dun2'),
(1255, 'beach_dun2'),
(1034, 'beach_dun3'),
(1064, 'beach_dun3'),
(1068, 'beach_dun3'),
(1255, 'beach_dun3'),
(2366, 'ecl_tdun01'),
(2367, 'ecl_tdun01'),
(2365, 'ecl_tdun01'),
(2874, 'ecl_tdun01'),
(2366, 'ecl_tdun02'),
(2368, 'ecl_tdun02'),
(2365, 'ecl_tdun02'),
(2367, 'ecl_tdun02'),
(2898, 'ecl_tdun02'),
(2370, 'ecl_tdun03'),
(2366, 'ecl_tdun03'),
(2369, 'ecl_tdun03'),
(2365, 'ecl_tdun03'),
(2371, 'ecl_tdun03'),
(2367, 'ecl_tdun03'),
(2368, 'ecl_tdun03'),
(2897, 'ecl_tdun03'),
(2070, 'bra_dun01'),
(1141, 'bra_dun01'),
(2069, 'bra_dun01'),
(1161, 'bra_dun01'),
(1068, 'bra_dun01'),
(1070, 'bra_dun01'),
(2069, 'bra_dun02'),
(1070, 'bra_dun02'),
(1161, 'bra_dun02'),
(2070, 'bra_dun02'),
(1068, 'bra_dun02'),
(2795, 'bra_dun02'),
(1141, 'bra_dun02'),
(2082, 'bra_dun02'),
(2068, 'bra_dun02'),
(1083, 'bra_dun02'),
(1161, 'iz_dun00'),
(1141, 'iz_dun00'),
(1068, 'iz_dun00'),
(1066, 'iz_dun00'),
(1070, 'iz_dun00'),
(1066, 'iz_dun01'),
(1070, 'iz_dun01'),
(1067, 'iz_dun01'),
(1068, 'iz_dun01'),
(1141, 'iz_dun01'),
(1161, 'iz_dun01'),
(2628, 'iz_dun01'),
(1068, 'iz_dun02'),
(1144, 'iz_dun02'),
(1067, 'iz_dun02'),
(1044, 'iz_dun02'),
(1142, 'iz_dun03'),
(1045, 'iz_dun03'),
(1069, 'iz_dun03'),
(1264, 'iz_dun03'),
(1158, 'iz_dun03'),
(1068, 'iz_dun03'),
(1065, 'iz_dun04'),
(1069, 'iz_dun04'),
(1264, 'iz_dun04'),
(1108, 'iz_dun04'),
(2757, 'iz_dun04'),
(1068, 'iz_dun04'),
(1142, 'iz_dun04'),
(2198, 'iz_dun05'),
(2204, 'iz_dun05'),
(2201, 'iz_dun05'),
(2203, 'iz_dun05'),
(2206, 'iz_dun05'),
(2202, 'iz_dun05'),
(2669, 'iz_dun05'),
(1199, 'c_tower1'),
(1195, 'c_tower1'),
(1199, 'c_tower2'),
(1269, 'c_tower2'),
(1195, 'c_tower2'),
(2871, 'c_tower2'),
(1191, 'c_tower2'),
(1270, 'c_tower2'),
(1193, 'c_tower3'),
(1191, 'c_tower3'),
(1269, 'c_tower4'),
(1193, 'c_tower4'),
(1320, 'c_tower4'),
(1195, 'c_tower4'),
(1191, 'c_tower4'),
(1270, 'c_tower4'),
(2870, 'c_tower4'),
(1377, 'c_tower4'),
(1179, 'c_tower4'),
(1194, 'alde_dun01'),
(1111, 'alde_dun01'),
(2894, 'alde_dun01'),
(1194, 'alde_dun02'),
(1213, 'alde_dun02'),
(1189, 'alde_dun02'),
(1211, 'alde_dun02'),
(1209, 'alde_dun03'),
(1216, 'alde_dun03'),
(1111, 'alde_dun03'),
(1102, 'alde_dun04'),
(1179, 'alde_dun04'),
(1131, 'alde_dun04'),
(1145, 'mjo_dun01'),
(1005, 'mjo_dun01'),
(1175, 'mjo_dun01'),
(1145, 'mjo_dun02'),
(1121, 'mjo_dun02'),
(1169, 'mjo_dun02'),
(1111, 'mjo_dun02'),
(1169, 'mjo_dun03'),
(1145, 'mjo_dun03'),
(1151, 'mjo_dun03'),
(1048, 'prt_sewb1'),
(2833, 'prt_sewb1'),
(1005, 'prt_sewb1'),
(1175, 'prt_sewb1'),
(1051, 'prt_sewb1'),
(1175, 'prt_sewb2'),
(1051, 'prt_sewb2'),
(1053, 'prt_sewb2'),
(1005, 'prt_sewb2'),
(1048, 'prt_sewb2'),
(1014, 'prt_sewb2'),
(1161, 'prt_sewb2'),
(1054, 'prt_sewb3'),
(1053, 'prt_sewb3'),
(1077, 'prt_sewb3'),
(1005, 'prt_sewb3'),
(1175, 'prt_sewb3'),
(1048, 'prt_sewb3'),
(1054, 'prt_sewb4'),
(1051, 'prt_sewb4'),
(1053, 'prt_sewb4'),
(1111, 'prt_sewb4'),
(1048, 'prt_sewb4'),
(1209, 'prt_sewb4'),
(1086, 'prt_sewb4'),
(2603, 'abbey02'),
(1874, 'abbey03'),
(1305, 'dew_dun01'),
(2152, 'dew_dun01'),
(2867, 'dew_dun01'),
(1311, 'dew_dun01'),
(2154, 'dew_dun01'),
(2157, 'dew_dun01'),
(2156, 'dew_dun01'),
(1099, 'dew_dun01'),
(2155, 'dew_dun02'),
(1301, 'dew_dun02'),
(1309, 'dew_dun02'),
(2154, 'dew_dun02'),
(2888, 'dew_dun02'),
(1619, 'ein_dun01'),
(1621, 'ein_dun01'),
(1616, 'ein_dun01'),
(1620, 'ein_dun01'),
(1617, 'ein_dun01'),
(1618, 'ein_dun01'),
(1614, 'ein_dun02'),
(1622, 'ein_dun02'),
(2750, 'ein_dun02'),
(1617, 'ein_dun02'),
(1615, 'ein_dun02'),
(1623, 'ein_dun02'),
(1371, 'gefenia01'),
(1292, 'gefenia01'),
(2834, 'gefenia01'),
(1132, 'gefenia01'),
(1219, 'gefenia01'),
(1390, 'gefenia01'),
(1374, 'gefenia01'),
(1268, 'gefenia01'),
(1205, 'gefenia01'),
(1370, 'gefenia01'),
(1371, 'gefenia02'),
(1390, 'gefenia02'),
(1219, 'gefenia02'),
(1292, 'gefenia02'),
(1374, 'gefenia02'),
(1109, 'gefenia02'),
(1370, 'gefenia02'),
(1204, 'gefenia02'),
(1268, 'gefenia02'),
(2623, 'gefenia02'),
(1132, 'gefenia02'),
(1292, 'gefenia03'),
(1371, 'gefenia03'),
(1219, 'gefenia03'),
(1390, 'gefenia03'),
(1109, 'gefenia03'),
(1374, 'gefenia03'),
(1370, 'gefenia03'),
(1205, 'gefenia03'),
(1132, 'gefenia03'),
(1374, 'gefenia04'),
(1390, 'gefenia04'),
(1371, 'gefenia04'),
(1292, 'gefenia04'),
(1219, 'gefenia04'),
(1370, 'gefenia04'),
(1203, 'gefenia04'),
(1268, 'gefenia04'),
(1035, 'gef_dun00'),
(1031, 'gef_dun00'),
(1077, 'gef_dun00'),
(2797, 'gef_dun00'),
(1130, 'gef_dun01'),
(1015, 'gef_dun01'),
(1061, 'gef_dun01'),
(1036, 'gef_dun01'),
(1111, 'gef_dun01'),
(2823, 'gef_dun01'),
(1389, 'gef_dun01'),
(1109, 'gef_dun02'),
(1036, 'gef_dun02'),
(1179, 'gef_dun02'),
(1143, 'gef_dun02'),
(2854, 'gef_dun02'),
(1061, 'gef_dun02'),
(1035, 'gef_dun02'),
(1046, 'gef_dun02'),
(1192, 'gef_dun03'),
(1263, 'gef_dun03'),
(1083, 'gef_dun03'),
(1253, 'glast_01'),
(1219, 'glast_01'),
(1260, 'gl_cas01'),
(1267, 'gl_cas01'),
(2877, 'gl_cas01'),
(1179, 'gl_cas01'),
(1195, 'gl_cas01'),
(1320, 'gl_cas01'),
(1281, 'gl_cas01'),
(1295, 'gl_cas01'),
(1197, 'gl_prison'),
(1257, 'gl_prison'),
(1201, 'gl_prison'),
(1035, 'gl_prison'),
(1202, 'gl_prison1'),
(1201, 'gl_prison1'),
(1257, 'gl_prison1'),
(1196, 'gl_prison1'),
(1209, 'gl_prison1'),
(1035, 'gl_prison1'),
(2792, 'gl_prison1'),
(1195, 'gl_cas02'),
(1208, 'gl_cas02'),
(1163, 'gl_cas02'),
(1276, 'gl_cas02'),
(1219, 'gl_cas02'),
(1191, 'gl_cas02'),
(1275, 'gl_cas02'),
(1203, 'gl_cas02'),
(1185, 'gl_cas02'),
(1132, 'gl_cas02'),
(1117, 'gl_cas02'),
(1204, 'gl_cas02'),
(1283, 'gl_cas02'),
(1163, 'gl_knt01'),
(1195, 'gl_knt01'),
(1275, 'gl_knt01'),
(1132, 'gl_knt01'),
(1219, 'gl_knt01'),
(1163, 'gl_knt02'),
(1132, 'gl_knt02'),
(1276, 'gl_knt02'),
(1219, 'gl_knt02'),
(1275, 'gl_knt02'),
(2690, 'gl_knt02'),
(1203, 'gl_knt02'),
(1192, 'gl_chyard'),
(1198, 'gl_chyard'),
(1117, 'gl_chyard'),
(2861, 'gl_chyard'),
(1191, 'gl_chyard'),
(1302, 'gl_chyard'),
(1035, 'gl_chyard'),
(1605, 'gl_chyard'),
(1272, 'gl_chyard'),
(1117, 'gl_church'),
(1192, 'gl_church'),
(1191, 'gl_church'),
(2838, 'gl_church'),
(1263, 'gl_step'),
(1276, 'gl_step'),
(1191, 'gl_step'),
(2614, 'gl_step'),
(1209, 'gl_sew02'),
(1253, 'gl_sew02'),
(1253, 'gl_sew01'),
(1194, 'gl_sew01'),
(1179, 'gl_sew01'),
(2618, 'gl_sew01'),
(1207, 'gl_sew03'),
(1253, 'gl_sew03'),
(2640, 'gl_sew03'),
(1206, 'gl_sew04'),
(1111, 'gl_sew04'),
(1253, 'gl_sew04'),
(1408, 'gon_dun01'),
(1410, 'gon_dun01'),
(1417, 'gon_dun01'),
(2883, 'gon_dun01'),
(1081, 'gon_dun01'),
(1412, 'gon_dun02'),
(2775, 'gon_dun02'),
(1415, 'gon_dun02'),
(1408, 'gon_dun02'),
(1410, 'gon_dun02'),
(1416, 'gon_dun03'),
(1412, 'gon_dun03'),
(1413, 'gon_dun03'),
(1564, 'gon_dun03'),
(1531, 'gon_dun03'),
(1418, 'gon_dun03'),
(2617, 'gon_dun03'),
(1002, 'prt_maze01'),
(1166, 'prt_maze01'),
(1031, 'prt_maze01'),
(1057, 'prt_maze01'),
(2672, 'prt_maze01'),
(1214, 'prt_maze01'),
(1079, 'prt_maze01'),
(1104, 'prt_maze01'),
(1128, 'prt_maze01'),
(1013, 'prt_maze01'),
(1092, 'prt_maze01'),
(1063, 'prt_maze01'),
(1060, 'prt_maze01'),
(1099, 'prt_maze01'),
(1145, 'prt_maze01'),
(1042, 'prt_maze01'),
(1025, 'prt_maze01'),
(1139, 'prt_maze01'),
(1084, 'prt_maze01'),
(1103, 'prt_maze01'),
(1078, 'prt_maze01'),
(1008, 'prt_maze01'),
(1035, 'prt_maze01'),
(1056, 'prt_maze01'),
(1011, 'prt_maze01'),
(1052, 'prt_maze01'),
(1018, 'prt_maze01'),
(1007, 'prt_maze01'),
(1174, 'prt_maze01'),
(1100, 'prt_maze01'),
(1083, 'prt_maze01'),
(1114, 'mjolnir_12'),
(1031, 'prt_maze02'),
(1060, 'prt_maze02'),
(1306, 'prt_maze02'),
(1243, 'prt_maze02'),
(1037, 'prt_maze03'),
(2764, 'prt_maze03'),
(2701, 'prt_maze03'),
(1031, 'prt_maze03'),
(1101, 'prt_maze03'),
(1139, 'prt_maze03'),
(1035, 'prt_maze03'),
(1215, 'prt_maze03'),
(1039, 'prt_maze03'),
(1294, 'prt_maze03'),
(1092, 'prt_maze03'),
(1002, 'prt_maze03'),
(1090, 'prt_maze03'),
(1088, 'prt_maze03'),
(1084, 'prt_maze03'),
(1085, 'prt_maze03'),
(1063, 'prt_maze03'),
(1093, 'prt_maze03'),
(1120, 'prt_maze03'),
(1083, 'prt_maze03'),
(1780, 'ice_dun01'),
(1782, 'ice_dun01'),
(1776, 'ice_dun01'),
(1778, 'ice_dun01'),
(2661, 'ice_dun01'),
(1777, 'ice_dun02'),
(1775, 'ice_dun02'),
(1789, 'ice_dun02'),
(2077, 'ice_dun02'),
(1778, 'ice_dun02'),
(1776, 'ice_dun02'),
(1777, 'ice_dun03'),
(1778, 'ice_dun03'),
(1775, 'ice_dun03'),
(1789, 'ice_dun03'),
(1676, 'juperos_01'),
(1678, 'juperos_01'),
(1679, 'juperos_01'),
(1677, 'juperos_01'),
(1670, 'juperos_01'),
(2625, 'juperos_01'),
(1671, 'juperos_01'),
(1678, 'juperos_02'),
(1365, 'juperos_02'),
(1679, 'juperos_02'),
(1677, 'juperos_02'),
(1676, 'juperos_02'),
(2895, 'juperos_02'),
(1668, 'jupe_core'),
(1672, 'jupe_core'),
(1677, 'jupe_core'),
(1673, 'jupe_core'),
(1671, 'jupe_core'),
(1670, 'jupe_core'),
(1678, 'jupe_core'),
(1676, 'jupe_core'),
(2853, 'jupe_core'),
(1365, 'jupe_core'),
(1685, 'jupe_core'),
(1275, 'kh_dun01'),
(1737, 'kh_dun01'),
(2908, 'kh_dun01'),
(1745, 'kh_dun01'),
(1735, 'kh_dun01'),
(1738, 'kh_dun01'),
(1735, 'kh_dun02'),
(2909, 'kh_dun02'),
(1745, 'kh_dun02'),
(1738, 'kh_dun02'),
(1734, 'kh_dun02'),
(1736, 'kh_dun02'),
(1737, 'kh_dun02'),
(1517, 'lou_dun01'),
(1381, 'lou_dun01'),
(1129, 'lou_dun01'),
(1516, 'lou_dun01'),
(1037, 'lou_dun01'),
(1512, 'lou_dun02'),
(1026, 'lou_dun02'),
(1514, 'lou_dun02'),
(1514, 'lou_dun03'),
(1512, 'lou_dun03'),
(1513, 'lou_dun03'),
(1631, 'lou_dun03'),
(1630, 'lou_dun03'),
(1366, 'mag_dun01'),
(1367, 'mag_dun01'),
(1383, 'mag_dun01'),
(1072, 'mag_dun01'),
(1381, 'mag_dun01'),
(1384, 'mag_dun02'),
(1385, 'mag_dun02'),
(1379, 'mag_dun02'),
(1367, 'mag_dun02'),
(1382, 'mag_dun02'),
(1387, 'mag_dun02'),
(2732, 'mag_dun02'),
(1894, 'mal_dun01'),
(2197, 'mal_dun01'),
(1266, 'mal_dun01'),
(2199, 'mal_dun01'),
(1073, 'mal_dun01'),
(1074, 'mal_dun01'),
(2208, 'mal_dun01'),
(1880, 'mosk_dun01'),
(1139, 'mosk_dun01'),
(1881, 'mosk_dun01'),
(1031, 'mosk_dun01'),
(2612, 'mosk_dun01'),
(1880, 'mosk_dun02'),
(1881, 'mosk_dun02'),
(1882, 'mosk_dun02'),
(1883, 'mosk_dun02'),
(1882, 'mosk_dun03'),
(1884, 'mosk_dun03'),
(1883, 'mosk_dun03'),
(2626, 'mosk_dun03'),
(1083, 'mosk_dun03'),
(1885, 'mosk_dun03'),
(2015, 'nyd_dun01'),
(2013, 'nyd_dun01'),
(2018, 'nyd_dun01'),
(2016, 'nyd_dun01'),
(2849, 'nyd_dun01'),
(2017, 'nyd_dun01'),
(2014, 'nyd_dun01'),
(1693, 'odin_tem01'),
(1753, 'odin_tem01'),
(2880, 'odin_tem01'),
(1692, 'odin_tem01'),
(1752, 'odin_tem01'),
(1079, 'odin_tem01'),
(1695, 'odin_tem01'),
(1080, 'odin_tem01'),
(1697, 'odin_tem01'),
(1752, 'odin_tem02'),
(1753, 'odin_tem02'),
(1762, 'odin_tem02'),
(1761, 'odin_tem02'),
(1693, 'odin_tem02'),
(1079, 'odin_tem02'),
(2657, 'odin_tem02'),
(1763, 'odin_tem02'),
(1754, 'odin_tem02'),
(1755, 'odin_tem02'),
(1693, 'odin_tem03'),
(2706, 'odin_tem03'),
(1762, 'odin_tem03'),
(1764, 'odin_tem03'),
(1755, 'odin_tem03'),
(1753, 'odin_tem03'),
(1752, 'odin_tem03'),
(1763, 'odin_tem03'),
(1754, 'odin_tem03'),
(1765, 'odin_tem03'),
(1751, 'odin_tem03'),
(1083, 'odin_tem03'),
(1153, 'orcsdun01'),
(1042, 'orcsdun01'),
(2723, 'orcsdun01'),
(1152, 'orcsdun01'),
(1005, 'orcsdun01'),
(1111, 'orcsdun01'),
(1152, 'orcsdun02'),
(1111, 'orcsdun02'),
(1177, 'orcsdun02'),
(1042, 'orcsdun02'),
(1189, 'orcsdun02'),
(2724, 'orcsdun02'),
(1084, 'orcsdun02'),
(1082, 'orcsdun02'),
(1076, 'pay_dun00'),
(1031, 'pay_dun00'),
(1078, 'pay_dun00'),
(1015, 'pay_dun00'),
(1005, 'pay_dun00'),
(2606, 'pay_dun00'),
(1116, 'pay_dun01'),
(1016, 'pay_dun01'),
(1028, 'pay_dun01'),
(2649, 'pay_dun01'),
(1078, 'pay_dun01'),
(1084, 'pay_dun01'),
(1016, 'pay_dun02'),
(1028, 'pay_dun02'),
(1188, 'pay_dun02'),
(1026, 'pay_dun02'),
(1031, 'pay_dun02'),
(1082, 'pay_dun02'),
(1068, 'pay_dun02'),
(1084, 'pay_dun02'),
(2648, 'pay_dun02'),
(1170, 'pay_dun03'),
(1078, 'pay_dun03'),
(1185, 'pay_dun03'),
(1020, 'pay_dun03'),
(1277, 'pay_dun03'),
(1188, 'pay_dun03'),
(1180, 'pay_dun03'),
(1068, 'pay_dun03'),
(1110, 'pay_dun04'),
(1277, 'pay_dun04'),
(1129, 'pay_dun04'),
(1180, 'pay_dun04'),
(1082, 'pay_dun04'),
(1016, 'pay_dun04'),
(2851, 'pay_dun04'),
(1078, 'pay_dun04'),
(1307, 'pay_dun04'),
(1150, 'pay_dun04'),
(1031, 'moc_pryd01'),
(1005, 'moc_pryd01'),
(1016, 'moc_pryd02'),
(1041, 'moc_pryd02'),
(1028, 'moc_pryd02'),
(1031, 'moc_pryd02'),
(1111, 'moc_pryd02'),
(1029, 'moc_pryd02'),
(1041, 'moc_pryd03'),
(1032, 'moc_pryd03'),
(1191, 'moc_pryd03'),
(1146, 'moc_pryd03'),
(2739, 'moc_pryd03'),
(1111, 'moc_pryd03'),
(1029, 'moc_pryd04'),
(1146, 'moc_pryd04'),
(1191, 'moc_pryd04'),
(1041, 'moc_pryd04'),
(1038, 'moc_pryd04'),
(2353, 'moc_prydn1'),
(2355, 'moc_prydn1'),
(2747, 'moc_prydn1'),
(2354, 'moc_prydn1'),
(2358, 'moc_prydn2'),
(2355, 'moc_prydn2'),
(2360, 'moc_prydn2'),
(2356, 'moc_prydn2'),
(2362, 'moc_prydn2'),
(1474, 'moc_prydn2'),
(1477, 'moc_prydn2'),
(1438, 'moc_prydn2'),
(1149, 'moc_pryd05'),
(1041, 'moc_pryd05'),
(1032, 'moc_pryd05'),
(2748, 'moc_pryd05'),
(1194, 'moc_pryd06'),
(1297, 'moc_pryd06'),
(1032, 'moc_pryd06'),
(1191, 'moc_pryd06'),
(2753, 'moc_pryd06'),
(1511, 'moc_pryd06'),
(1438, 'moc_pryd06'),
(1477, 'moc_pryd06'),
(1474, 'moc_pryd06'),
(1771, 'ra_san01'),
(1633, 'ra_san01'),
(1632, 'ra_san01'),
(1773, 'ra_san01'),
(1772, 'ra_san01'),
(1772, 'ra_san02'),
(1632, 'ra_san02'),
(1771, 'ra_san02'),
(1773, 'ra_san02'),
(1774, 'ra_san02'),
(1633, 'ra_san02'),
(1774, 'ra_san03'),
(1773, 'ra_san03'),
(2801, 'ra_san03'),
(1633, 'ra_san03'),
(1632, 'ra_san03'),
(1770, 'ra_san04'),
(1769, 'ra_san04'),
(1774, 'ra_san04'),
(1769, 'ra_san05'),
(1770, 'ra_san05'),
(1774, 'ra_san05'),
(1773, 'ra_san05'),
(1787, 'ra_san05'),
(1786, 'ra_san05'),
(1768, 'ra_san05'),
(2084, 'dic_dun01'),
(2083, 'dic_dun01'),
(2089, 'dic_dun01'),
(2088, 'dic_dun01'),
(2085, 'dic_dun02'),
(2086, 'dic_dun02'),
(2091, 'dic_dun02'),
(2896, 'dic_dun02'),
(2090, 'dic_dun02'),
(2087, 'dic_dun02'),
(2847, 'in_sphinx1'),
(1178, 'in_sphinx1'),
(1164, 'in_sphinx1'),
(1111, 'in_sphinx1'),
(1146, 'in_sphinx1'),
(1178, 'in_sphinx2'),
(1164, 'in_sphinx2'),
(1111, 'in_sphinx2'),
(1146, 'in_sphinx2'),
(1140, 'in_sphinx3'),
(1146, 'in_sphinx3'),
(1154, 'in_sphinx3'),
(1154, 'in_sphinx4'),
(1149, 'in_sphinx4'),
(1098, 'in_sphinx4'),
(1157, 'in_sphinx5'),
(1154, 'in_sphinx5'),
(1037, 'in_sphinx5'),
(1146, 'in_sphinx5'),
(2719, 'in_sphinx5'),
(1191, 'in_sphinx5'),
(1071, 'treasure01'),
(1077, 'treasure01'),
(1070, 'treasure01'),
(1179, 'treasure01'),
(1068, 'treasure01'),
(1071, 'treasure02'),
(1191, 'treasure02'),
(1216, 'treasure02'),
(1068, 'treasure02'),
(1179, 'treasure02'),
(1070, 'treasure02'),
(1192, 'treasure02'),
(1112, 'treasure02'),
(1837, 'thor_v01'),
(1830, 'thor_v01'),
(1836, 'thor_v01'),
(1833, 'thor_v01'),
(1829, 'thor_v01'),
(2788, 'thor_v01'),
(1838, 'thor_v02'),
(1836, 'thor_v02'),
(1831, 'thor_v02'),
(1072, 'thor_v02'),
(1837, 'thor_v02'),
(1831, 'thor_v03'),
(1830, 'thor_v03'),
(2675, 'thor_v03'),
(1829, 'thor_v03'),
(1833, 'thor_v03'),
(1839, 'thor_v03'),
(1835, 'thor_v03'),
(1832, 'thor_v03'),
(1249, 'xmas_dun01'),
(1246, 'xmas_dun01'),
(1031, 'xmas_dun01'),
(1096, 'xmas_dun01'),
(2865, 'xmas_dun01'),
(1265, 'xmas_dun01'),
(1090, 'xmas_dun01'),
(1113, 'xmas_dun01'),
(1242, 'xmas_dun01'),
(1265, 'xmas_dun02'),
(1249, 'xmas_dun02'),
(1248, 'xmas_dun02'),
(1246, 'xmas_dun02'),
(1251, 'xmas_dun02'),
(1743, 'xmas_dun01'),
(1250, 'xmas_dun01'),
(1314, 'tur_dun01'),
(1321, 'tur_dun01'),
(1034, 'tur_dun01'),
(1256, 'tur_dun01'),
(1322, 'tur_dun01'),
(1314, 'tur_dun02'),
(1319, 'tur_dun02'),
(1316, 'tur_dun02'),
(1256, 'tur_dun02'),
(2647, 'tur_dun02'),
(1319, 'tur_dun03'),
(2831, 'tur_dun03'),
(1318, 'tur_dun03'),
(1314, 'tur_dun03'),
(1315, 'tur_dun03'),
(1318, 'tur_dun04'),
(1319, 'tur_dun04'),
(2889, 'tur_dun04'),
(1315, 'tur_dun04'),
(1600, 'tur_dun04'),
(1601, 'tur_dun04'),
(1602, 'tur_dun04'),
(1594, 'tur_dun04'),
(1364, 'tur_dun04'),
(1312, 'tur_dun04'),
(1314, 'tur_dun04'),
(1191, 'tha_t01'),
(1195, 'tha_t01'),
(1695, 'tha_t01'),
(1275, 'tha_t01'),
(1703, 'tha_t01'),
(1191, 'tha_t02'),
(1702, 'tha_t02'),
(1697, 'tha_t02'),
(1377, 'tha_t02'),
(1699, 'tha_t02'),
(1698, 'tha_t02'),
(1195, 'tha_t02'),
(1275, 'tha_t02'),
(1699, 'tha_t03'),
(1698, 'tha_t03'),
(1195, 'tha_t03'),
(1377, 'tha_t03'),
(1696, 'tha_t03'),
(1701, 'tha_t03'),
(1191, 'tha_t03'),
(1694, 'tha_t04'),
(1699, 'tha_t04'),
(2859, 'tha_t04'),
(1195, 'tha_t04'),
(1191, 'tha_t04'),
(1295, 'tha_t04'),
(1698, 'tha_t04'),
(1377, 'tha_t04'),
(1700, 'tha_t04'),
(1377, 'tha_t05'),
(1699, 'tha_t05'),
(1320, 'tha_t05'),
(1698, 'tha_t05'),
(1295, 'tha_t05'),
(2721, 'tha_t05'),
(1695, 'tha_t05'),
(1694, 'tha_t05'),
(1707, 'tha_t05'),
(1377, 'tha_t06'),
(1320, 'tha_t06'),
(1694, 'tha_t06'),
(1295, 'tha_t06'),
(1698, 'tha_t06'),
(1699, 'tha_t06'),
(1696, 'tha_t06'),
(1697, 'tha_t06'),
(1695, 'tha_t06'),
(2858, 'tha_t06'),
(1706, 'tha_t06'),
(1699, 'tha_t07'),
(1702, 'tha_t07'),
(1700, 'tha_t07'),
(1701, 'tha_t07'),
(1698, 'tha_t07'),
(1705, 'tha_t07'),
(2686, 'tha_t07'),
(1703, 'tha_t07'),
(1702, 'tha_t08'),
(1698, 'tha_t08'),
(1700, 'tha_t08'),
(1699, 'tha_t08'),
(1703, 'tha_t08'),
(1704, 'tha_t08'),
(1701, 'tha_t08'),
(2685, 'tha_t08'),
(1701, 'tha_t09'),
(1702, 'tha_t09'),
(1712, 'tha_t09'),
(1694, 'tha_t09'),
(1703, 'tha_t09'),
(1700, 'tha_t09'),
(2650, 'tha_t09'),
(1707, 'tha_t09'),
(1711, 'tha_t10'),
(1702, 'tha_t10'),
(1701, 'tha_t10'),
(1697, 'tha_t10'),
(1700, 'tha_t10'),
(1703, 'tha_t10'),
(2684, 'tha_t10'),
(1706, 'tha_t10'),
(1702, 'tha_t11'),
(1710, 'tha_t11'),
(1695, 'tha_t11'),
(1701, 'tha_t11'),
(1703, 'tha_t11'),
(1705, 'tha_t11'),
(1700, 'tha_t11'),
(2665, 'tha_t11'),
(1702, 'tha_t12'),
(1700, 'tha_t12'),
(1703, 'tha_t12'),
(1709, 'tha_t12'),
(1701, 'tha_t12'),
(2726, 'tha_t12'),
(1693, 'tha_t12');