CREATE DATABASE  IF NOT EXISTS `feedback` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `feedback`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ckey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slot` int(2) NOT NULL,
  `OOC_Notes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `real_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_is_always_random` tinyint(1) NOT NULL,
  `gender` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` smallint(4) NOT NULL,
  `species` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hair_colour` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#000000',
  `secondary_hair_colour` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#000000',
  `facial_hair_colour` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#000000',
  `secondary_facial_hair_colour` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#000000',
  `skin_tone` smallint(4) NOT NULL,
  `skin_colour` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#000000',
  `marking_colours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'head=%23000000&body=%23000000&tail=%23000000',
  `head_accessory_colour` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#000000',
  `hair_style_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facial_style_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marking_styles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'head=None&body=None&tail=None',
  `head_accessory_style_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_head_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eye_colour` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#000000',
  `underwear` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `undershirt` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `backbag` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternate_option` smallint(4) NOT NULL,
  `job_support_high` mediumint(8) NOT NULL,
  `job_support_med` mediumint(8) NOT NULL,
  `job_support_low` mediumint(8) NOT NULL,
  `job_medsci_high` mediumint(8) NOT NULL,
  `job_medsci_med` mediumint(8) NOT NULL,
  `job_medsci_low` mediumint(8) NOT NULL,
  `job_engsec_high` mediumint(8) NOT NULL,
  `job_engsec_med` mediumint(8) NOT NULL,
  `job_engsec_low` mediumint(8) NOT NULL,
  `job_karma_high` mediumint(8) NOT NULL,
  `job_karma_med` mediumint(8) NOT NULL,
  `job_karma_low` mediumint(8) NOT NULL,
  `flavor_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `med_record` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sec_record` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gen_record` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `disabilities` mediumint(8) NOT NULL,
  `player_alt_titles` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `organ_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rlimb_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `nanotrasen_relation` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciesprefs` int(1) NOT NULL,
  `socks` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_accessory` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gear` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autohiss` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ckey` (`ckey`)
) ENGINE=InnoDB AUTO_INCREMENT=125467 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customuseritems`
--

DROP TABLE IF EXISTS `customuseritems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customuseritems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cuiCKey` varchar(36) NOT NULL,
  `cuiRealName` varchar(60) NOT NULL,
  `cuiPath` varchar(255) NOT NULL,
  `cuiItemName` text,
  `cuiDescription` text,
  `cuiReason` text,
  `cuiPropAdjust` text,
  `cuiJobMask` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cuiCKey` (`cuiCKey`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `death`
--

DROP TABLE IF EXISTS `death`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `death` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pod` text NOT NULL COMMENT 'Place of death',
  `coord` text NOT NULL COMMENT 'X, Y, Z POD',
  `tod` datetime NOT NULL COMMENT 'Time of death',
  `job` text NOT NULL,
  `special` text NOT NULL,
  `name` text NOT NULL,
  `byondkey` text NOT NULL,
  `laname` text NOT NULL COMMENT 'Last attacker name',
  `lakey` text NOT NULL COMMENT 'Last attacker key',
  `gender` text NOT NULL,
  `bruteloss` int(11) NOT NULL,
  `brainloss` int(11) NOT NULL,
  `fireloss` int(11) NOT NULL,
  `oxyloss` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=166546 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `donators`
--

DROP TABLE IF EXISTS `donators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donators` (
  `patreon_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tier` int(2),
  `ckey` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Manual Field',
  `start_date` datetime,
  `end_date` datetime,
  `active` boolean,
  PRIMARY KEY (`patreon_name`),
  KEY `ckey` (`ckey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ckey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Administrator',
  `level` int(2) NOT NULL DEFAULT '0',
  `flags` int(16) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ckey` (`ckey`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `adminckey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adminip` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adminckey` (`adminckey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ban`
--

DROP TABLE IF EXISTS `ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bantime` datetime NOT NULL,
  `serverip` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bantype` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `rounds` int(11) DEFAULT NULL,
  `expiration_time` datetime NOT NULL,
  `ckey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `computerid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_ckey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_computerid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_ip` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `who` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `adminwho` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `edits` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unbanned` tinyint(1) DEFAULT NULL,
  `unbanned_datetime` datetime DEFAULT NULL,
  `unbanned_ckey` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unbanned_computerid` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unbanned_ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ckey` (`ckey`),
  KEY `computerid` (`computerid`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=58903 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `round_id` int(8) NOT NULL,
  `var_name` varchar(32) NOT NULL,
  `var_value` int(16) DEFAULT NULL,
  `details` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=257638 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ckey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstseen` datetime NOT NULL,
  `lastseen` datetime NOT NULL,
  `ip` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `computerid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastadminrank` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Player',
  `ooccolor` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT '#b82e00',
  `UI_style` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'Midnight',
  `UI_style_color` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT '#ffffff',
  `UI_style_alpha` smallint(4) DEFAULT '255',
  `be_role` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_slot` smallint(4) DEFAULT '1',
  `toggles` int(11) DEFAULT NULL,
  `toggles_2` int(11) DEFAULT '0',
  `sound` mediumint(8) DEFAULT '31',
  `volume` smallint(4) DEFAULT '100',
  `lastchangelog` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `exp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clientfps` smallint(4) DEFAULT '0',
  `atklog` smallint(4) DEFAULT '0',
  `fuid` bigint(20) DEFAULT NULL,
  `fupdate` smallint(4) DEFAULT '0',
  `parallax` tinyint(1) DEFAULT '8',
  `byond_date` DATE DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`ckey`),
  KEY `lastseen` (`lastseen`),
  KEY `computerid` (`computerid`),
  KEY `ip` (`ip`),
  KEY `fuid` (`fuid`),
  KEY `fupdate` (`fupdate`)
) ENGINE=InnoDB AUTO_INCREMENT=135298 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `poll_option`
--

DROP TABLE IF EXISTS `poll_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `percentagecalc` tinyint(1) NOT NULL DEFAULT '1',
  `minval` int(3) DEFAULT NULL,
  `maxval` int(3) DEFAULT NULL,
  `descmin` varchar(32) DEFAULT NULL,
  `descmid` varchar(32) DEFAULT NULL,
  `descmax` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `poll_question`
--

DROP TABLE IF EXISTS `poll_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `polltype` varchar(16) NOT NULL DEFAULT 'OPTION',
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `question` varchar(255) NOT NULL,
  `adminonly` tinyint(1) DEFAULT '0',
  `multiplechoiceoptions` int(2) DEFAULT NULL,
  `createdby_ckey` varchar(45) NULL DEFAULT NULL,
  `createdby_ip` varchar(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `poll_textreply`
--

DROP TABLE IF EXISTS `poll_textreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_textreply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `pollid` int(11) NOT NULL,
  `ckey` varchar(32) NOT NULL,
  `ip` varchar(18) NOT NULL,
  `replytext` text NOT NULL,
  `adminrank` varchar(32) NOT NULL DEFAULT 'Player',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `poll_vote`
--

DROP TABLE IF EXISTS `poll_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `pollid` int(11) NOT NULL,
  `optionid` int(11) NOT NULL,
  `ckey` varchar(255) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `adminrank` varchar(32) NOT NULL,
  `rating` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `privacy`
--

DROP TABLE IF EXISTS `privacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privacy` (
  `ckey` varchar(32) NOT NULL,
  `datetime` datetime NOT NULL,
  `consent` bit(1) NOT NULL,
  PRIMARY KEY (`ckey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `karma`
--

DROP TABLE IF EXISTS `karma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `karma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spendername` text NOT NULL,
  `spenderkey` text NOT NULL,
  `receivername` text NOT NULL,
  `receiverkey` text NOT NULL,
  `receiverrole` text,
  `receiverspecial` text,
  `isnegative` tinyint(1) DEFAULT NULL,
  `spenderip` text NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73614 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `karmatotals`
--

DROP TABLE IF EXISTS `karmatotals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `karmatotals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `byondkey` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `karma` int(11) NOT NULL,
  `karmaspent` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `byondkey` (`byondkey`)
) ENGINE=MyISAM AUTO_INCREMENT=25715 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ckey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flagged` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ckey` (`ckey`),
  KEY `flagged` (`flagged`)
) ENGINE=MyISAM AUTO_INCREMENT=4537 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `legacy_population`
--

DROP TABLE IF EXISTS `legacy_population`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `legacy_population` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playercount` int(11) DEFAULT NULL,
  `admincount` int(11) DEFAULT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2550 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `whitelist`
--

DROP TABLE IF EXISTS `whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ckey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `species` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ckey` (`ckey`)
) ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Table structure for table `watch`
--

DROP TABLE IF EXISTS `watch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watch` (
  `ckey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  `adminckey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_editor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edits` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ckey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ckey` varchar(32) NOT NULL,
  `notetext` text NOT NULL,
  `timestamp` datetime NOT NULL,
  `adminckey` varchar(32) NOT NULL,
  `last_editor` varchar(32),
  `edits` text,
  `server` varchar(50) NOT NULL,
  `crew_playtime` mediumint(8) UNSIGNED DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ckey` (`ckey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `memo`
--

DROP TABLE IF EXISTS `memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memo` (
  `ckey` varchar(32) NOT NULL,
  `memotext` text NOT NULL,
  `timestamp` datetime NOT NULL,
  `last_editor` varchar(32),
  `edits` text,
  PRIMARY KEY (`ckey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ipintel`
--
DROP TABLE IF EXISTS `ipintel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE  `ipintel` (
  `ip` int UNSIGNED NOT NULL,
  `date` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
  `intel` real NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vpn_whitelist`
--
DROP TABLE IF EXISTS `vpn_whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vpn_whitelist` (
  `ckey` varchar(32) NOT NULL,
  `reason` text,
  PRIMARY KEY (`ckey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oauth_tokens`
--
DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_tokens` (
  `ckey` varchar(32) NOT NULL,
  `token` varchar(32) NOT NULL,
  PRIMARY KEY (`token`),
  KEY `ckey` (`ckey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `playtime_history`
--
DROP TABLE IF EXISTS `playtime_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playtime_history` (
  `ckey` varchar(32) NOT NULL,
  `date` DATE NOT NULL,
  `time_living` SMALLINT NOT NULL,
  `time_ghost` SMALLINT NOT NULL,
  PRIMARY KEY (`ckey`, `date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `connection_log`
--
DROP TABLE IF EXISTS `connection_log`;
CREATE TABLE `connection_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `ckey` varchar(32) NOT NULL,
  `ip` varchar(32) NOT NULL,
  `computerid` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ckey` (`ckey`),
  KEY `ip` (`ip`),
  KEY `computerid` (`computerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `changelog`
--
DROP TABLE IF EXISTS `changelog`;
CREATE TABLE `changelog` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`pr_number` INT(11) NOT NULL,
	`date_merged` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`author` VARCHAR(32) NOT NULL,
	`cl_type` ENUM('FIX','WIP','TWEAK','SOUNDADD','SOUNDDEL','CODEADD','CODEDEL','IMAGEADD','IMAGEDEL','SPELLCHECK','EXPERIMENT') NOT NULL,
	`cl_entry` TEXT NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `ip2group`
--
DROP TABLE IF EXISTS `ip2group`;
CREATE TABLE `ip2group` (
  `ip` varchar (18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
  `groupstr` varchar (32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ip`),
  KEY `groupstr` (`groupstr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

