-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Erstellungszeit: 12. März 2008
-- Server Version: 5.0.15
-- PHP-Version: 5.0.5
-- 
-- Datenbank: frei wählbar
-- 

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `colors`
-- 

CREATE TABLE `colors` (
  `Description` varchar(30) collate latin1_general_ci NOT NULL,
  `Color` varchar(7) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Daten für Tabelle `colors`
-- 

INSERT INTO `colors` (`Description`, `Color`) VALUES ('Background', '#FFFFFF');
INSERT INTO `colors` (`Description`, `Color`) VALUES ('Font', '#000000');
INSERT INTO `colors` (`Description`, `Color`) VALUES ('In', '#669966');
INSERT INTO `colors` (`Description`, `Color`) VALUES ('Out', '#669966');
INSERT INTO `colors` (`Description`, `Color`) VALUES ('Adminzone', '#669966');

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `matches`
-- 

CREATE TABLE `matches` (
  `ID` int(4) NOT NULL auto_increment,
  `Date` datetime NOT NULL,
  `Location` varchar(100) collate latin1_general_ci NOT NULL,
  `Level` varchar(20) collate latin1_general_ci NOT NULL,
  `GroupChar` char(1) collate latin1_general_ci NOT NULL,
  `ModeTeamA` varchar(40) collate latin1_general_ci NOT NULL,
  `ModeTeamB` varchar(40) collate latin1_general_ci NOT NULL,
  `TeamA` varchar(30) collate latin1_general_ci NOT NULL,
  `TeamB` varchar(30) collate latin1_general_ci NOT NULL,
  `FlagA` varchar(30) collate latin1_general_ci NOT NULL,
  `FlagB` varchar(30) collate latin1_general_ci NOT NULL,
  `GoalsA` int(2) NOT NULL default '99',
  `GoalsB` int(2) NOT NULL default '99',
  `ValuationGoalsA` int(2) NOT NULL default '99',
  `ValuationGoalsB` int(2) NOT NULL default '99',
  `PointWeight` decimal(3,2) NOT NULL default '1.00',
  `FriendsAnonym` varchar(1) collate latin1_general_ci NOT NULL default 'n',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=32 ;

-- 
-- Daten für Tabelle `matches`
-- 

INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (1, '2008-06-07 18:00:00', 'Basel', 'Gruppenspiel', 'A', '', '', 'Schweiz', 'Tschechien', 'sui', 'cze', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (2, '2008-06-07 20:45:00', 'Genf', 'Gruppenspiel', 'A', '', '', 'Portugal', 'Türkei', 'por', 'tur', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (3, '2008-06-08 18:00:00', 'Wien', 'Gruppenspiel', 'B', '', '', 'Österreich', 'Kroatien', 'aut', 'cro', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (4, '2008-06-08 20:45:00', 'Klagenfurt', 'Gruppenspiel', 'B', '', '', 'Deutschland', 'Polen', 'ger', 'pol', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (5, '2008-06-09 18:00:00', 'Zürich', 'Gruppenspiel', 'C', '', '', 'Rumänien', 'Frankreich', 'rou', 'fra', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (6, '2008-06-09 20:45:00', 'Bern', 'Gruppenspiel', 'C', '', '', 'Niederlande', 'Italien', 'ned', 'ita', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (7, '2008-06-10 18:00:00', 'Innsbruck', 'Gruppenspiel', 'D', '', '', 'Spanien', 'Russland', 'esp', 'rus', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (8, '2008-06-10 20:45:00', 'Salzburg', 'Gruppenspiel', 'D', '', '', 'Griechenland', 'Schweden', 'gre', 'swe', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (9, '2008-06-11 18:00:00', 'Genf', 'Gruppenspiel', 'A', '', '', 'Tschechien', 'Portugal', 'cze', 'por', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (10, '2008-06-11 20:45:00', 'Basel', 'Gruppenspiel', 'A', '', '', 'Schweiz', 'Türkei', 'sui', 'tur', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (11, '2008-06-12 18:00:00', 'Klagenfurt', 'Gruppenspiel', 'B', '', '', 'Kroatien', 'Deutschland', 'cro', 'ger', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (12, '2008-06-12 20:45:00', 'Wien', 'Gruppenspiel', 'B', '', '', 'Österreich', 'Polen', 'aut', 'pol', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (13, '2008-06-13 18:00:00', 'Zürich', 'Gruppenspiel', 'C', '', '', 'Italien', 'Rumänien', 'ita', 'rou', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (14, '2008-06-13 20:45:00', 'Bern', 'Gruppenspiel', 'C', '', '', 'Niederlande', 'Frankreich', 'ned', 'fra', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (15, '2008-06-14 18:00:00', 'Innsbruck', 'Gruppenspiel', 'D', '', '', 'Schweden', 'Spanien', 'swe', 'esp', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (16, '2008-06-14 20:45:00', 'Salzburg', 'Gruppenspiel', 'D', '', '', 'Griechenland', 'Russland', 'gre', 'rus', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (17, '2008-06-15 20:45:00', 'Basel', 'Gruppenspiel', 'A', '', '', 'Schweiz', 'Portugal', 'sui', 'por', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (18, '2008-06-15 20:45:00', 'Genf', 'Gruppenspiel', 'A', '', '', 'Türkei', 'Tschechien', 'tur', 'cze', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (19, '2008-06-16 20:45:00', 'Klagenfurt', 'Gruppenspiel', 'B', '', '', 'Polen', 'Kroatien', 'pol', 'cro', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (20, '2008-06-16 20:45:00', 'Wien', 'Gruppenspiel', 'B', '', '', 'Österreich', 'Deutschland', 'aut', 'ger', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (21, '2008-06-17 20:45:00', 'Bern', 'Gruppenspiel', 'C', '', '', 'Niederlande', 'Rumänien', 'ned', 'rou', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (22, '2008-06-17 20:45:00', 'Zürich', 'Gruppenspiel', 'C', '', '', 'Frankreich', 'Italien', 'fra', 'ita', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (23, '2008-06-18 20:45:00', 'Salzburg', 'Gruppenspiel', 'D', '', '', 'Griechenland', 'Spanien', 'gre', 'esp', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (24, '2008-06-18 20:45:00', 'Innsbruck', 'Gruppenspiel', 'D', '', '', 'Russland', 'Schweden', 'rus', 'swe', 99, 99, 99, 99, 1.00, 'n');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (25, '2008-06-19 20:45:00', 'Basel', 'Viertelfinal', '', '1. Gruppe A', '2. Gruppe B', '1. Gruppe A', '2. Gruppe B', 'empty', 'empty', 99, 99, 99, 99, 1.00, 'y');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (26, '2008-06-20 20:45:00', 'Wien', 'Viertelfinal', '', '1. Gruppe B', '2. Gruppe A', '1. Gruppe B', '2. Gruppe A', 'empty', 'empty', 99, 99, 99, 99, 1.00, 'y');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (27, '2008-06-21 20:45:00', 'Basel', 'Viertelfinal', '', '1. Gruppe C', '2. Gruppe D', '1. Gruppe C', '2. Gruppe D', 'empty', 'empty', 99, 99, 99, 99, 1.00, 'y');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (28, '2008-06-22 20:45:00', 'Wien', 'Viertelfinal', '', '1. Gruppe D', '2. Gruppe C', '1. Gruppe D', '2. Gruppe C', 'empty', 'empty', 99, 99, 99, 99, 1.00, 'y');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (29, '2008-06-25 20:45:00', 'Basel', 'Halbfinal', '', 'Sieger 25', 'Sieger 26', 'Sieger 25', 'Sieger 26', 'empty', 'empty', 99, 99, 99, 99, 1.50, 'y');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (30, '2008-06-26 20:45:00', 'Wien', 'Halbfinal', '', 'Sieger 27', 'Sieger 28', 'Sieger 27', 'Sieger 28', 'empty', 'empty', 99, 99, 99, 99, 1.50, 'y');
INSERT INTO `matches` (`ID`, `Date`, `Location`, `Level`, `GroupChar`, `ModeTeamA`, `ModeTeamB`, `TeamA`, `TeamB`, `FlagA`, `FlagB`, `GoalsA`, `GoalsB`, `ValuationGoalsA`, `ValuationGoalsB`, `PointWeight`, `FriendsAnonym`) VALUES (31, '2008-06-29 20:45:00', 'Wien', 'Final', '', 'Sieger 29', 'Sieger 30', 'Sieger 29', 'Sieger 30', 'silberquad', 'pokalquad', 99, 99, 99, 99, 2.00, 'y');

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `members`
-- 

CREATE TABLE `members` (
  `ID` int(4) NOT NULL auto_increment,
  `Name` varchar(30) character set latin1 collate latin1_bin NOT NULL,
  `Email` varchar(30) collate latin1_general_ci NOT NULL,
  `Password` varchar(30) collate latin1_general_ci NOT NULL default '',
  `tipgroupID` int(3) NOT NULL default '99',
  `PictureNo` int(4) NOT NULL,
  `FanOf` varchar(30) collate latin1_general_ci NOT NULL default 'empty',
  `OnlineSince` datetime NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

-- 
-- Daten für Tabelle `members`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `questions`
-- 

CREATE TABLE `questions` (
  `ID` int(2) NOT NULL auto_increment,
  `Question` varchar(200) collate latin1_general_ci NOT NULL default '',
  `Answer` varchar(200) collate latin1_general_ci NOT NULL default '99',
  `Bonus` int(4) NOT NULL default '0',
  `Deadline` datetime NOT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci PACK_KEYS=1 AUTO_INCREMENT=6 ;

-- 
-- Daten für Tabelle `questions`
-- 

INSERT INTO `questions` (`ID`, `Question`, `Answer`, `Bonus`, `Deadline`, `Date`) VALUES (1, 'Welches Land wird Europameister?', '99', 40, '2008-06-07 18:00:00', '2008-06-30 00:00:00');
INSERT INTO `questions` (`ID`, `Question`, `Answer`, `Bonus`, `Deadline`, `Date`) VALUES (2, 'Wer wird Torschützenkönig? (Nachname)', '99', 50, '2008-06-07 18:00:00', '2008-06-30 00:00:00');
INSERT INTO `questions` (`ID`, `Question`, `Answer`, `Bonus`, `Deadline`, `Date`) VALUES (3, 'Wie weit kommt die Schweiz? (Gruppenspiele, 1/4, 1/2, Final)', '99', 30, '2008-06-07 18:00:00', '2008-06-30 00:00:00');
INSERT INTO `questions` (`ID`, `Question`, `Answer`, `Bonus`, `Deadline`, `Date`) VALUES (4, 'Wie sieht die Finalpaarung aus? (z.B. Schweiz-Deutschland)', '99', 30, '2008-06-19 20:45:00', '2008-06-27 00:00:00');

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `shoutbox`
-- 

CREATE TABLE `shoutbox` (
  `MemberID` int(4) NOT NULL,
  `DateTime` datetime NOT NULL,
  `Message` text collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`MemberID`,`DateTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Daten für Tabelle `shoutbox`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `specialtips`
-- 

CREATE TABLE `specialtips` (
  `MemberID` int(4) NOT NULL,
  `QuestionID` int(2) NOT NULL,
  `Answer` varchar(30) collate latin1_general_ci NOT NULL default '99',
  `SpecialTipScore` int(4) NOT NULL default '99',
  `RankingHistory` int(5) NOT NULL default '99999',
  PRIMARY KEY  (`MemberID`,`QuestionID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Daten für Tabelle `specialtips`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `statistic_6`
-- 

CREATE TABLE `statistic_6` (
  `MemberID` int(4) NOT NULL,
  `Value` decimal(5,2) NOT NULL,
  PRIMARY KEY  (`MemberID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Daten für Tabelle `statistic_6`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `statistic_average_risk`
-- 

CREATE TABLE `statistic_average_risk` (
  `MemberID` int(4) NOT NULL,
  `Value` decimal(5,4) NOT NULL,
  PRIMARY KEY  (`MemberID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Daten für Tabelle `statistic_average_risk`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `statistic_avg_bidding_time`
-- 

CREATE TABLE `statistic_avg_bidding_time` (
  `MemberID` int(4) NOT NULL,
  `Value` int(10) NOT NULL,
  PRIMARY KEY  (`MemberID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Daten für Tabelle `statistic_avg_bidding_time`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `statistic_best_tip`
-- 

CREATE TABLE `statistic_best_tip` (
  `MemberID` int(4) NOT NULL,
  `Value` int(4) NOT NULL,
  PRIMARY KEY  (`MemberID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Daten für Tabelle `statistic_best_tip`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `statistic_highscore`
-- 

CREATE TABLE `statistic_highscore` (
  `MemberID` int(4) NOT NULL,
  `Value` int(5) NOT NULL,
  PRIMARY KEY  (`MemberID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Daten für Tabelle `statistic_highscore`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `statistic_most_exact`
-- 

CREATE TABLE `statistic_most_exact` (
  `MemberID` int(4) NOT NULL,
  `Value` int(4) NOT NULL,
  PRIMARY KEY  (`MemberID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Daten für Tabelle `statistic_most_exact`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `statistic_most_first_places`
-- 

CREATE TABLE `statistic_most_first_places` (
  `MemberID` int(4) NOT NULL,
  `Value` int(4) NOT NULL,
  PRIMARY KEY  (`MemberID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Daten für Tabelle `statistic_most_first_places`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `statistics_general`
-- 

CREATE TABLE `statistics_general` (
  `Description` varchar(100) collate latin1_general_ci NOT NULL,
  `Value` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci PACK_KEYS=1;

-- 
-- Daten für Tabelle `statistics_general`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `tables`
-- 

CREATE TABLE `tables` (
  `Team` varchar(40) collate latin1_general_ci NOT NULL,
  `GroupChar` char(1) collate latin1_general_ci NOT NULL,
  `Flag` varchar(20) collate latin1_general_ci NOT NULL,
  `MatchesPlayed` smallint(2) NOT NULL,
  `Victories` smallint(2) NOT NULL,
  `Drawn` smallint(2) NOT NULL,
  `Losses` smallint(2) NOT NULL,
  `GoalsFor` smallint(2) NOT NULL,
  `GoalsAgainst` smallint(2) NOT NULL,
  `Points` smallint(2) NOT NULL,
  PRIMARY KEY  (`Team`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Daten für Tabelle `tables`
-- 

INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Schweiz', 'A', 'sui', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Portugal', 'A', 'por', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Österreich', 'B', 'aut', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Deutschland', 'B', 'ger', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Rumänien', 'C', 'rou', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Niederlande', 'C', 'ned', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Spanien', 'D', 'esp', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Griechenland', 'D', 'gre', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Tschechien', 'A', 'cze', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Kroatien', 'B', 'cro', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Italien', 'C', 'ita', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Schweden', 'D', 'swe', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Türkei', 'A', 'tur', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Polen', 'B', 'pol', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Frankreich', 'C', 'fra', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tables` (`Team`, `GroupChar`, `Flag`, `MatchesPlayed`, `Victories`, `Drawn`, `Losses`, `GoalsFor`, `GoalsAgainst`, `Points`) VALUES ('Russland', 'D', 'rus', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `tipgroups`
-- 

CREATE TABLE `tipgroups` (
  `ID` int(3) NOT NULL auto_increment,
  `Name` varchar(40) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Daten für Tabelle `tipgroups`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `tips`
-- 

CREATE TABLE `tips` (
  `MemberID` int(4) NOT NULL default '0',
  `MatchID` int(4) NOT NULL default '0',
  `TipGoalsTeamA` int(2) NOT NULL default '99',
  `TipGoalsTeamB` int(2) NOT NULL default '99',
  `TipScore` int(4) NOT NULL default '99',
  `Quote` decimal(4,2) NOT NULL default '99.00',
  `RankingHistory` int(5) NOT NULL default '99999',
  `MatchRankingHistory` int(5) NOT NULL default '99999',
  `BiddingTime` datetime NOT NULL,
  `ChangeCounter` int(4) NOT NULL default '0',
  PRIMARY KEY  (`MemberID`,`MatchID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Daten für Tabelle `tips`
-- 

