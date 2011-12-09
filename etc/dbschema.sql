-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Host: db394410578.db.1and1.com
-- Erstellungszeit: 09. Dezember 2011 um 17:09
-- Server Version: 5.0.91
-- PHP-Version: 5.3.3-7+squeeze3
-- 
-- Datenbank: `db394410578`
-- 

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `betting_challenge`
-- 

CREATE TABLE `betting_challenge` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `date` datetime NOT NULL,
  `no` tinyint(10) default NULL,
  `roundId` int(10) default NULL,
  `placeId` int(10) default NULL,
  `teamIdA` int(10) default NULL,
  `teamIdB` int(10) default NULL,
  `placeholderTeamA` varchar(150) collate utf8_unicode_ci NOT NULL default '-',
  `placeholderTeamB` varchar(150) collate utf8_unicode_ci NOT NULL default '-',
  `halftimeTeamA` int(2) default NULL,
  `halftimeTeamB` int(2) default NULL,
  `resultTeamA` int(2) default NULL,
  `resultTeamB` int(2) default NULL,
  `isFinished` tinyint(1) NOT NULL default '0',
  `extraTime` tinyint(1) NOT NULL default '0',
  `penaltyShootOut` tinyint(1) NOT NULL default '0',
  `penaltyResultTeamA` int(2) default NULL,
  `penaltyResultTeamB` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

-- 
-- Daten für Tabelle `betting_challenge`
-- 

INSERT INTO `betting_challenge` VALUES (1, '2012-06-08 18:00:00', 1, 1, 1, 1, 2, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (2, '2012-06-08 20:45:00', 2, 1, 2, 3, 4, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (3, '2012-06-09 18:00:00', 3, 1, 3, 5, 6, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (4, '2012-06-09 20:45:00', 4, 1, 4, 7, 8, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (5, '2012-06-10 18:00:00', 5, 1, 5, 9, 10, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (6, '2012-06-10 20:45:00', 6, 1, 6, 11, 12, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (7, '2012-06-11 18:00:00', 7, 1, 7, 13, 14, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (8, '2012-06-11 20:45:00', 8, 1, 8, 15, 16, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (9, '2012-06-12 18:00:00', 9, 1, 2, 2, 4, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (10, '2012-06-12 20:45:00', 10, 1, 1, 1, 3, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (11, '2012-06-13 18:00:00', 11, 1, 4, 6, 8, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (12, '2012-06-13 20:45:00', 12, 1, 3, 5, 7, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (13, '2012-06-14 18:00:00', 13, 1, 6, 10, 12, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (14, '2012-06-14 20:45:00', 14, 1, 5, 9, 11, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (15, '2012-06-15 18:00:00', 15, 1, 8, 16, 14, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (16, '2012-06-15 20:45:00', 16, 1, 7, 15, 13, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (17, '2012-06-16 18:00:00', 17, 1, 2, 4, 1, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (18, '2012-06-16 20:45:00', 18, 1, 1, 2, 3, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (19, '2012-06-17 18:00:00', 19, 1, 3, 8, 5, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (20, '2012-06-17 20:45:00', 20, 1, 4, 6, 7, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (21, '2012-06-18 18:00:00', 21, 1, 5, 12, 9, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (22, '2012-06-18 20:45:00', 22, 1, 6, 10, 11, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (23, '2012-06-19 18:00:00', 23, 1, 7, 14, 15, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (24, '2012-06-19 20:45:00', 24, 1, 8, 16, 13, '-', '-', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (25, '2012-06-21 20:45:00', 25, 3, NULL, NULL, NULL, 'Erster Gruppe A', 'Zweiter Gruppe B', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (26, '2012-06-22 20:45:00', 26, 3, NULL, NULL, NULL, 'Erster Gruppe B', 'Zweiter Gruppe A', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (27, '2012-06-23 20:45:00', 27, 3, NULL, NULL, NULL, 'Erster Gruppe C', 'Zweiter Gruppe D', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (28, '2012-06-24 20:45:00', 28, 3, NULL, NULL, NULL, 'Erster Gruppe D', 'Zweiter Gruppe C', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (29, '2012-06-27 20:45:00', 29, 4, NULL, NULL, NULL, 'Sieger Spiel 25', 'Sieger Spiel 27', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (30, '2012-06-28 20:45:00', 30, 4, NULL, NULL, NULL, 'Sieger Spiel 26', 'Sieger Spiel 28', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);
INSERT INTO `betting_challenge` VALUES (31, '2012-07-01 20:45:00', 31, 6, NULL, NULL, NULL, 'Sieger Spiel 29', 'Sieger Spiel 30', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `betting_challenge_rounds`
-- 

CREATE TABLE `betting_challenge_rounds` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(150) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

-- 
-- Daten für Tabelle `betting_challenge_rounds`
-- 

INSERT INTO `betting_challenge_rounds` VALUES (1, 'Vorrunde');
INSERT INTO `betting_challenge_rounds` VALUES (2, 'Achtelfinale');
INSERT INTO `betting_challenge_rounds` VALUES (3, 'Viertelfinale');
INSERT INTO `betting_challenge_rounds` VALUES (4, 'Halbfinale');
INSERT INTO `betting_challenge_rounds` VALUES (5, 'Spiel um Platz 3');
INSERT INTO `betting_challenge_rounds` VALUES (6, 'Finale');

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `betting_groups`
-- 

CREATE TABLE `betting_groups` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(150) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

-- 
-- Daten für Tabelle `betting_groups`
-- 

INSERT INTO `betting_groups` VALUES (1, 'Gruppe A');
INSERT INTO `betting_groups` VALUES (2, 'Gruppe B');
INSERT INTO `betting_groups` VALUES (3, 'Gruppe C');
INSERT INTO `betting_groups` VALUES (4, 'Gruppe D');

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `betting_places`
-- 

CREATE TABLE `betting_places` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(150) collate utf8_unicode_ci NOT NULL,
  `description` varchar(150) collate utf8_unicode_ci NOT NULL,
  `googleMapsEmbedUrl` varchar(500) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

-- 
-- Daten für Tabelle `betting_places`
-- 

INSERT INTO `betting_places` VALUES (1, 'Warschau', '', 'http://maps.google.de/maps?f=q&amp;source=s_q&amp;hl=de&amp;geocode=&amp;q=Warschau,+Polen&amp;aq=1&amp;sll=51.151786,10.415039&amp;sspn=23.644227,57.084961&amp;vpsrc=6&amp;ie=UTF8&amp;hq=&amp;hnear=Warschau,+Warszawa,+Woiwodschaft+Masowien,+Polen&amp;t=p&amp;ll=52.22107,20.994873&amp;spn=1.177835,2.334595&amp;z=8&amp;output=embed');
INSERT INTO `betting_places` VALUES (2, 'Wroclaw', '', 'http://maps.google.de/maps?f=q&amp;source=s_q&amp;hl=de&amp;geocode=&amp;q=Wroc%C5%82awki,+Polen&amp;aq=4&amp;sll=52.229676,21.012229&amp;sspn=0.359587,0.891953&amp;vpsrc=6&amp;ie=UTF8&amp;hq=&amp;hnear=Wroc%C5%82awki,+Powiat+Che%C5%82mi%C5%84ski,+Woiwodschaft+Kujawien-Pommern,+Polen&amp;t=p&amp;ll=53.261927,18.61084&amp;spn=1.150038,2.334595&amp;z=8&amp;output=embed');
INSERT INTO `betting_places` VALUES (3, 'Charkiw', '', 'http://maps.google.de/maps?f=q&amp;source=s_q&amp;hl=de&amp;geocode=&amp;q=Charkiw,+Ukraine&amp;aq=0&amp;sll=53.255392,18.606638&amp;sspn=0.087805,0.222988&amp;vpsrc=6&amp;ie=UTF8&amp;hq=&amp;hnear=Charkiw,+Ukraine&amp;t=p&amp;ll=50.000678,36.238403&amp;spn=1.235821,2.334595&amp;z=8&amp;output=embed');
INSERT INTO `betting_places` VALUES (4, 'Lwiw', '', 'http://maps.google.de/maps?f=q&amp;source=s_q&amp;hl=de&amp;geocode=&amp;q=Lwiw,+Dnipropetrowsk,+Ukraine&amp;aq=0&amp;sll=49.9935,36.230383&amp;sspn=0.377418,0.891953&amp;vpsrc=6&amp;ie=UTF8&amp;hq=&amp;hnear=Lwiw,+Kryvoriz''kyi+district,+Dnipropetrowsk,+Ukraine,+53080&amp;t=p&amp;ll=47.905296,33.546753&amp;spn=1.288841,2.334595&amp;z=8&amp;output=embed');
INSERT INTO `betting_places` VALUES (5, 'Gdansk', '', 'http://maps.google.de/maps?f=q&amp;source=s_q&amp;hl=de&amp;geocode=&amp;q=Gdansk,+Polen&amp;aq=4&amp;sll=47.863889,33.551667&amp;sspn=0.098467,0.222988&amp;vpsrc=6&amp;ie=UTF8&amp;hq=&amp;hnear=Danzig,+Gda%C5%84sk,+Woiwodschaft+Pommern,+Polen&amp;t=p&amp;ll=54.370959,18.71521&amp;spn=1.120003,2.334595&amp;z=8&amp;output=embed');
INSERT INTO `betting_places` VALUES (6, 'Poznan', '', 'http://maps.google.de/maps?f=q&amp;source=s_q&amp;hl=de&amp;geocode=&amp;q=Pozna%C5%84,+Polen&amp;aq=0&amp;sll=54.352025,18.646638&amp;sspn=0.342151,0.891953&amp;vpsrc=6&amp;ie=UTF8&amp;hq=&amp;hnear=Posen,+Powiat+Pozna%C5%84ski,+Woiwodschaft+Gro%C3%9Fpolen,+Polen&amp;t=p&amp;ll=52.419173,16.962891&amp;spn=1.172574,2.334595&amp;z=8&amp;output=embed');
INSERT INTO `betting_places` VALUES (7, 'Donezk', '', 'http://maps.google.de/maps?f=q&amp;source=s_q&amp;hl=de&amp;geocode=&amp;q=Donezk,+Ukraine&amp;aq=0&amp;sll=52.406374,16.925168&amp;sspn=0.358154,0.891953&amp;vpsrc=6&amp;ie=UTF8&amp;hq=&amp;hnear=Donezk,+Ukraine&amp;t=p&amp;ll=48.0083,37.781982&amp;spn=1.286275,2.334595&amp;z=8&amp;output=embed');
INSERT INTO `betting_places` VALUES (8, 'Kyiw', '', 'http://maps.google.de/maps?f=q&amp;source=s_q&amp;hl=de&amp;geocode=&amp;q=Kyiv,+Kiev,+Ukraine&amp;aq=2&amp;sll=48.015883,37.80285&amp;sspn=0.39271,0.891953&amp;vpsrc=6&amp;ie=UTF8&amp;hq=&amp;hnear=Kiew,+Kyiv+city,+Ukraine&amp;t=p&amp;ll=50.457504,30.525513&amp;spn=1.22404,2.334595&amp;z=8&amp;output=embed');

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `betting_teams`
-- 

CREATE TABLE `betting_teams` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `countryCode` varchar(150) collate utf8_unicode_ci NOT NULL,
  `country` varchar(150) collate utf8_unicode_ci NOT NULL,
  `title` varchar(150) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

-- 
-- Daten für Tabelle `betting_teams`
-- 

INSERT INTO `betting_teams` VALUES (1, 'POL', 'Poland', 'Polen');
INSERT INTO `betting_teams` VALUES (2, 'GRE', 'Greece', 'Griechenland');
INSERT INTO `betting_teams` VALUES (3, 'RUS', 'Russia', 'Russland');
INSERT INTO `betting_teams` VALUES (4, 'CZE', 'Czech Republic', 'Tschechien');
INSERT INTO `betting_teams` VALUES (5, 'NED', 'Netherlands', 'Niederlande');
INSERT INTO `betting_teams` VALUES (6, 'DEN', 'Denmark', 'Dänemark');
INSERT INTO `betting_teams` VALUES (7, 'GER', 'Germany', 'Deutschland');
INSERT INTO `betting_teams` VALUES (8, 'POR', 'Portugal', 'Portugal');
INSERT INTO `betting_teams` VALUES (9, 'ESP', 'Spain', 'Spanien');
INSERT INTO `betting_teams` VALUES (10, 'ITA', 'Italy', 'Italien');
INSERT INTO `betting_teams` VALUES (11, 'IRL', 'Republic of Ireland', 'Irland');
INSERT INTO `betting_teams` VALUES (12, 'CRO', 'Croatia', 'Kroatien');
INSERT INTO `betting_teams` VALUES (13, 'FRA', 'France', 'Frankreich');
INSERT INTO `betting_teams` VALUES (14, 'ENG', 'England', 'England');
INSERT INTO `betting_teams` VALUES (15, 'UKR', 'Ukraine', 'Ukraine');
INSERT INTO `betting_teams` VALUES (16, 'SWE', 'Sweden', 'Schweden');

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `betting_teams_groups_rel`
-- 

CREATE TABLE `betting_teams_groups_rel` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `teamId` int(10) NOT NULL,
  `groupId` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

-- 
-- Daten für Tabelle `betting_teams_groups_rel`
-- 

INSERT INTO `betting_teams_groups_rel` VALUES (1, 1, 1);
INSERT INTO `betting_teams_groups_rel` VALUES (2, 2, 1);
INSERT INTO `betting_teams_groups_rel` VALUES (3, 3, 1);
INSERT INTO `betting_teams_groups_rel` VALUES (4, 4, 1);
INSERT INTO `betting_teams_groups_rel` VALUES (5, 5, 2);
INSERT INTO `betting_teams_groups_rel` VALUES (6, 6, 2);
INSERT INTO `betting_teams_groups_rel` VALUES (7, 7, 2);
INSERT INTO `betting_teams_groups_rel` VALUES (8, 8, 2);
INSERT INTO `betting_teams_groups_rel` VALUES (9, 9, 3);
INSERT INTO `betting_teams_groups_rel` VALUES (10, 10, 3);
INSERT INTO `betting_teams_groups_rel` VALUES (11, 11, 3);
INSERT INTO `betting_teams_groups_rel` VALUES (12, 12, 3);
INSERT INTO `betting_teams_groups_rel` VALUES (13, 13, 4);
INSERT INTO `betting_teams_groups_rel` VALUES (14, 14, 4);
INSERT INTO `betting_teams_groups_rel` VALUES (15, 15, 4);
INSERT INTO `betting_teams_groups_rel` VALUES (16, 16, 4);

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `betting_user`
-- 

CREATE TABLE `betting_user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(150) collate utf8_unicode_ci NOT NULL,
  `firstname` varchar(150) collate utf8_unicode_ci NOT NULL,
  `lastname` varchar(150) collate utf8_unicode_ci NOT NULL,
  `email` varchar(150) collate utf8_unicode_ci NOT NULL,
  `password` varchar(32) collate utf8_unicode_ci NOT NULL,
  `outhToken` varchar(500) collate utf8_unicode_ci NOT NULL,
  `gender` varchar(10) collate utf8_unicode_ci NOT NULL,
  `country` varchar(10) collate utf8_unicode_ci NOT NULL,
  `locale` varchar(10) collate utf8_unicode_ci NOT NULL,
  `fbUserId` varchar(20) collate utf8_unicode_ci NOT NULL,
  `isAdmin` tinyint(1) NOT NULL default '0',
  `isBlocked` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- 
-- Daten für Tabelle `betting_user`
-- 

INSERT INTO `betting_user` VALUES (1, 'Marco Senkpiel', 'Marco', 'Senkpiel', 'besoft@gmx.de', '', 'AAAEBjFO4kdoBAIaTUiZAB0muxuPBBdlmRoYGK8M96ZCBfB20rNtduAqGkUZC2H1T81Tdf1IGLQZCNqa213MiJ2rqikiJYQ9Mo4lkXyAlsdlKvc6wNuQ5', 'male', 'de', 'en_US', '1494736244', 0, 0);

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `betting_user_challenge`
-- 

CREATE TABLE `betting_user_challenge` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `userId` int(10) default NULL,
  `bets` text collate utf8_unicode_ci COMMENT 'json data {"challengeId":1,"resultTeamA":0,"resultTeamB":0}',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Daten für Tabelle `betting_user_challenge`
-- 

