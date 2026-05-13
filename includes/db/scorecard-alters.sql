
--
-- Indexes for dumped tables
--

--
-- Indexes for table `eventAttacks`
--
ALTER TABLE `eventAttacks`
  ADD PRIMARY KEY (`tableID`),
  ADD KEY `tournamentID` (`tournamentID`,`attackTarget`,`attackType`),
  ADD KEY `attackTarget` (`attackTarget`),
  ADD KEY `attackType` (`attackType`),
  ADD KEY `attackPrefix` (`attackPrefix`);

--
-- Indexes for table `eventAttributes`
--
ALTER TABLE `eventAttributes`
  ADD PRIMARY KEY (`attributeID`),
  ADD KEY `tournamentID` (`tournamentID`);

--
-- Indexes for table `eventBurgeeComponents`
--
ALTER TABLE `eventBurgeeComponents`
  ADD PRIMARY KEY (`burgeeComponentID`),
  ADD KEY `tournamentID` (`tournamentID`),
  ADD KEY `burgeeID` (`burgeeID`);

--
-- Indexes for table `eventBurgeePlacings`
--
ALTER TABLE `eventBurgeePlacings`
  ADD PRIMARY KEY (`burgeePlaceID`),
  ADD KEY `tournamentID` (`burgeeID`),
  ADD KEY `schoolID` (`schoolID`),
  ADD KEY `rosterID` (`rosterID`),
  ADD KEY `tournamentID_2` (`tournamentID`);

--
-- Indexes for table `eventBurgees`
--
ALTER TABLE `eventBurgees`
  ADD PRIMARY KEY (`burgeeID`),
  ADD KEY `eventID` (`eventID`),
  ADD KEY `schoolTournamentRankingID` (`burgeeRankingID`);

--
-- Indexes for table `eventCutStandards`
--
ALTER TABLE `eventCutStandards`
  ADD PRIMARY KEY (`qualID`),
  ADD KEY `tournamentID` (`tournamentID`,`standardID`);

--
-- Indexes for table `eventDefaults`
--
ALTER TABLE `eventDefaults`
  ADD PRIMARY KEY (`tableID`),
  ADD KEY `eventID` (`eventID`),
  ADD KEY `color1ID` (`color1ID`),
  ADD KEY `color2ID` (`color2ID`);

--
-- Indexes for table `eventDescriptions`
--
ALTER TABLE `eventDescriptions`
  ADD PRIMARY KEY (`eventDescriptionID`),
  ADD KEY `eventID` (`eventID`);

--
-- Indexes for table `eventEventOptions`
--
ALTER TABLE `eventEventOptions`
  ADD PRIMARY KEY (`eventOptionID`),
  ADD KEY `eventID` (`eventID`),
  ADD KEY `optionID` (`optionID`);

--
-- Indexes for table `eventExchanges`
--
ALTER TABLE `eventExchanges`
  ADD PRIMARY KEY (`exchangeID`),
  ADD KEY `matchID` (`matchID`),
  ADD KEY `scorringID` (`scoringID`),
  ADD KEY `recievingID` (`receivingID`),
  ADD KEY `refPrefix` (`refPrefix`),
  ADD KEY `refTarget` (`refTarget`),
  ADD KEY `refType` (`refType`);

--
-- Indexes for table `eventGroupRankings`
--
ALTER TABLE `eventGroupRankings`
  ADD PRIMARY KEY (`groupRankingID`),
  ADD KEY `groupID` (`groupID`);

--
-- Indexes for table `eventGroupRoster`
--
ALTER TABLE `eventGroupRoster`
  ADD PRIMARY KEY (`tableID`),
  ADD KEY `rosterID` (`rosterID`),
  ADD KEY `groupID` (`groupID`),
  ADD KEY `tournamentTableID` (`tournamentTableID`);

--
-- Indexes for table `eventGroups`
--
ALTER TABLE `eventGroups`
  ADD PRIMARY KEY (`groupID`),
  ADD KEY `tournamentID` (`tournamentID`),
  ADD KEY `locationID` (`locationID`);

--
-- Indexes for table `eventHemaRatingsInfo`
--
ALTER TABLE `eventHemaRatingsInfo`
  ADD PRIMARY KEY (`hemaRatingInfoID`),
  ADD KEY `hemaRatingInfoID` (`hemaRatingInfoID`);

--
-- Indexes for table `eventIgnores`
--
ALTER TABLE `eventIgnores`
  ADD PRIMARY KEY (`ignoreID`),
  ADD KEY `tournamentID` (`tournamentID`),
  ADD KEY `rosterID` (`rosterID`);

--
-- Indexes for table `eventMatches`
--
ALTER TABLE `eventMatches`
  ADD PRIMARY KEY (`matchID`),
  ADD KEY `groupID` (`groupID`),
  ADD KEY `fighter1ID` (`fighter1ID`),
  ADD KEY `fighter2ID` (`fighter2ID`),
  ADD KEY `winnerID` (`winnerID`),
  ADD KEY `placeholderMatchID` (`placeholderMatchID`);

--
-- Indexes for table `eventMatchOptions`
--
ALTER TABLE `eventMatchOptions`
  ADD PRIMARY KEY (`matchOptionID`),
  ADD KEY `matchID` (`matchID`),
  ADD KEY `optionID` (`optionID`);

--
-- Indexes for table `eventPenaltyDisabled`
--
ALTER TABLE `eventPenaltyDisabled`
  ADD PRIMARY KEY (`penaltyDisabledID`),
  ADD KEY `eventID` (`eventID`),
  ADD KEY `attackID` (`attackID`);

--
-- Indexes for table `eventPlacings`
--
ALTER TABLE `eventPlacings`
  ADD PRIMARY KEY (`placeID`),
  ADD KEY `tournamentID` (`tournamentID`),
  ADD KEY `rosterID` (`rosterID`);

--
-- Indexes for table `eventPublication`
--
ALTER TABLE `eventPublication`
  ADD PRIMARY KEY (`publicationID`),
  ADD KEY `eventID` (`eventID`);

--
-- Indexes for table `eventRatings`
--
ALTER TABLE `eventRatings`
  ADD PRIMARY KEY (`ratingID`),
  ADD KEY `tournamentRosterID` (`tournamentRosterID`);

--
-- Indexes for table `eventRoster`
--
ALTER TABLE `eventRoster`
  ADD PRIMARY KEY (`rosterID`),
  ADD KEY `eventID` (`eventID`),
  ADD KEY `schoolID` (`schoolID`),
  ADD KEY `rosterID` (`systemRosterID`);

--
-- Indexes for table `eventRosterAdditional`
--
ALTER TABLE `eventRosterAdditional`
  ADD PRIMARY KEY (`additionalRosterID`),
  ADD KEY `eventID` (`eventID`);

--
-- Indexes for table `eventRules`
--
ALTER TABLE `eventRules`
  ADD PRIMARY KEY (`rulesID`),
  ADD KEY `eventID` (`eventID`);

--
-- Indexes for table `eventRulesLinks`
--
ALTER TABLE `eventRulesLinks`
  ADD PRIMARY KEY (`rulesLinkID`),
  ADD KEY `rulesID` (`rulesID`),
  ADD KEY `tournamentID` (`tournamentID`);

--
-- Indexes for table `eventScoresheets`
--
ALTER TABLE `eventScoresheets`
  ADD PRIMARY KEY (`scoresheetID`);

--
-- Indexes for table `eventSettings`
--
ALTER TABLE `eventSettings`
  ADD PRIMARY KEY (`eventSettingID`),
  ADD KEY `eventID` (`eventID`);

--
-- Indexes for table `eventSponsors`
--
ALTER TABLE `eventSponsors`
  ADD PRIMARY KEY (`eventSponsorID`),
  ADD KEY `sponsorID` (`sponsorID`),
  ADD KEY `eventID` (`eventID`);

--
-- Indexes for table `eventStandings`
--
ALTER TABLE `eventStandings`
  ADD PRIMARY KEY (`standingID`),
  ADD KEY `tournamentID` (`tournamentID`),
  ADD KEY `groupID` (`groupID`),
  ADD KEY `rosterID` (`rosterID`);

--
-- Indexes for table `eventTeamRoster`
--
ALTER TABLE `eventTeamRoster`
  ADD PRIMARY KEY (`tableID`),
  ADD KEY `teamID` (`teamID`,`rosterID`),
  ADD KEY `rosterID` (`rosterID`),
  ADD KEY `tournamentRosterID` (`tournamentRosterID`);

--
-- Indexes for table `eventTournamentCompGroupItems`
--
ALTER TABLE `eventTournamentCompGroupItems`
  ADD PRIMARY KEY (`componentGroupItemID`),
  ADD UNIQUE KEY `componentGroupID_2` (`componentGroupID`,`tournamentComponentID`),
  ADD KEY `componentGroupID` (`componentGroupID`),
  ADD KEY `tournamentComponentID` (`tournamentComponentID`);

--
-- Indexes for table `eventTournamentCompGroups`
--
ALTER TABLE `eventTournamentCompGroups`
  ADD PRIMARY KEY (`componentGroupID`),
  ADD KEY `metaTournamentID` (`metaTournamentID`);

--
-- Indexes for table `eventTournamentComponents`
--
ALTER TABLE `eventTournamentComponents`
  ADD PRIMARY KEY (`tournamentComponentID`),
  ADD KEY `tournamentID` (`metaTournamentID`),
  ADD KEY `componentTournamentID` (`componentTournamentID`);

--
-- Indexes for table `eventTournamentDivisions`
--
ALTER TABLE `eventTournamentDivisions`
  ADD PRIMARY KEY (`divisionID`),
  ADD KEY `eventID` (`eventID`);

--
-- Indexes for table `eventTournamentDivItems`
--
ALTER TABLE `eventTournamentDivItems`
  ADD PRIMARY KEY (`divisionItemID`),
  ADD KEY `tournamentID` (`tournamentID`),
  ADD KEY `divisionID` (`divisionID`);

--
-- Indexes for table `eventTournamentOptions`
--
ALTER TABLE `eventTournamentOptions`
  ADD PRIMARY KEY (`tournamentOptionID`),
  ADD KEY `tournamentID` (`tournamentID`),
  ADD KEY `optionID` (`optionID`);

--
-- Indexes for table `eventTournamentOrder`
--
ALTER TABLE `eventTournamentOrder`
  ADD PRIMARY KEY (`tournamentOrderID`),
  ADD KEY `tournamentID` (`tournamentID`);

--
-- Indexes for table `eventTournamentRoster`
--
ALTER TABLE `eventTournamentRoster`
  ADD PRIMARY KEY (`tournamentRosterID`),
  ADD KEY `tournamentID` (`tournamentID`),
  ADD KEY `eventRosterID` (`rosterID`);

--
-- Indexes for table `eventTournaments`
--
ALTER TABLE `eventTournaments`
  ADD PRIMARY KEY (`tournamentID`),
  ADD KEY `eventID` (`eventID`),
  ADD KEY `tournamentWeaponID` (`tournamentWeaponID`),
  ADD KEY `tournamentPrefixID` (`tournamentPrefixID`),
  ADD KEY `tournamentSuffixID` (`tournamentSuffixID`),
  ADD KEY `tournamentGenderID` (`tournamentGenderID`),
  ADD KEY `tournamentMaterialID` (`tournamentMaterialID`),
  ADD KEY `tournamentRankingID` (`tournamentRankingID`),
  ADD KEY `doubleTypeID` (`doubleTypeID`),
  ADD KEY `elimTypeID` (`formatID`),
  ADD KEY `color1ID` (`color1ID`),
  ADD KEY `color2ID` (`color2ID`),
  ADD KEY `tournamentElimID` (`formatID`);

--
-- Indexes for table `eventVideo`
--
ALTER TABLE `eventVideo`
  ADD PRIMARY KEY (`videoID`),
  ADD KEY `matchID` (`matchID`);

--
-- Indexes for table `eventVideoStreams`
--
ALTER TABLE `eventVideoStreams`
  ADD PRIMARY KEY (`streamID`),
  ADD KEY `videoID` (`videoID`),
  ADD KEY `locationID` (`locationID`);

--
-- Indexes for table `logisticsAnnouncements`
--
ALTER TABLE `logisticsAnnouncements`
  ADD PRIMARY KEY (`announcementID`),
  ADD KEY `eventID` (`eventID`);

--
-- Indexes for table `logisticsBlockAttributes`
--
ALTER TABLE `logisticsBlockAttributes`
  ADD PRIMARY KEY (`blockAttributeID`),
  ADD KEY `blockID` (`blockID`);

--
-- Indexes for table `logisticsFaq`
--
ALTER TABLE `logisticsFaq`
  ADD PRIMARY KEY (`faqID`),
  ADD KEY `eventID` (`eventID`);

--
-- Indexes for table `logisticsInstructors`
--
ALTER TABLE `logisticsInstructors`
  ADD PRIMARY KEY (`instructorID`),
  ADD KEY `rosterID` (`rosterID`),
  ADD KEY `eventID` (`eventID`);

--
-- Indexes for table `logisticsLocations`
--
ALTER TABLE `logisticsLocations`
  ADD PRIMARY KEY (`locationID`),
  ADD KEY `eventID` (`eventID`);

--
-- Indexes for table `logisticsLocationsBlocks`
--
ALTER TABLE `logisticsLocationsBlocks`
  ADD PRIMARY KEY (`blockLocationID`),
  ADD KEY `scheduleID` (`blockID`),
  ADD KEY `locationID` (`locationID`);

--
-- Indexes for table `logisticsLocationsMatches`
--
ALTER TABLE `logisticsLocationsMatches`
  ADD PRIMARY KEY (`matchLocationID`),
  ADD UNIQUE KEY `matchID_2` (`matchID`),
  ADD KEY `placeID` (`locationID`),
  ADD KEY `matchID` (`matchID`);

--
-- Indexes for table `logisticsParticipantIds`
--
ALTER TABLE `logisticsParticipantIds`
  ADD PRIMARY KEY (`tableID`),
  ADD KEY `rosterID` (`rosterID`);

--
-- Indexes for table `logisticsRoleCompetency`
--
ALTER TABLE `logisticsRoleCompetency`
  ADD PRIMARY KEY (`roleCompetencyID`),
  ADD KEY `eventID` (`eventID`),
  ADD KEY `logisticsRoleID` (`logisticsRoleID`);

--
-- Indexes for table `logisticsScheduleBlocks`
--
ALTER TABLE `logisticsScheduleBlocks`
  ADD PRIMARY KEY (`blockID`),
  ADD KEY `tournamentID` (`tournamentID`),
  ADD KEY `eventID` (`eventID`),
  ADD KEY `blockTypeID` (`blockTypeID`);

--
-- Indexes for table `logisticsScheduleShifts`
--
ALTER TABLE `logisticsScheduleShifts`
  ADD PRIMARY KEY (`shiftID`),
  ADD KEY `blockID` (`blockID`),
  ADD KEY `shiftLocationID` (`locationID`);

--
-- Indexes for table `logisticsStaffCompetency`
--
ALTER TABLE `logisticsStaffCompetency`
  ADD PRIMARY KEY (`staffCompetencyID`),
  ADD KEY `rosterID` (`rosterID`);

--
-- Indexes for table `logisticsStaffMatches`
--
ALTER TABLE `logisticsStaffMatches`
  ADD PRIMARY KEY (`matchStaffID`),
  ADD UNIQUE KEY `matchStaffID` (`rosterID`,`matchID`) USING BTREE,
  ADD KEY `matchID` (`matchID`),
  ADD KEY `rosterID` (`rosterID`),
  ADD KEY `logisticsRoleID` (`logisticsRoleID`);

--
-- Indexes for table `logisticsStaffMatchMultipliers`
--
ALTER TABLE `logisticsStaffMatchMultipliers`
  ADD PRIMARY KEY (`matchMultiplierID`),
  ADD KEY `eventID` (`eventID`),
  ADD KEY `logisticsRoleID` (`logisticsRoleID`);

--
-- Indexes for table `logisticsStaffShifts`
--
ALTER TABLE `logisticsStaffShifts`
  ADD PRIMARY KEY (`staffShiftID`),
  ADD KEY `rosterID` (`rosterID`),
  ADD KEY `logisticsRoleID` (`logisticsRoleID`),
  ADD KEY `schedultID` (`shiftID`);

--
-- Indexes for table `logisticsStaffTemplates`
--
ALTER TABLE `logisticsStaffTemplates`
  ADD PRIMARY KEY (`staffTemplateID`),
  ADD KEY `logisticsRoleID` (`logisticsRoleID`),
  ADD KEY `tournamentID` (`tournamentID`);

--
-- Indexes for table `systemAttacks`
--
ALTER TABLE `systemAttacks`
  ADD PRIMARY KEY (`attackID`);

--
-- Indexes for table `systemBlockTypes`
--
ALTER TABLE `systemBlockTypes`
  ADD PRIMARY KEY (`blockTypeID`);

--
-- Indexes for table `systemBurgees`
--
ALTER TABLE `systemBurgees`
  ADD PRIMARY KEY (`burgeeRankingID`);

--
-- Indexes for table `systemColors`
--
ALTER TABLE `systemColors`
  ADD PRIMARY KEY (`colorID`);

--
-- Indexes for table `systemCountries`
--
ALTER TABLE `systemCountries`
  ADD PRIMARY KEY (`countryIso2`);

--
-- Indexes for table `systemCutQualifications`
--
ALTER TABLE `systemCutQualifications`
  ADD PRIMARY KEY (`qualID`),
  ADD KEY `systemRosterID` (`systemRosterID`),
  ADD KEY `standardID` (`standardID`);

--
-- Indexes for table `systemCutStandards`
--
ALTER TABLE `systemCutStandards`
  ADD PRIMARY KEY (`standardID`);

--
-- Indexes for table `systemDoubleTypes`
--
ALTER TABLE `systemDoubleTypes`
  ADD PRIMARY KEY (`doubleTypeID`);

--
-- Indexes for table `systemEvents`
--
ALTER TABLE `systemEvents`
  ADD PRIMARY KEY (`eventID`),
  ADD KEY `countryIso2` (`countryIso2`),
  ADD KEY `countryIso2_2` (`countryIso2`);

--
-- Indexes for table `systemFormats`
--
ALTER TABLE `systemFormats`
  ADD PRIMARY KEY (`formatID`);

--
-- Indexes for table `systemLogisticsRoles`
--
ALTER TABLE `systemLogisticsRoles`
  ADD PRIMARY KEY (`logisticsRoleID`);

--
-- Indexes for table `systemMatchOrder`
--
ALTER TABLE `systemMatchOrder`
  ADD PRIMARY KEY (`tableID`);

--
-- Indexes for table `systemOptionsList`
--
ALTER TABLE `systemOptionsList`
  ADD PRIMARY KEY (`optionID`);

--
-- Indexes for table `systemRankings`
--
ALTER TABLE `systemRankings`
  ADD PRIMARY KEY (`tournamentRankingID`),
  ADD KEY `formatID` (`formatID`);

--
-- Indexes for table `systemRoster`
--
ALTER TABLE `systemRoster`
  ADD PRIMARY KEY (`systemRosterID`),
  ADD UNIQUE KEY `HemaRatingsID` (`HemaRatingsID`),
  ADD KEY `schoolID` (`schoolID`);

--
-- Indexes for table `systemRosterNotDuplicate`
--
ALTER TABLE `systemRosterNotDuplicate`
  ADD PRIMARY KEY (`tableID`),
  ADD KEY `rosterID1` (`rosterID1`),
  ADD KEY `rosterID2` (`rosterID2`);

--
-- Indexes for table `systemSchools`
--
ALTER TABLE `systemSchools`
  ADD PRIMARY KEY (`schoolID`),
  ADD KEY `countryIso2` (`countryIso2`);
ALTER TABLE `systemSchools` ADD FULLTEXT KEY `schoolFullName` (`schoolFullName`);

--
-- Indexes for table `systemSponsors`
--
ALTER TABLE `systemSponsors`
  ADD PRIMARY KEY (`sponsorID`);

--
-- Indexes for table `systemTournaments`
--
ALTER TABLE `systemTournaments`
  ADD PRIMARY KEY (`tournamentTypeID`);

--
-- Indexes for table `systemUpdates`
--
ALTER TABLE `systemUpdates`
  ADD PRIMARY KEY (`updateID`);

--
-- Indexes for table `systemUserEvents`
--
ALTER TABLE `systemUserEvents`
  ADD PRIMARY KEY (`userTournamentID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `tournamentID` (`eventID`);

--
-- Indexes for table `systemUsers`
--
ALTER TABLE `systemUsers`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eventAttacks`
--
ALTER TABLE `eventAttacks`
  MODIFY `tableID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22878;
--
-- AUTO_INCREMENT for table `eventAttributes`
--
ALTER TABLE `eventAttributes`
  MODIFY `attributeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8277;
--
-- AUTO_INCREMENT for table `eventBurgeeComponents`
--
ALTER TABLE `eventBurgeeComponents`
  MODIFY `burgeeComponentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=785;
--
-- AUTO_INCREMENT for table `eventBurgeePlacings`
--
ALTER TABLE `eventBurgeePlacings`
  MODIFY `burgeePlaceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149510;
--
-- AUTO_INCREMENT for table `eventBurgees`
--
ALTER TABLE `eventBurgees`
  MODIFY `burgeeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT for table `eventCutStandards`
--
ALTER TABLE `eventCutStandards`
  MODIFY `qualID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `eventDefaults`
--
ALTER TABLE `eventDefaults`
  MODIFY `tableID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1311;
--
-- AUTO_INCREMENT for table `eventDescriptions`
--
ALTER TABLE `eventDescriptions`
  MODIFY `eventDescriptionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=549;
--
-- AUTO_INCREMENT for table `eventEventOptions`
--
ALTER TABLE `eventEventOptions`
  MODIFY `eventOptionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;
--
-- AUTO_INCREMENT for table `eventExchanges`
--
ALTER TABLE `eventExchanges`
  MODIFY `exchangeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1502700;
--
-- AUTO_INCREMENT for table `eventGroupRankings`
--
ALTER TABLE `eventGroupRankings`
  MODIFY `groupRankingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT for table `eventGroupRoster`
--
ALTER TABLE `eventGroupRoster`
  MODIFY `tableID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138785;
--
-- AUTO_INCREMENT for table `eventGroups`
--
ALTER TABLE `eventGroups`
  MODIFY `groupID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37323;
--
-- AUTO_INCREMENT for table `eventHemaRatingsInfo`
--
ALTER TABLE `eventHemaRatingsInfo`
  MODIFY `hemaRatingInfoID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `eventIgnores`
--
ALTER TABLE `eventIgnores`
  MODIFY `ignoreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1071;
--
-- AUTO_INCREMENT for table `eventMatches`
--
ALTER TABLE `eventMatches`
  MODIFY `matchID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382677;
--
-- AUTO_INCREMENT for table `eventMatchOptions`
--
ALTER TABLE `eventMatchOptions`
  MODIFY `matchOptionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2651;
--
-- AUTO_INCREMENT for table `eventPenaltyDisabled`
--
ALTER TABLE `eventPenaltyDisabled`
  MODIFY `penaltyDisabledID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=911;
--
-- AUTO_INCREMENT for table `eventPlacings`
--
ALTER TABLE `eventPlacings`
  MODIFY `placeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69765;
--
-- AUTO_INCREMENT for table `eventPublication`
--
ALTER TABLE `eventPublication`
  MODIFY `publicationID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=788;
--
-- AUTO_INCREMENT for table `eventRatings`
--
ALTER TABLE `eventRatings`
  MODIFY `ratingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37639;
--
-- AUTO_INCREMENT for table `eventRoster`
--
ALTER TABLE `eventRoster`
  MODIFY `rosterID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46260;
--
-- AUTO_INCREMENT for table `eventRosterAdditional`
--
ALTER TABLE `eventRosterAdditional`
  MODIFY `additionalRosterID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;
--
-- AUTO_INCREMENT for table `eventRules`
--
ALTER TABLE `eventRules`
  MODIFY `rulesID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=770;
--
-- AUTO_INCREMENT for table `eventRulesLinks`
--
ALTER TABLE `eventRulesLinks`
  MODIFY `rulesLinkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1940;
--
-- AUTO_INCREMENT for table `eventScoresheets`
--
ALTER TABLE `eventScoresheets`
  MODIFY `scoresheetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169962;
--
-- AUTO_INCREMENT for table `eventSettings`
--
ALTER TABLE `eventSettings`
  MODIFY `eventSettingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;
--
-- AUTO_INCREMENT for table `eventSponsors`
--
ALTER TABLE `eventSponsors`
  MODIFY `eventSponsorID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `eventStandings`
--
ALTER TABLE `eventStandings`
  MODIFY `standingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200473;
--
-- AUTO_INCREMENT for table `eventTeamRoster`
--
ALTER TABLE `eventTeamRoster`
  MODIFY `tableID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3513;
--
-- AUTO_INCREMENT for table `eventTournamentCompGroupItems`
--
ALTER TABLE `eventTournamentCompGroupItems`
  MODIFY `componentGroupItemID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `eventTournamentCompGroups`
--
ALTER TABLE `eventTournamentCompGroups`
  MODIFY `componentGroupID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `eventTournamentComponents`
--
ALTER TABLE `eventTournamentComponents`
  MODIFY `tournamentComponentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;
--
-- AUTO_INCREMENT for table `eventTournamentDivisions`
--
ALTER TABLE `eventTournamentDivisions`
  MODIFY `divisionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;
--
-- AUTO_INCREMENT for table `eventTournamentDivItems`
--
ALTER TABLE `eventTournamentDivItems`
  MODIFY `divisionItemID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;
--
-- AUTO_INCREMENT for table `eventTournamentOptions`
--
ALTER TABLE `eventTournamentOptions`
  MODIFY `tournamentOptionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5651;
--
-- AUTO_INCREMENT for table `eventTournamentOrder`
--
ALTER TABLE `eventTournamentOrder`
  MODIFY `tournamentOrderID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT for table `eventTournamentRoster`
--
ALTER TABLE `eventTournamentRoster`
  MODIFY `tournamentRosterID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89930;
--
-- AUTO_INCREMENT for table `eventTournaments`
--
ALTER TABLE `Ç`
  MODIFY `tournamentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3942;
--
-- AUTO_INCREMENT for table `eventVideo`
--
ALTER TABLE `eventVideo`
  MODIFY `videoID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1501;
--
-- AUTO_INCREMENT for table `eventVideoStreams`
--
ALTER TABLE `eventVideoStreams`
  MODIFY `streamID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `logisticsAnnouncements`
--
ALTER TABLE `logisticsAnnouncements`
  MODIFY `announcementID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
--
-- AUTO_INCREMENT for table `logisticsBlockAttributes`
--
ALTER TABLE `logisticsBlockAttributes`
  MODIFY `blockAttributeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=979;
--
-- AUTO_INCREMENT for table `logisticsFaq`
--
ALTER TABLE `logisticsFaq`
  MODIFY `faqID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `logisticsInstructors`
--
ALTER TABLE `logisticsInstructors`
  MODIFY `instructorID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `logisticsLocations`
--
ALTER TABLE `logisticsLocations`
  MODIFY `locationID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1944;
--
-- AUTO_INCREMENT for table `logisticsLocationsBlocks`
--
ALTER TABLE `logisticsLocationsBlocks`
  MODIFY `blockLocationID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15917;
--
-- AUTO_INCREMENT for table `logisticsLocationsMatches`
--
ALTER TABLE `logisticsLocationsMatches`
  MODIFY `matchLocationID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58382;
--
-- AUTO_INCREMENT for table `logisticsParticipantIds`
--
ALTER TABLE `logisticsParticipantIds`
  MODIFY `tableID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `logisticsRoleCompetency`
--
ALTER TABLE `logisticsRoleCompetency`
  MODIFY `roleCompetencyID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `logisticsScheduleBlocks`
--
ALTER TABLE `logisticsScheduleBlocks`
  MODIFY `blockID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7039;
--
-- AUTO_INCREMENT for table `logisticsScheduleShifts`
--
ALTER TABLE `logisticsScheduleShifts`
  MODIFY `shiftID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8704;
--
-- AUTO_INCREMENT for table `logisticsStaffCompetency`
--
ALTER TABLE `logisticsStaffCompetency`
  MODIFY `staffCompetencyID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6819;
--
-- AUTO_INCREMENT for table `logisticsStaffMatches`
--
ALTER TABLE `logisticsStaffMatches`
  MODIFY `matchStaffID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37565;
--
-- AUTO_INCREMENT for table `logisticsStaffMatchMultipliers`
--
ALTER TABLE `logisticsStaffMatchMultipliers`
  MODIFY `matchMultiplierID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `logisticsStaffShifts`
--
ALTER TABLE `logisticsStaffShifts`
  MODIFY `staffShiftID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14777;
--
-- AUTO_INCREMENT for table `logisticsStaffTemplates`
--
ALTER TABLE `logisticsStaffTemplates`
  MODIFY `staffTemplateID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
--
-- AUTO_INCREMENT for table `systemAttacks`
--
ALTER TABLE `systemAttacks`
  MODIFY `attackID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `systemBlockTypes`
--
ALTER TABLE `systemBlockTypes`
  MODIFY `blockTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `systemBurgees`
--
ALTER TABLE `systemBurgees`
  MODIFY `burgeeRankingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `systemColors`
--
ALTER TABLE `systemColors`
  MODIFY `colorID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `systemCutQualifications`
--
ALTER TABLE `systemCutQualifications`
  MODIFY `qualID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=966;
--
-- AUTO_INCREMENT for table `systemCutStandards`
--
ALTER TABLE `systemCutStandards`
  MODIFY `standardID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `systemDoubleTypes`
--
ALTER TABLE `systemDoubleTypes`
  MODIFY `doubleTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `systemEvents`
--
ALTER TABLE `systemEvents`
  MODIFY `eventID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=970;
--
-- AUTO_INCREMENT for table `systemFormats`
--
ALTER TABLE `systemFormats`
  MODIFY `formatID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `systemLogisticsRoles`
--
ALTER TABLE `systemLogisticsRoles`
  MODIFY `logisticsRoleID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `systemMatchOrder`
--
ALTER TABLE `systemMatchOrder`
  MODIFY `tableID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=681;
--
-- AUTO_INCREMENT for table `systemOptionsList`
--
ALTER TABLE `systemOptionsList`
  MODIFY `optionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `systemRankings`
--
ALTER TABLE `systemRankings`
  MODIFY `tournamentRankingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `systemRoster`
--
ALTER TABLE `systemRoster`
  MODIFY `systemRosterID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14171;
--
-- AUTO_INCREMENT for table `systemRosterNotDuplicate`
--
ALTER TABLE `systemRosterNotDuplicate`
  MODIFY `tableID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `systemSchools`
--
ALTER TABLE `systemSchools`
  MODIFY `schoolID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1749;
--
-- AUTO_INCREMENT for table `systemSponsors`
--
ALTER TABLE `systemSponsors`
  MODIFY `sponsorID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `systemTournaments`
--
ALTER TABLE `systemTournaments`
  MODIFY `tournamentTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `systemUpdates`
--
ALTER TABLE `systemUpdates`
  MODIFY `updateID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `systemUserEvents`
--
ALTER TABLE `systemUserEvents`
  MODIFY `userTournamentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `systemUsers`
--
ALTER TABLE `systemUsers`
  MODIFY `userID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `eventAttacks`
--
ALTER TABLE `eventAttacks`
  ADD CONSTRAINT `eventAttacks_ibfk_1` FOREIGN KEY (`tournamentID`) REFERENCES `eventTournaments` (`tournamentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventAttacks_ibfk_2` FOREIGN KEY (`attackTarget`) REFERENCES `systemAttacks` (`attackID`),
  ADD CONSTRAINT `eventAttacks_ibfk_3` FOREIGN KEY (`attackType`) REFERENCES `systemAttacks` (`attackID`);

--
-- Constraints for table `eventAttributes`
--
ALTER TABLE `eventAttributes`
  ADD CONSTRAINT `eventAttributes_ibfk_1` FOREIGN KEY (`tournamentID`) REFERENCES `eventTournaments` (`tournamentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventBurgeeComponents`
--
ALTER TABLE `eventBurgeeComponents`
  ADD CONSTRAINT `eventburgeecomponents_ibfk_2` FOREIGN KEY (`tournamentID`) REFERENCES `eventTournaments` (`tournamentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventburgeecomponents_ibfk_3` FOREIGN KEY (`burgeeID`) REFERENCES `eventBurgees` (`burgeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventBurgeePlacings`
--
ALTER TABLE `eventBurgeePlacings`
  ADD CONSTRAINT `eventburgeeplacings_ibfk_1` FOREIGN KEY (`burgeeID`) REFERENCES `eventBurgees` (`burgeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventburgeeplacings_ibfk_2` FOREIGN KEY (`schoolID`) REFERENCES `systemSchools` (`schoolID`),
  ADD CONSTRAINT `eventburgeeplacings_ibfk_3` FOREIGN KEY (`rosterID`) REFERENCES `eventRoster` (`rosterID`),
  ADD CONSTRAINT `eventburgeeplacings_ibfk_4` FOREIGN KEY (`tournamentID`) REFERENCES `eventTournaments` (`tournamentID`);

--
-- Constraints for table `eventBurgees`
--
ALTER TABLE `eventBurgees`
  ADD CONSTRAINT `eventburgees_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventburgees_ibfk_2` FOREIGN KEY (`burgeeRankingID`) REFERENCES `systemBurgees` (`burgeeRankingID`);

--
-- Constraints for table `eventCutStandards`
--
ALTER TABLE `eventCutStandards`
  ADD CONSTRAINT `eventCutStandards_ibfk_2` FOREIGN KEY (`tournamentID`) REFERENCES `eventTournaments` (`tournamentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventDefaults`
--
ALTER TABLE `eventDefaults`
  ADD CONSTRAINT `eventdefaults_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventdefaults_ibfk_2` FOREIGN KEY (`color1ID`) REFERENCES `systemColors` (`colorID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `eventdefaults_ibfk_3` FOREIGN KEY (`color2ID`) REFERENCES `systemColors` (`colorID`) ON UPDATE CASCADE;

--
-- Constraints for table `eventDescriptions`
--
ALTER TABLE `eventDescriptions`
  ADD CONSTRAINT `eventDescriptions_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventEventOptions`
--
ALTER TABLE `eventEventOptions`
  ADD CONSTRAINT `eventEventOptions_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventEventOptions_ibfk_2` FOREIGN KEY (`optionID`) REFERENCES `systemOptionsList` (`optionID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventExchanges`
--
ALTER TABLE `eventExchanges`
  ADD CONSTRAINT `eventExchanges_ibfk_1` FOREIGN KEY (`matchID`) REFERENCES `eventMatches` (`matchID`) ON DELETE CASCADE,
  ADD CONSTRAINT `eventExchanges_ibfk_2` FOREIGN KEY (`scoringID`) REFERENCES `eventRoster` (`rosterID`) ON DELETE CASCADE,
  ADD CONSTRAINT `eventExchanges_ibfk_3` FOREIGN KEY (`receivingID`) REFERENCES `eventRoster` (`rosterID`) ON DELETE CASCADE,
  ADD CONSTRAINT `eventExchanges_ibfk_4` FOREIGN KEY (`refPrefix`) REFERENCES `systemAttacks` (`attackID`),
  ADD CONSTRAINT `eventExchanges_ibfk_5` FOREIGN KEY (`refTarget`) REFERENCES `systemAttacks` (`attackID`),
  ADD CONSTRAINT `eventExchanges_ibfk_6` FOREIGN KEY (`refType`) REFERENCES `systemAttacks` (`attackID`);

--
-- Constraints for table `eventGroupRankings`
--
ALTER TABLE `eventGroupRankings`
  ADD CONSTRAINT `eventGroupRankings_ibfk_1` FOREIGN KEY (`groupID`) REFERENCES `eventGroups` (`groupID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventGroupRoster`
--
ALTER TABLE `eventGroupRoster`
  ADD CONSTRAINT `eventGroupRoster_ibfk_2` FOREIGN KEY (`groupID`) REFERENCES `eventGroups` (`groupID`) ON DELETE CASCADE,
  ADD CONSTRAINT `eventGroupRoster_ibfk_3` FOREIGN KEY (`tournamentTableID`) REFERENCES `eventTournamentRoster` (`tournamentRosterID`) ON DELETE CASCADE;

--
-- Constraints for table `eventGroups`
--
ALTER TABLE `eventGroups`
  ADD CONSTRAINT `eventGroups_ibfk_1` FOREIGN KEY (`tournamentID`) REFERENCES `eventTournaments` (`tournamentID`) ON DELETE CASCADE;

--
-- Constraints for table `eventIgnores`
--
ALTER TABLE `eventIgnores`
  ADD CONSTRAINT `eventIgnores_ibfk_1` FOREIGN KEY (`tournamentID`) REFERENCES `eventTournaments` (`tournamentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventIgnores_ibfk_2` FOREIGN KEY (`rosterID`) REFERENCES `eventTournamentRoster` (`rosterID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventMatches`
--
ALTER TABLE `eventMatches`
  ADD CONSTRAINT `eventMatches_ibfk_1` FOREIGN KEY (`groupID`) REFERENCES `eventGroups` (`groupID`) ON DELETE CASCADE,
  ADD CONSTRAINT `eventMatches_ibfk_2` FOREIGN KEY (`fighter1ID`) REFERENCES `eventRoster` (`rosterID`) ON DELETE CASCADE,
  ADD CONSTRAINT `eventMatches_ibfk_3` FOREIGN KEY (`fighter2ID`) REFERENCES `eventRoster` (`rosterID`) ON DELETE CASCADE,
  ADD CONSTRAINT `eventMatches_ibfk_4` FOREIGN KEY (`winnerID`) REFERENCES `eventRoster` (`rosterID`) ON DELETE CASCADE,
  ADD CONSTRAINT `eventMatches_ibfk_5` FOREIGN KEY (`placeholderMatchID`) REFERENCES `eventMatches` (`matchID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventMatchOptions`
--
ALTER TABLE `eventMatchOptions`
  ADD CONSTRAINT `eventMatchOptions_ibfk_1` FOREIGN KEY (`matchID`) REFERENCES `eventMatches` (`matchID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventMatchOptions_ibfk_2` FOREIGN KEY (`optionID`) REFERENCES `systemOptionsList` (`optionID`);

--
-- Constraints for table `eventPenaltyDisabled`
--
ALTER TABLE `eventPenaltyDisabled`
  ADD CONSTRAINT `eventPenaltyDisabled_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventPenaltyDisabled_ibfk_2` FOREIGN KEY (`attackID`) REFERENCES `systemAttacks` (`attackID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventPlacings`
--
ALTER TABLE `eventPlacings`
  ADD CONSTRAINT `eventPlacings_ibfk_1` FOREIGN KEY (`tournamentID`) REFERENCES `eventTournaments` (`tournamentID`);

--
-- Constraints for table `eventPublication`
--
ALTER TABLE `eventPublication`
  ADD CONSTRAINT `eventPublication_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventRatings`
--
ALTER TABLE `eventRatings`
  ADD CONSTRAINT `eventRatings_ibfk_1` FOREIGN KEY (`tournamentRosterID`) REFERENCES `eventTournamentRoster` (`tournamentRosterID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventRoster`
--
ALTER TABLE `eventRoster`
  ADD CONSTRAINT `eventRoster_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE,
  ADD CONSTRAINT `eventRoster_ibfk_2` FOREIGN KEY (`schoolID`) REFERENCES `systemSchools` (`schoolID`),
  ADD CONSTRAINT `eventRoster_ibfk_3` FOREIGN KEY (`systemRosterID`) REFERENCES `systemRoster` (`systemRosterID`);

--
-- Constraints for table `eventRosterAdditional`
--
ALTER TABLE `eventRosterAdditional`
  ADD CONSTRAINT `eventRosterAdditional_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventRules`
--
ALTER TABLE `eventRules`
  ADD CONSTRAINT `eventRules_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventRulesLinks`
--
ALTER TABLE `eventRulesLinks`
  ADD CONSTRAINT `eventRulesLinks_ibfk_1` FOREIGN KEY (`rulesID`) REFERENCES `eventRules` (`rulesID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventRulesLinks_ibfk_2` FOREIGN KEY (`tournamentID`) REFERENCES `eventTournaments` (`tournamentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventSettings`
--
ALTER TABLE `eventSettings`
  ADD CONSTRAINT `eventSettings_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventSponsors`
--
ALTER TABLE `eventSponsors`
  ADD CONSTRAINT `eventSponsors_ibfk_1` FOREIGN KEY (`sponsorID`) REFERENCES `systemSponsors` (`sponsorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventSponsors_ibfk_2` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventStandings`
--
ALTER TABLE `eventStandings`
  ADD CONSTRAINT `eventStandings_ibfk_1` FOREIGN KEY (`tournamentID`) REFERENCES `eventTournaments` (`tournamentID`) ON DELETE CASCADE,
  ADD CONSTRAINT `eventStandings_ibfk_2` FOREIGN KEY (`groupID`) REFERENCES `eventGroups` (`groupID`) ON DELETE CASCADE,
  ADD CONSTRAINT `eventStandings_ibfk_3` FOREIGN KEY (`rosterID`) REFERENCES `eventRoster` (`rosterID`) ON DELETE CASCADE;

--
-- Constraints for table `eventTeamRoster`
--
ALTER TABLE `eventTeamRoster`
  ADD CONSTRAINT `eventTeamRoster_ibfk_1` FOREIGN KEY (`teamID`) REFERENCES `eventRoster` (`rosterID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventTeamRoster_ibfk_2` FOREIGN KEY (`rosterID`) REFERENCES `eventRoster` (`rosterID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventTeamRoster_ibfk_3` FOREIGN KEY (`tournamentRosterID`) REFERENCES `eventTournamentRoster` (`tournamentRosterID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventTournamentCompGroupItems`
--
ALTER TABLE `eventTournamentCompGroupItems`
  ADD CONSTRAINT `eventTournamentCompGroupItems_ibfk_1` FOREIGN KEY (`componentGroupID`) REFERENCES `eventTournamentCompGroups` (`componentGroupID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventTournamentCompGroupItems_ibfk_2` FOREIGN KEY (`tournamentComponentID`) REFERENCES `eventTournamentComponents` (`tournamentComponentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventTournamentCompGroups`
--
ALTER TABLE `eventTournamentCompGroups`
  ADD CONSTRAINT `eventTournamentCompGroups_ibfk_1` FOREIGN KEY (`metaTournamentID`) REFERENCES `eventTournaments` (`tournamentID`);

--
-- Constraints for table `eventTournamentComponents`
--
ALTER TABLE `eventTournamentComponents`
  ADD CONSTRAINT `eventTournamentComponents_ibfk_1` FOREIGN KEY (`metaTournamentID`) REFERENCES `eventTournaments` (`tournamentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventTournamentComponents_ibfk_2` FOREIGN KEY (`componentTournamentID`) REFERENCES `eventTournaments` (`tournamentID`) ON UPDATE CASCADE;

--
-- Constraints for table `eventTournamentDivisions`
--
ALTER TABLE `eventTournamentDivisions`
  ADD CONSTRAINT `eventtournamentdivisions_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventTournamentDivItems`
--
ALTER TABLE `eventTournamentDivItems`
  ADD CONSTRAINT `eventtournamentdivitems_ibfk_2` FOREIGN KEY (`tournamentID`) REFERENCES `eventTournaments` (`tournamentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventtournamentdivitems_ibfk_3` FOREIGN KEY (`divisionID`) REFERENCES `eventTournamentDivisions` (`divisionID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventTournamentOptions`
--
ALTER TABLE `eventTournamentOptions`
  ADD CONSTRAINT `eventTournamentOptions_ibfk_1` FOREIGN KEY (`tournamentID`) REFERENCES `eventTournaments` (`tournamentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventTournamentOptions_ibfk_2` FOREIGN KEY (`optionID`) REFERENCES `systemOptionsList` (`optionID`);

--
-- Constraints for table `eventTournamentOrder`
--
ALTER TABLE `eventTournamentOrder`
  ADD CONSTRAINT `eventTournamentOrder_ibfk_1` FOREIGN KEY (`tournamentID`) REFERENCES `eventTournaments` (`tournamentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventTournamentRoster`
--
ALTER TABLE `eventTournamentRoster`
  ADD CONSTRAINT `eventTournamentRoster_ibfk_1` FOREIGN KEY (`tournamentID`) REFERENCES `eventTournaments` (`tournamentID`) ON DELETE CASCADE,
  ADD CONSTRAINT `eventTournamentRoster_ibfk_2` FOREIGN KEY (`rosterID`) REFERENCES `eventRoster` (`rosterID`) ON DELETE CASCADE;

--
-- Constraints for table `eventTournaments`
--
ALTER TABLE `eventTournaments`
  ADD CONSTRAINT `eventTournaments_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE,
  ADD CONSTRAINT `eventTournaments_ibfk_10` FOREIGN KEY (`color1ID`) REFERENCES `systemColors` (`colorID`),
  ADD CONSTRAINT `eventTournaments_ibfk_11` FOREIGN KEY (`color2ID`) REFERENCES `systemColors` (`colorID`),
  ADD CONSTRAINT `eventTournaments_ibfk_14` FOREIGN KEY (`formatID`) REFERENCES `systemFormats` (`formatID`),
  ADD CONSTRAINT `eventTournaments_ibfk_15` FOREIGN KEY (`tournamentRankingID`) REFERENCES `systemRankings` (`tournamentRankingID`),
  ADD CONSTRAINT `eventTournaments_ibfk_2` FOREIGN KEY (`tournamentWeaponID`) REFERENCES `systemTournaments` (`tournamentTypeID`),
  ADD CONSTRAINT `eventTournaments_ibfk_3` FOREIGN KEY (`tournamentPrefixID`) REFERENCES `systemTournaments` (`tournamentTypeID`),
  ADD CONSTRAINT `eventTournaments_ibfk_4` FOREIGN KEY (`tournamentSuffixID`) REFERENCES `systemTournaments` (`tournamentTypeID`),
  ADD CONSTRAINT `eventTournaments_ibfk_5` FOREIGN KEY (`tournamentGenderID`) REFERENCES `systemTournaments` (`tournamentTypeID`),
  ADD CONSTRAINT `eventTournaments_ibfk_6` FOREIGN KEY (`tournamentMaterialID`) REFERENCES `systemTournaments` (`tournamentTypeID`),
  ADD CONSTRAINT `eventTournaments_ibfk_8` FOREIGN KEY (`doubleTypeID`) REFERENCES `systemDoubleTypes` (`doubleTypeID`);

--
-- Constraints for table `eventVideo`
--
ALTER TABLE `eventVideo`
  ADD CONSTRAINT `eventVideo_ibfk_1` FOREIGN KEY (`matchID`) REFERENCES `eventMatches` (`matchID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logisticsAnnouncements`
--
ALTER TABLE `logisticsAnnouncements`
  ADD CONSTRAINT `logisticsAnnouncements_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logisticsBlockAttributes`
--
ALTER TABLE `logisticsBlockAttributes`
  ADD CONSTRAINT `logisticsBlockAttributes_ibfk_1` FOREIGN KEY (`blockID`) REFERENCES `logisticsScheduleBlocks` (`blockID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logisticsFaq`
--
ALTER TABLE `logisticsFaq`
  ADD CONSTRAINT `logisticsFaq_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logisticsInstructors`
--
ALTER TABLE `logisticsInstructors`
  ADD CONSTRAINT `logisticsInstructors_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logisticsInstructors_ibfk_2` FOREIGN KEY (`rosterID`) REFERENCES `eventRoster` (`rosterID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logisticsLocations`
--
ALTER TABLE `logisticsLocations`
  ADD CONSTRAINT `logisticsLocations_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logisticsLocationsBlocks`
--
ALTER TABLE `logisticsLocationsBlocks`
  ADD CONSTRAINT `logisticsLocationsBlocks_ibfk_1` FOREIGN KEY (`blockID`) REFERENCES `logisticsScheduleBlocks` (`blockID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logisticsLocationsBlocks_ibfk_2` FOREIGN KEY (`locationID`) REFERENCES `logisticsLocations` (`locationID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logisticsLocationsMatches`
--
ALTER TABLE `logisticsLocationsMatches`
  ADD CONSTRAINT `logisticsLocationsMatches_ibfk_1` FOREIGN KEY (`locationID`) REFERENCES `logisticsLocations` (`locationID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logisticsLocationsMatches_ibfk_4` FOREIGN KEY (`matchID`) REFERENCES `eventMatches` (`matchID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logisticsParticipantIds`
--
ALTER TABLE `logisticsParticipantIds`
  ADD CONSTRAINT `logisticsParticipantIds_ibfk_1` FOREIGN KEY (`rosterID`) REFERENCES `eventRoster` (`rosterID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logisticsRoleCompetency`
--
ALTER TABLE `logisticsRoleCompetency`
  ADD CONSTRAINT `logisticsRoleCompetency_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logisticsRoleCompetency_ibfk_2` FOREIGN KEY (`logisticsRoleID`) REFERENCES `systemLogisticsRoles` (`logisticsRoleID`);

--
-- Constraints for table `logisticsScheduleBlocks`
--
ALTER TABLE `logisticsScheduleBlocks`
  ADD CONSTRAINT `logisticsScheduleBlocks_ibfk_1` FOREIGN KEY (`tournamentID`) REFERENCES `eventTournaments` (`tournamentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logisticsScheduleBlocks_ibfk_2` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logisticsScheduleBlocks_ibfk_3` FOREIGN KEY (`blockTypeID`) REFERENCES `systemBlockTypes` (`blockTypeID`);

--
-- Constraints for table `logisticsScheduleShifts`
--
ALTER TABLE `logisticsScheduleShifts`
  ADD CONSTRAINT `logisticsScheduleShifts_ibfk_1` FOREIGN KEY (`blockID`) REFERENCES `logisticsScheduleBlocks` (`blockID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logisticsScheduleShifts_ibfk_2` FOREIGN KEY (`locationID`) REFERENCES `logisticsLocations` (`locationID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logisticsStaffCompetency`
--
ALTER TABLE `logisticsStaffCompetency`
  ADD CONSTRAINT `logisticsStaffCompetency_ibfk_1` FOREIGN KEY (`rosterID`) REFERENCES `eventRoster` (`rosterID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logisticsStaffMatches`
--
ALTER TABLE `logisticsStaffMatches`
  ADD CONSTRAINT `logisticsStaffMatches_ibfk_1` FOREIGN KEY (`matchID`) REFERENCES `eventMatches` (`matchID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logisticsStaffMatches_ibfk_2` FOREIGN KEY (`rosterID`) REFERENCES `eventRoster` (`rosterID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logisticsStaffMatches_ibfk_3` FOREIGN KEY (`logisticsRoleID`) REFERENCES `systemLogisticsRoles` (`logisticsRoleID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logisticsStaffMatchMultipliers`
--
ALTER TABLE `logisticsStaffMatchMultipliers`
  ADD CONSTRAINT `logisticsStaffMatchMultipliers_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logisticsStaffMatchMultipliers_ibfk_2` FOREIGN KEY (`logisticsRoleID`) REFERENCES `systemLogisticsRoles` (`logisticsRoleID`);

--
-- Constraints for table `logisticsStaffShifts`
--
ALTER TABLE `logisticsStaffShifts`
  ADD CONSTRAINT `logisticsStaffShifts_ibfk_2` FOREIGN KEY (`rosterID`) REFERENCES `eventRoster` (`rosterID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logisticsStaffShifts_ibfk_3` FOREIGN KEY (`logisticsRoleID`) REFERENCES `systemLogisticsRoles` (`logisticsRoleID`),
  ADD CONSTRAINT `logisticsStaffShifts_ibfk_4` FOREIGN KEY (`shiftID`) REFERENCES `logisticsScheduleShifts` (`shiftID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logisticsStaffTemplates`
--
ALTER TABLE `logisticsStaffTemplates`
  ADD CONSTRAINT `logisticsStaffTemplates_ibfk_1` FOREIGN KEY (`logisticsRoleID`) REFERENCES `systemLogisticsRoles` (`logisticsRoleID`);

--
-- Constraints for table `systemCutQualifications`
--
ALTER TABLE `systemCutQualifications`
  ADD CONSTRAINT `cuttingqualifications_ibfk_1` FOREIGN KEY (`systemRosterID`) REFERENCES `systemRoster` (`systemRosterID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cuttingqualifications_ibfk_2` FOREIGN KEY (`standardID`) REFERENCES `systemCutStandards` (`standardID`) ON UPDATE CASCADE;

--
-- Constraints for table `systemEvents`
--
ALTER TABLE `systemEvents`
  ADD CONSTRAINT `systemEvents_ibfk_1` FOREIGN KEY (`countryIso2`) REFERENCES `systemCountries` (`countryIso2`);

--
-- Constraints for table `systemRankings`
--
ALTER TABLE `systemRankings`
  ADD CONSTRAINT `systemRankings_ibfk_1` FOREIGN KEY (`formatID`) REFERENCES `systemFormats` (`formatID`) ON UPDATE CASCADE;

--
-- Constraints for table `systemRoster`
--
ALTER TABLE `systemRoster`
  ADD CONSTRAINT `systemRoster_ibfk_1` FOREIGN KEY (`schoolID`) REFERENCES `systemSchools` (`schoolID`);

--
-- Constraints for table `systemRosterNotDuplicate`
--
ALTER TABLE `systemRosterNotDuplicate`
  ADD CONSTRAINT `systemRosterNotDuplicate_ibfk_1` FOREIGN KEY (`rosterID1`) REFERENCES `systemRoster` (`systemRosterID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `systemRosterNotDuplicate_ibfk_2` FOREIGN KEY (`rosterID2`) REFERENCES `systemRoster` (`systemRosterID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `systemSchools`
--
ALTER TABLE `systemSchools`
  ADD CONSTRAINT `systemSchools_ibfk_1` FOREIGN KEY (`countryIso2`) REFERENCES `systemCountries` (`countryIso2`);

--
-- Constraints for table `systemUserEvents`
--
ALTER TABLE `systemUserEvents`
  ADD CONSTRAINT `systemUserEvents_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `systemUsers` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `systemUserEvents_ibfk_2` FOREIGN KEY (`eventID`) REFERENCES `systemEvents` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE;