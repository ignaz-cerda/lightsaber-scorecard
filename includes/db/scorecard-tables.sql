SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ScorecardV5`
--

-- --------------------------------------------------------
use ScorecardV5;

--
-- Table structure for table `eventAttacks`
--

CREATE TABLE `eventAttacks` (
  `tableID` int(10) UNSIGNED NOT NULL,
  `tournamentID` int(10) UNSIGNED NOT NULL,
  `attackPrefix` int(10) UNSIGNED DEFAULT NULL,
  `attackTarget` int(10) UNSIGNED DEFAULT NULL,
  `attackType` int(10) UNSIGNED DEFAULT NULL,
  `attackPoints` float NOT NULL DEFAULT '0',
  `attackNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventAttributes`
--

CREATE TABLE `eventAttributes` (
  `attributeID` int(10) UNSIGNED NOT NULL,
  `attributeBool` tinyint(1) DEFAULT NULL,
  `attributeText` text,
  `tournamentID` int(10) UNSIGNED NOT NULL,
  `attributeType` varchar(255) NOT NULL,
  `attributeValue` float DEFAULT NULL,
  `attributeGroupSet` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventBurgeeComponents`
--

CREATE TABLE `eventBurgeeComponents` (
  `burgeeComponentID` int(10) UNSIGNED NOT NULL,
  `burgeeID` int(10) UNSIGNED NOT NULL,
  `tournamentID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventBurgeePlacings`
--

CREATE TABLE `eventBurgeePlacings` (
  `burgeePlaceID` int(10) UNSIGNED NOT NULL,
  `burgeeID` int(10) UNSIGNED NOT NULL,
  `schoolID` int(10) UNSIGNED NOT NULL,
  `rosterID` int(10) UNSIGNED NOT NULL,
  `tournamentID` int(11) UNSIGNED NOT NULL,
  `burgeePoints` int(11) DEFAULT '0',
  `placingName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventBurgees`
--

CREATE TABLE `eventBurgees` (
  `burgeeID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `burgeeRankingID` int(10) UNSIGNED NOT NULL,
  `burgeeName` varchar(255) NOT NULL,
  `hideBurgee` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventCutStandards`
--

CREATE TABLE `eventCutStandards` (
  `qualID` int(10) UNSIGNED NOT NULL,
  `tournamentID` int(10) UNSIGNED NOT NULL,
  `standardID` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `qualValue` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventDefaults`
--

CREATE TABLE `eventDefaults` (
  `tableID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `color1ID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `color2ID` int(10) UNSIGNED NOT NULL DEFAULT '2',
  `maxPoolSize` int(10) UNSIGNED NOT NULL DEFAULT '5',
  `maxDoubleHits` int(10) UNSIGNED NOT NULL DEFAULT '3',
  `normalizePoolSize` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `allowTies` tinyint(1) NOT NULL DEFAULT '0',
  `nameDisplay` varchar(255) NOT NULL DEFAULT 'firstName',
  `tournamentDisplay` varchar(255) NOT NULL DEFAULT 'weapon',
  `tournamentSorting` varchar(255) NOT NULL DEFAULT 'numGrouped',
  `useControlPoint` int(11) NOT NULL DEFAULT '0',
  `staffCompetency` int(11) NOT NULL DEFAULT '0',
  `addStaff` tinyint(1) NOT NULL DEFAULT '0',
  `staffHoursTarget` int(11) NOT NULL DEFAULT '0',
  `limitStaffConflicts` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventDescriptions`
--

CREATE TABLE `eventDescriptions` (
  `eventDescriptionID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventEventOptions`
--

CREATE TABLE `eventEventOptions` (
  `eventOptionID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `optionID` int(10) UNSIGNED NOT NULL,
  `optionValue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventExchanges`
--

CREATE TABLE `eventExchanges` (
  `exchangeID` int(10) UNSIGNED NOT NULL,
  `matchID` int(10) UNSIGNED DEFAULT NULL,
  `exchangeType` varchar(255) NOT NULL,
  `scoringID` int(10) UNSIGNED DEFAULT NULL,
  `receivingID` int(10) UNSIGNED DEFAULT NULL,
  `scoreValue` float DEFAULT NULL,
  `scoreDeduction` float DEFAULT NULL,
  `exchangeNumber` int(11) NOT NULL DEFAULT '0',
  `exchangeTime` int(11) DEFAULT NULL,
  `refPrefix` int(10) UNSIGNED DEFAULT NULL,
  `refTarget` int(10) UNSIGNED DEFAULT NULL,
  `refType` int(10) UNSIGNED DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventGroupRankings`
--

CREATE TABLE `eventGroupRankings` (
  `groupRankingID` int(10) UNSIGNED NOT NULL,
  `groupID` int(10) UNSIGNED NOT NULL,
  `groupRank` int(11) NOT NULL,
  `overlapSize` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventGroupRoster`
--

CREATE TABLE `eventGroupRoster` (
  `tableID` int(10) UNSIGNED NOT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `rosterID` int(10) UNSIGNED DEFAULT NULL,
  `poolPosition` int(10) UNSIGNED DEFAULT NULL,
  `participantStatus` varchar(255) DEFAULT 'normal',
  `tournamentTableID` int(10) UNSIGNED DEFAULT NULL,
  `groupCheckIn` tinyint(1) NOT NULL DEFAULT '0',
  `groupGearCheck` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventGroups`
--

CREATE TABLE `eventGroups` (
  `groupID` int(10) UNSIGNED NOT NULL,
  `tournamentID` int(10) UNSIGNED NOT NULL,
  `groupType` varchar(255) NOT NULL,
  `groupNumber` int(11) DEFAULT NULL,
  `groupName` varchar(255) DEFAULT NULL,
  `groupSet` int(11) NOT NULL DEFAULT '1',
  `bracketLevels` tinyint(4) DEFAULT NULL,
  `numFighters` int(10) UNSIGNED DEFAULT NULL,
  `groupStatus` varchar(255) DEFAULT NULL,
  `groupComplete` tinyint(1) NOT NULL DEFAULT '0',
  `locationID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventHemaRatingsInfo`
--

CREATE TABLE `eventHemaRatingsInfo` (
  `hemaRatingInfoID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `organizingSchool` int(10) UNSIGNED DEFAULT NULL,
  `socialMediaLink` text,
  `photoLink` text,
  `submitterName` varchar(255) DEFAULT NULL,
  `submitterEmail` varchar(255) DEFAULT NULL,
  `organizerName` varchar(255) DEFAULT NULL,
  `eventConform` tinyint(1) DEFAULT NULL,
  `allMatchesFought` tinyint(1) DEFAULT NULL,
  `missingMatches` tinyint(1) DEFAULT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventIgnores`
--

CREATE TABLE `eventIgnores` (
  `ignoreID` int(11) NOT NULL,
  `tournamentID` int(10) UNSIGNED NOT NULL,
  `rosterID` int(10) UNSIGNED NOT NULL,
  `ignoreAtSet` int(11) NOT NULL DEFAULT '0',
  `stopAtSet` int(11) NOT NULL DEFAULT '0',
  `soloAtSet` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventMatches`
--

CREATE TABLE `eventMatches` (
  `matchID` int(10) UNSIGNED NOT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `matchNumber` int(10) UNSIGNED DEFAULT NULL,
  `fighter1ID` int(10) UNSIGNED DEFAULT NULL,
  `fighter2ID` int(10) UNSIGNED DEFAULT NULL,
  `winnerID` int(10) UNSIGNED DEFAULT NULL,
  `fighter1Score` float DEFAULT NULL,
  `fighter2Score` float DEFAULT NULL,
  `bracketPosition` int(10) UNSIGNED DEFAULT NULL,
  `bracketLevel` int(10) UNSIGNED DEFAULT NULL,
  `matchComplete` tinyint(1) DEFAULT '0',
  `signOff1` tinyint(1) NOT NULL DEFAULT '0',
  `signOff2` tinyint(1) NOT NULL DEFAULT '0',
  `ignoreMatch` tinyint(1) DEFAULT '0',
  `reversedColors` tinyint(1) NOT NULL DEFAULT '0',
  `matchTime` int(11) DEFAULT NULL,
  `isPlaceholder` tinyint(1) NOT NULL DEFAULT '0',
  `placeholderMatchID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventMatchOptions`
--

CREATE TABLE `eventMatchOptions` (
  `matchOptionID` int(10) UNSIGNED NOT NULL,
  `matchID` int(10) UNSIGNED NOT NULL,
  `optionID` int(10) UNSIGNED NOT NULL,
  `optionValue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventPenaltyDisabled`
--

CREATE TABLE `eventPenaltyDisabled` (
  `penaltyDisabledID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `attackID` int(10) UNSIGNED NOT NULL,
  `isDisabled` tinyint(1) NOT NULL DEFAULT '0',
  `isNonSafety` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventPlacings`
--

CREATE TABLE `eventPlacings` (
  `placeID` int(10) UNSIGNED NOT NULL,
  `tournamentID` int(10) UNSIGNED NOT NULL,
  `rosterID` int(10) UNSIGNED NOT NULL,
  `placing` int(11) NOT NULL,
  `highBound` int(11) DEFAULT NULL,
  `lowBound` int(11) DEFAULT NULL,
  `placeType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventPublication`
--

CREATE TABLE `eventPublication` (
  `publicationID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `publishDescription` tinyint(1) NOT NULL DEFAULT '0',
  `publishRoster` tinyint(1) NOT NULL DEFAULT '0',
  `publishSchedule` tinyint(1) NOT NULL DEFAULT '0',
  `publishMatches` tinyint(1) NOT NULL DEFAULT '0',
  `publishRules` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventRatings`
--

CREATE TABLE `eventRatings` (
  `ratingID` int(10) UNSIGNED NOT NULL,
  `tournamentRosterID` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `subGroupNum` int(11) NOT NULL DEFAULT '0',
  `rating2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventRoster`
--

CREATE TABLE `eventRoster` (
  `rosterID` int(10) UNSIGNED NOT NULL,
  `systemRosterID` int(10) UNSIGNED DEFAULT NULL,
  `eventID` int(10) UNSIGNED DEFAULT NULL,
  `schoolID` int(10) UNSIGNED DEFAULT NULL,
  `publicNotes` text,
  `privateNotes` text,
  `isTeam` tinyint(1) NOT NULL DEFAULT '0',
  `eventCheckIn` tinyint(1) NOT NULL DEFAULT '0',
  `eventWaiver` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventRosterAdditional`
--

CREATE TABLE `eventRosterAdditional` (
  `additionalRosterID` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `registrationType` int(11) NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `eventWaiver` tinyint(1) NOT NULL DEFAULT '0',
  `eventCheckIn` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventRules`
--

CREATE TABLE `eventRules` (
  `rulesID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `rulesName` varchar(255) DEFAULT NULL,
  `rulesOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rulesText` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventRulesLinks`
--

CREATE TABLE `eventRulesLinks` (
  `rulesLinkID` int(10) UNSIGNED NOT NULL,
  `rulesID` int(10) UNSIGNED NOT NULL,
  `tournamentID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventScoresheets`
--

CREATE TABLE `eventScoresheets` (
  `scoresheetID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED DEFAULT NULL,
  `tournamentID` int(10) UNSIGNED DEFAULT NULL,
  `matchID` int(10) UNSIGNED DEFAULT NULL,
  `scoresheet` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventSettings`
--

CREATE TABLE `eventSettings` (
  `eventSettingID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `organizerEmail` varchar(255) DEFAULT NULL,
  `termsOfUseAccepted` tinyint(1) NOT NULL DEFAULT '0',
  `staffPassword` varchar(255) DEFAULT NULL,
  `organizerPassword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventSponsors`
--

CREATE TABLE `eventSponsors` (
  `eventSponsorID` int(10) UNSIGNED NOT NULL,
  `sponsorID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `eventSponsorPercent` int(11) NOT NULL DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventStandings`
--

CREATE TABLE `eventStandings` (
  `standingID` int(10) UNSIGNED NOT NULL,
  `tournamentID` int(10) UNSIGNED DEFAULT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `rosterID` int(10) UNSIGNED DEFAULT NULL,
  `groupType` varchar(255) NOT NULL,
  `groupSet` int(11) NOT NULL DEFAULT '1',
  `normalized` tinyint(1) DEFAULT '0',
  `rank` int(11) DEFAULT NULL,
  `score` float DEFAULT '0',
  `matches` float DEFAULT '0',
  `wins` float DEFAULT '0',
  `losses` float DEFAULT '0',
  `ties` float NOT NULL DEFAULT '0',
  `pointsFor` float DEFAULT '0',
  `pointsAgainst` float DEFAULT '0',
  `hitsFor` float DEFAULT '0',
  `hitsAgainst` float DEFAULT '0',
  `afterblowsFor` float DEFAULT '0',
  `afterblowsAgainst` float DEFAULT '0',
  `doubles` float DEFAULT '0',
  `noExchanges` float DEFAULT '0',
  `AbsPointsFor` float DEFAULT '0',
  `AbsPointsAgainst` float DEFAULT '0',
  `AbsPointsAwarded` float NOT NULL DEFAULT '0',
  `numPenalties` float DEFAULT '0',
  `numYellowCards` int(11) NOT NULL DEFAULT '0',
  `numRedCards` int(11) NOT NULL DEFAULT '0',
  `penaltiesAgainstOpponents` float DEFAULT '0',
  `penaltiesAgainst` float DEFAULT '0',
  `doubleOuts` float DEFAULT '0',
  `ignoreForBracket` tinyint(1) NOT NULL DEFAULT '0',
  `basePointValue` int(11) NOT NULL DEFAULT '0',
  `numCleanHits` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventTeamRoster`
--

CREATE TABLE `eventTeamRoster` (
  `tableID` int(10) UNSIGNED NOT NULL,
  `teamID` int(10) UNSIGNED DEFAULT NULL,
  `rosterID` int(10) UNSIGNED DEFAULT NULL,
  `tournamentRosterID` int(10) UNSIGNED DEFAULT NULL,
  `memberRole` varchar(255) NOT NULL DEFAULT 'member',
  `memberName` varchar(255) DEFAULT NULL,
  `teamOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventTournamentCompGroupItems`
--

CREATE TABLE `eventTournamentCompGroupItems` (
  `componentGroupItemID` int(10) UNSIGNED NOT NULL,
  `componentGroupID` int(10) UNSIGNED NOT NULL,
  `tournamentComponentID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventTournamentCompGroups`
--

CREATE TABLE `eventTournamentCompGroups` (
  `componentGroupID` int(10) UNSIGNED NOT NULL,
  `metaTournamentID` int(10) UNSIGNED NOT NULL,
  `usedComponents` int(11) NOT NULL DEFAULT '0',
  `numComponents` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventTournamentComponents`
--

CREATE TABLE `eventTournamentComponents` (
  `tournamentComponentID` int(10) UNSIGNED NOT NULL,
  `metaTournamentID` int(10) UNSIGNED NOT NULL,
  `componentTournamentID` int(10) UNSIGNED NOT NULL,
  `useResult` tinyint(1) NOT NULL DEFAULT '0',
  `useRoster` tinyint(1) NOT NULL DEFAULT '0',
  `ignoreRoster` tinyint(1) NOT NULL DEFAULT '0',
  `resultsCalculated` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventTournamentDivisions`
--

CREATE TABLE `eventTournamentDivisions` (
  `divisionID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `divisionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `groupBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventTournamentDivItems`
--

CREATE TABLE `eventTournamentDivItems` (
  `divisionItemID` int(10) UNSIGNED NOT NULL,
  `divisionID` int(10) UNSIGNED NOT NULL,
  `tournamentID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventTournamentOptions`
--

CREATE TABLE `eventTournamentOptions` (
  `tournamentOptionID` int(10) UNSIGNED NOT NULL,
  `tournamentID` int(10) UNSIGNED NOT NULL,
  `optionID` int(10) UNSIGNED NOT NULL,
  `optionValue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventTournamentOrder`
--

CREATE TABLE `eventTournamentOrder` (
  `tournamentOrderID` int(10) UNSIGNED NOT NULL,
  `tournamentID` int(10) UNSIGNED NOT NULL,
  `sortOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventTournamentRoster`
--

CREATE TABLE `eventTournamentRoster` (
  `tournamentRosterID` int(10) UNSIGNED NOT NULL,
  `tournamentID` int(10) UNSIGNED DEFAULT NULL,
  `rosterID` int(10) UNSIGNED DEFAULT NULL,
  `tournamentCheckIn` tinyint(1) NOT NULL DEFAULT '0',
  `tournamentGearCheck` tinyint(1) NOT NULL DEFAULT '0',
  `tournamentOtherCheck` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventTournaments`
--

CREATE TABLE `eventTournaments` (
  `tournamentID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `tournamentWeaponID` int(10) UNSIGNED NOT NULL,
  `tournamentPrefixID` int(10) UNSIGNED DEFAULT NULL,
  `tournamentGenderID` int(10) UNSIGNED DEFAULT NULL,
  `tournamentMaterialID` int(10) UNSIGNED DEFAULT NULL,
  `tournamentSuffixID` int(10) UNSIGNED DEFAULT NULL,
  `tournamentRankingID` int(10) UNSIGNED DEFAULT NULL,
  `doubleTypeID` int(10) UNSIGNED DEFAULT '2',
  `formatID` int(10) UNSIGNED DEFAULT '2',
  `numGroupSets` int(11) NOT NULL DEFAULT '1',
  `numParticipants` int(10) UNSIGNED DEFAULT '0',
  `normalizePoolSize` int(11) DEFAULT '0',
  `color1ID` int(10) UNSIGNED DEFAULT '1',
  `color2ID` int(10) UNSIGNED DEFAULT '2',
  `maxPoolSize` int(10) UNSIGNED NOT NULL DEFAULT '5',
  `maxDoubleHits` int(10) UNSIGNED NOT NULL DEFAULT '3',
  `maximumExchanges` int(11) DEFAULT NULL,
  `maximumPoints` int(11) DEFAULT NULL,
  `maxPointSpread` int(11) NOT NULL DEFAULT '0',
  `basePointValue` int(11) NOT NULL DEFAULT '0',
  `allowTies` tinyint(1) NOT NULL DEFAULT '0',
  `timerCountdown` tinyint(1) NOT NULL DEFAULT '0',
  `isCuttingQual` tinyint(1) NOT NULL DEFAULT '0',
  `isFinalized` tinyint(1) NOT NULL DEFAULT '0',
  `timeLimit` int(11) NOT NULL DEFAULT '0',
  `isNotNetScore` tinyint(1) NOT NULL DEFAULT '0',
  `isReverseScore` int(11) NOT NULL DEFAULT '0',
  `overrideDoubleType` tinyint(1) NOT NULL DEFAULT '0',
  `isPrivate` tinyint(1) NOT NULL DEFAULT '0',
  `isTeams` tinyint(1) NOT NULL DEFAULT '0',
  `logicMode` varchar(255) DEFAULT NULL,
  `poolWinnersFirst` int(11) NOT NULL DEFAULT '0',
  `limitPoolMatches` int(11) NOT NULL DEFAULT '0',
  `checkInStaff` int(11) NOT NULL DEFAULT '0',
  `hideFinalResults` tinyint(1) NOT NULL DEFAULT '0',
  `numSubMatches` int(11) NOT NULL DEFAULT '0',
  `subMatchMode` int(11) NOT NULL DEFAULT '0',
  `requireSignOff` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventVideo`
--

CREATE TABLE `eventVideo` (
  `videoID` int(10) UNSIGNED NOT NULL,
  `videoType` int(11) NOT NULL,
  `sourceType` int(11) NOT NULL,
  `sourceLink` varchar(255) DEFAULT NULL,
  `matchID` int(11) UNSIGNED DEFAULT NULL,
  `synchTime` int(11) DEFAULT NULL,
  `synchTime2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventVideoStreams`
--

CREATE TABLE `eventVideoStreams` (
  `streamID` int(10) UNSIGNED NOT NULL,
  `videoID` int(10) UNSIGNED DEFAULT NULL,
  `locationID` int(10) UNSIGNED DEFAULT NULL,
  `isLive` tinyint(1) NOT NULL DEFAULT '0',
  `overlayEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `overlayOpacity` int(11) NOT NULL DEFAULT '70'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsAnnouncements`
--

CREATE TABLE `logisticsAnnouncements` (
  `announcementID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED DEFAULT NULL,
  `message` text NOT NULL,
  `displayUntil` int(32) UNSIGNED NOT NULL,
  `visibility` varchar(20) NOT NULL DEFAULT 'all'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsBlockAttributes`
--

CREATE TABLE `logisticsBlockAttributes` (
  `blockAttributeID` int(10) UNSIGNED NOT NULL,
  `blockID` int(10) UNSIGNED NOT NULL,
  `blockAttributeType` varchar(255) DEFAULT NULL,
  `blockAttributeText` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsFaq`
--

CREATE TABLE `logisticsFaq` (
  `faqID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `faqQuestion` text,
  `faqAnswer` text,
  `faqOrder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsInstructors`
--

CREATE TABLE `logisticsInstructors` (
  `instructorID` int(10) UNSIGNED NOT NULL,
  `rosterID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `instructorBio` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsLocations`
--

CREATE TABLE `logisticsLocations` (
  `locationID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `locationNameShort` varchar(255) DEFAULT NULL,
  `hasMatches` tinyint(1) NOT NULL DEFAULT '1',
  `hasClasses` tinyint(1) NOT NULL DEFAULT '1',
  `locationOrder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsLocationsBlocks`
--

CREATE TABLE `logisticsLocationsBlocks` (
  `blockLocationID` int(10) UNSIGNED NOT NULL,
  `blockID` int(10) UNSIGNED NOT NULL,
  `locationID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsLocationsMatches`
--

CREATE TABLE `logisticsLocationsMatches` (
  `matchLocationID` int(10) UNSIGNED NOT NULL,
  `locationID` int(10) UNSIGNED DEFAULT NULL,
  `matchID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsParticipantIds`
--

CREATE TABLE `logisticsParticipantIds` (
  `tableID` int(10) UNSIGNED NOT NULL,
  `rosterID` int(10) UNSIGNED NOT NULL,
  `participantID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsRoleCompetency`
--

CREATE TABLE `logisticsRoleCompetency` (
  `roleCompetencyID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `logisticsRoleID` int(10) UNSIGNED NOT NULL,
  `roleCompetency` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsScheduleBlocks`
--

CREATE TABLE `logisticsScheduleBlocks` (
  `blockID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `dayNum` int(11) NOT NULL,
  `startTime` int(11) NOT NULL,
  `endTime` int(11) NOT NULL,
  `blockTypeID` int(10) UNSIGNED NOT NULL,
  `tournamentID` int(10) UNSIGNED DEFAULT NULL,
  `blockTitle` varchar(255) DEFAULT NULL,
  `blockSubtitle` varchar(255) DEFAULT NULL,
  `blockDescription` text,
  `blockLink` text,
  `blockLinkDescription` varchar(255) DEFAULT NULL,
  `suppressConflicts` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsScheduleShifts`
--

CREATE TABLE `logisticsScheduleShifts` (
  `shiftID` int(10) UNSIGNED NOT NULL,
  `blockID` int(10) UNSIGNED NOT NULL,
  `locationID` int(10) UNSIGNED NOT NULL,
  `startTime` int(11) NOT NULL,
  `endTime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsStaffCompetency`
--

CREATE TABLE `logisticsStaffCompetency` (
  `staffCompetencyID` int(10) UNSIGNED NOT NULL,
  `rosterID` int(10) UNSIGNED NOT NULL,
  `staffCompetency` int(11) NOT NULL DEFAULT '0',
  `staffHoursTarget` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsStaffMatches`
--

CREATE TABLE `logisticsStaffMatches` (
  `matchStaffID` int(10) UNSIGNED NOT NULL,
  `matchID` int(10) UNSIGNED NOT NULL,
  `rosterID` int(10) UNSIGNED NOT NULL,
  `logisticsRoleID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsStaffMatchMultipliers`
--

CREATE TABLE `logisticsStaffMatchMultipliers` (
  `matchMultiplierID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL,
  `logisticsRoleID` int(10) UNSIGNED NOT NULL,
  `matchMultiplier` float NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsStaffShifts`
--

CREATE TABLE `logisticsStaffShifts` (
  `staffShiftID` int(10) UNSIGNED NOT NULL,
  `shiftID` int(10) UNSIGNED NOT NULL,
  `rosterID` int(10) UNSIGNED NOT NULL,
  `logisticsRoleID` int(10) UNSIGNED DEFAULT NULL,
  `checkedIn` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logisticsStaffTemplates`
--

CREATE TABLE `logisticsStaffTemplates` (
  `staffTemplateID` int(10) UNSIGNED NOT NULL,
  `tournamentID` int(10) UNSIGNED NOT NULL,
  `logisticsRoleID` int(10) UNSIGNED NOT NULL,
  `numStaff` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `systemAttacks`
--

CREATE TABLE `systemAttacks` (
  `attackID` int(10) UNSIGNED NOT NULL,
  `attackClass` varchar(255) NOT NULL,
  `attackCode` varchar(255) NOT NULL,
  `attackText` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `systemBlockTypes`
--

CREATE TABLE `systemBlockTypes` (
  `blockTypeID` int(10) UNSIGNED NOT NULL,
  `typeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `systemBurgees`
--

CREATE TABLE `systemBurgees` (
  `burgeeRankingID` int(10) UNSIGNED NOT NULL,
  `rankingName` varchar(255) NOT NULL,
  `functionName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `systemColors`
--

CREATE TABLE `systemColors` (
  `colorID` int(10) UNSIGNED NOT NULL,
  `colorName` varchar(255) NOT NULL,
  `colorCode` varchar(255) NOT NULL,
  `contrastCode` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `systemCountries`
--

CREATE TABLE `systemCountries` (
  `countryIso2` varchar(2) NOT NULL,
  `countryTitle` varchar(80) DEFAULT NULL,
  `countryName` varchar(80) NOT NULL,
  `countryIso3` char(3) DEFAULT NULL,
  `countryNumCode` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `systemCutQualifications`
--

CREATE TABLE `systemCutQualifications` (
  `qualID` int(10) UNSIGNED NOT NULL,
  `systemRosterID` int(10) UNSIGNED DEFAULT NULL,
  `standardID` int(10) UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `qualValue` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `systemCutStandards`
--

CREATE TABLE `systemCutStandards` (
  `standardID` int(10) UNSIGNED NOT NULL,
  `standardName` varchar(255) NOT NULL,
  `standardCode` varchar(255) NOT NULL,
  `standardText` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `systemDoubleTypes`
--

CREATE TABLE `systemDoubleTypes` (
  `doubleTypeID` int(10) UNSIGNED NOT NULL,
  `doubleTypeName` varchar(255) NOT NULL,
  `doublesDisabled` tinyint(1) NOT NULL,
  `afterblowDisabled` tinyint(1) NOT NULL,
  `afterblowType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `systemEvents`
--

CREATE TABLE `systemEvents` (
  `eventID` int(10) UNSIGNED NOT NULL,
  `eventName` varchar(255) NOT NULL,
  `eventAbbreviation` varchar(255) DEFAULT NULL,
  `eventYear` smallint(6) DEFAULT NULL,
  `eventStartDate` date DEFAULT NULL,
  `eventEndDate` date DEFAULT NULL,
  `regionCode` int(11) DEFAULT NULL,
  `countryIso2` varchar(2) NOT NULL DEFAULT 'AQ',
  `eventProvince` varchar(255) DEFAULT NULL,
  `eventCity` varchar(255) DEFAULT NULL,
  `eventStatus` varchar(255) NOT NULL DEFAULT 'active',
  `isArchived` tinyint(1) NOT NULL DEFAULT '0',
  `limitStaffConflicts` int(11) NOT NULL DEFAULT '0',
  `isMetaEvent` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `systemFormats`
--

CREATE TABLE `systemFormats` (
  `formatID` int(10) UNSIGNED NOT NULL,
  `formatName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `systemLogisticsRoles`
--

CREATE TABLE `systemLogisticsRoles` (
  `logisticsRoleID` int(10) UNSIGNED NOT NULL,
  `roleName` varchar(255) NOT NULL,
  `roleSortImportance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `systemMatchOrder`
--

CREATE TABLE `systemMatchOrder` (
  `tableID` int(10) UNSIGNED NOT NULL,
  `numberOfFighters` tinyint(4) DEFAULT NULL,
  `matchNumber` tinyint(4) DEFAULT NULL,
  `fighter1` tinyint(4) DEFAULT NULL,
  `fighter2` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Table structure for table `systemOptionsList`
--

CREATE TABLE `systemOptionsList` (
  `optionID` int(10) UNSIGNED NOT NULL,
  `optionEnum` varchar(255) NOT NULL,
  `optionName` varchar(255) NOT NULL,
  `optionType` varchar(255) NOT NULL,
  `optionDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `systemRankings`
--

CREATE TABLE `systemRankings` (
  `tournamentRankingID` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `formatID` int(10) UNSIGNED NOT NULL,
  `numberOfInstances` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text,
  `displayFunction` varchar(255) DEFAULT NULL,
  `scoringFunction` varchar(255) DEFAULT NULL,
  `scoreFormula` text,
  `orderByField1` varchar(255) NOT NULL DEFAULT 'score',
  `orderBySort1` varchar(255) NOT NULL DEFAULT 'DESC',
  `orderByField2` varchar(255) DEFAULT NULL,
  `orderBySort2` varchar(255) DEFAULT NULL,
  `orderByField3` varchar(255) DEFAULT NULL,
  `orderBySort3` varchar(255) DEFAULT NULL,
  `orderByField4` varchar(255) DEFAULT NULL,
  `orderBySort4` varchar(255) DEFAULT NULL,
  `displayTitle1` varchar(255) DEFAULT 'Score',
  `displayField1` varchar(255) DEFAULT 'score',
  `displayTitle2` varchar(255) DEFAULT NULL,
  `displayField2` varchar(255) DEFAULT NULL,
  `displayTitle3` varchar(255) DEFAULT NULL,
  `displayField3` varchar(255) DEFAULT NULL,
  `displayTitle4` varchar(255) DEFAULT NULL,
  `displayField4` varchar(255) DEFAULT NULL,
  `displayTitle5` varchar(255) DEFAULT NULL,
  `displayField5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `systemRoster`
--

CREATE TABLE `systemRoster` (
  `systemRosterID` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `schoolID` int(10) UNSIGNED DEFAULT NULL,
  `HemaRatingsID` int(10) UNSIGNED DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `rosterCountry` varchar(255) DEFAULT NULL,
  `rosterProvince` varchar(255) DEFAULT NULL,
  `rosterCity` varchar(255) DEFAULT NULL,
  `eMail` varchar(255) DEFAULT NULL,
  `publicNotes` text,
  `privateNotes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `systemRosterNotDuplicate`
--

CREATE TABLE `systemRosterNotDuplicate` (
  `tableID` int(10) UNSIGNED NOT NULL,
  `rosterID1` int(10) UNSIGNED NOT NULL,
  `rosterID2` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `systemSchools`
--

CREATE TABLE `systemSchools` (
  `schoolID` int(10) UNSIGNED NOT NULL,
  `schoolFullName` varchar(255) NOT NULL,
  `schoolShortName` varchar(255) DEFAULT NULL,
  `schoolBranch` varchar(255) DEFAULT NULL,
  `schoolAbbreviation` varchar(255) DEFAULT NULL,
  `schoolCity` varchar(255) DEFAULT NULL,
  `schoolProvince` varchar(255) DEFAULT NULL,
  `countryIso2` varchar(2) DEFAULT NULL,
  `schoolAddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `systemSponsors`
--

CREATE TABLE `systemSponsors` (
  `sponsorID` int(10) UNSIGNED NOT NULL,
  `sponsorName` varchar(255) NOT NULL,
  `sponsorType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `systemTournaments`
--

CREATE TABLE `systemTournaments` (
  `tournamentTypeID` int(10) UNSIGNED NOT NULL,
  `tournamentTypeMeta` varchar(255) DEFAULT NULL,
  `tournamentType` varchar(255) DEFAULT NULL,
  `Pool_Bracket` tinyint(1) NOT NULL DEFAULT '1',
  `Pool_Sets` tinyint(1) NOT NULL DEFAULT '1',
  `Scored_Event` tinyint(1) NOT NULL DEFAULT '1',
  `numberOfInstances` int(10) UNSIGNED DEFAULT NULL,
  `description` text,
  `functionName` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `systemUpdates`
--

CREATE TABLE `systemUpdates` (
  `updateID` int(10) UNSIGNED NOT NULL,
  `updateYear` int(11) NOT NULL,
  `updateText` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `systemUserEvents`
--

CREATE TABLE `systemUserEvents` (
  `userTournamentID` int(11) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `systemUsers`
--

CREATE TABLE `systemUsers` (
  `userID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) NOT NULL,
  `EVENT_VIDEO` tinyint(1) NOT NULL DEFAULT '0',
  `EVENT_SCOREKEEP` tinyint(1) NOT NULL DEFAULT '0',
  `EVENT_MANAGEMENT` tinyint(1) NOT NULL DEFAULT '0',
  `SOFTWARE_EVENT_SWITCHING` tinyint(1) NOT NULL DEFAULT '0',
  `SOFTWARE_ASSIST` tinyint(1) NOT NULL DEFAULT '0',
  `SOFTWARE_ADMIN` tinyint(1) NOT NULL DEFAULT '0',
  `STATS_EVENT` tinyint(1) NOT NULL DEFAULT '0',
  `STATS_ALL` tinyint(1) NOT NULL DEFAULT '0',
  `VIEW_HIDDEN` tinyint(1) NOT NULL DEFAULT '0',
  `VIEW_SETTINGS` tinyint(1) NOT NULL DEFAULT '0',
  `VIEW_EMAIL` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
