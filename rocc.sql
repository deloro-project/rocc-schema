SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `rocc`
--

-- --------------------------------------------------------

--
-- Table structure for table `annotationLevels`
--

CREATE TABLE IF NOT EXISTS `annotationLevels` (
  `id` char(1) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `annotationLevels`
--

INSERT INTO `annotationLevels` (`id`, `name`) VALUES
('g', 'gold'),
('m', 'mixt'),
('o', 'original'),
('t', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `authorBiographyLines`
--

CREATE TABLE IF NOT EXISTS `authorBiographyLines` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `bio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `authorNameAdditions`
--

CREATE TABLE IF NOT EXISTS `authorNameAdditions` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `addToName` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `centuries`
--

CREATE TABLE IF NOT EXISTS `centuries` (
  `id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `centuries`
--

INSERT INTO `centuries` (`id`) VALUES
('XIX'),
('XVI'),
('XVII'),
('XVIII');

-- --------------------------------------------------------

--
-- Table structure for table `creations`
--

CREATE TABLE IF NOT EXISTS `creations` (
  `id` int(11) NOT NULL,
  `metadataId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `locationId` int(11) NOT NULL,
  `creationYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `creationSecondaryAuthors`
--

CREATE TABLE IF NOT EXISTS `creationSecondaryAuthors` (
  `creationId` int(11) NOT NULL,
  `authorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `difficultyLevels`
--

CREATE TABLE IF NOT EXISTS `difficultyLevels` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `difficultyLevels`
--

INSERT INTO `difficultyLevels` (`id`, `name`) VALUES
(1, 'easy'),
(3, 'hard'),
(2, 'medium');

-- --------------------------------------------------------

--
-- Table structure for table `halfCenturies`
--

CREATE TABLE IF NOT EXISTS `halfCenturies` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `halfCenturies`
--

INSERT INTO `halfCenturies` (`id`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL,
  `provinceId` int(11) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `house` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pageCollectionMetadata`
--

CREATE TABLE IF NOT EXISTS `pageCollectionMetadata` (
  `roccId` int(11) NOT NULL,
  `pageCollectionId` int(11) NOT NULL,
  `pageCollectionURL` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `shortTitle` text NOT NULL,
  `language` varchar(20) NOT NULL,
  `metadataCreator` varchar(255) NOT NULL,
  `distribution` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pageCollections`
--

CREATE TABLE IF NOT EXISTS `pageCollections` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE IF NOT EXISTS `provinces` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
(1, 'Moldova'),
(2, 'Țara Românească'),
(3, 'Transilvania');

-- --------------------------------------------------------

--
-- Table structure for table `roccCodes`
--

CREATE TABLE IF NOT EXISTS `roccCodes` (
  `id` int(11) NOT NULL,
  `metadataId` int(11) NOT NULL,
  `difficultyLevel` int(11) NOT NULL,
  `writingType` char(1) NOT NULL,
  `annotationLevel` char(1) NOT NULL,
  `century` varchar(5) NOT NULL,
  `fiftyYears` int(11) NOT NULL,
  `printingYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roccCodeZones`
--

CREATE TABLE IF NOT EXISTS `roccCodeZones` (
  `roccCodeId` int(11) NOT NULL,
  `zone` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scannedCopies`
--

CREATE TABLE IF NOT EXISTS `scannedCopies` (
  `id` int(11) NOT NULL,
  `metadataId` int(11) NOT NULL,
  `library` varchar(255) NOT NULL,
  `libraryCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(11) NOT NULL,
  `metadataId` int(11) NOT NULL,
  `originalLanguage` varchar(50) NOT NULL,
  `originalAuthor` varchar(255) DEFAULT NULL,
  `translator` varchar(255) DEFAULT NULL,
  `secTranslator` varchar(1023) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `writingTypes`
--

CREATE TABLE IF NOT EXISTS `writingTypes` (
  `id` varchar(2) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `writingTypes`
--

INSERT INTO `writingTypes` (`id`, `name`) VALUES
('m', 'manuscript'),
('p', 'print'),
('su', 'semiuncial'),
('u', 'uncial');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE IF NOT EXISTS `zones` (
  `id` varchar(2) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name`) VALUES
('BT', 'Banat'),
('BS', 'Bessarabia'),
('MM', 'Maramureș'),
('MD', 'Moldavia'),
('T', 'Transylvania'),
('W', 'Wallachia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annotationLevels`
--
ALTER TABLE `annotationLevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_annotationLevels_name` (`name`);

--
-- Indexes for table `authorBiographyLines`
--
ALTER TABLE `authorBiographyLines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authorId` (`authorId`);

--
-- Indexes for table `authorNameAdditions`
--
ALTER TABLE `authorNameAdditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authorId` (`authorId`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `centuries`
--
ALTER TABLE `centuries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `creations`
--
ALTER TABLE `creations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metadataId` (`metadataId`),
  ADD KEY `authorId` (`authorId`),
  ADD KEY `locationId` (`locationId`);

--
-- Indexes for table `creationSecondaryAuthors`
--
ALTER TABLE `creationSecondaryAuthors`
  ADD PRIMARY KEY (`creationId`,`authorId`),
  ADD KEY `fk_creationSecondaryAuthors_authors` (`authorId`);

--
-- Indexes for table `difficultyLevels`
--
ALTER TABLE `difficultyLevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_difficultyLevels_name` (`name`);

--
-- Indexes for table `halfCenturies`
--
ALTER TABLE `halfCenturies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinceId` (`provinceId`);

--
-- Indexes for table `pageCollectionMetadata`
--
ALTER TABLE `pageCollectionMetadata`
  ADD PRIMARY KEY (`roccId`),
  ADD UNIQUE KEY `pageCollectionURL` (`pageCollectionURL`),
  ADD KEY `pageCollectionId` (`pageCollectionId`);

--
-- Indexes for table `pageCollections`
--
ALTER TABLE `pageCollections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_provinces_name` (`name`) USING BTREE;

--
-- Indexes for table `roccCodes`
--
ALTER TABLE `roccCodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `annotationLevel` (`annotationLevel`),
  ADD KEY `difficultyLevel` (`difficultyLevel`),
  ADD KEY `writingType` (`writingType`),
  ADD KEY `century` (`century`),
  ADD KEY `fiftyYears` (`fiftyYears`),
  ADD KEY `metadataId` (`metadataId`);

--
-- Indexes for table `roccCodeZones`
--
ALTER TABLE `roccCodeZones`
  ADD PRIMARY KEY (`roccCodeId`,`zone`),
  ADD KEY `fk_roccCodeZones_zones` (`zone`);

--
-- Indexes for table `scannedCopies`
--
ALTER TABLE `scannedCopies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metadataId` (`metadataId`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metadataId` (`metadataId`);

--
-- Indexes for table `writingTypes`
--
ALTER TABLE `writingTypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_writingTypes_name` (`name`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_zones_name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authorBiographyLines`
--
ALTER TABLE `authorBiographyLines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `authorNameAdditions`
--
ALTER TABLE `authorNameAdditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `creations`
--
ALTER TABLE `creations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pageCollectionMetadata`
--
ALTER TABLE `pageCollectionMetadata`
  MODIFY `roccId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pageCollections`
--
ALTER TABLE `pageCollections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roccCodes`
--
ALTER TABLE `roccCodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scannedCopies`
--
ALTER TABLE `scannedCopies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authorBiographyLines`
--
ALTER TABLE `authorBiographyLines`
  ADD CONSTRAINT `fk_authorBiographyLines_authors` FOREIGN KEY (`authorId`) REFERENCES `authors` (`id`);

--
-- Constraints for table `authorNameAdditions`
--
ALTER TABLE `authorNameAdditions`
  ADD CONSTRAINT `fk_authorNameAdditions_authors` FOREIGN KEY (`authorId`) REFERENCES `authors` (`id`);

--
-- Constraints for table `creations`
--
ALTER TABLE `creations`
  ADD CONSTRAINT `fk_creationInfo_locations` FOREIGN KEY (`locationId`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `fk_creationInfo_authors` FOREIGN KEY (`authorId`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `fk_creationInfo_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`);

--
-- Constraints for table `creationSecondaryAuthors`
--
ALTER TABLE `creationSecondaryAuthors`
  ADD CONSTRAINT `fk_creationSecondaryAuthors_creations` FOREIGN KEY (`creationId`) REFERENCES `creations` (`id`),
  ADD CONSTRAINT `fk_creationSecondaryAuthors_authors` FOREIGN KEY (`authorId`) REFERENCES `authors` (`id`);

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `fk_locations_provinces` FOREIGN KEY (`provinceId`) REFERENCES `provinces` (`id`);

--
-- Constraints for table `pageCollectionMetadata`
--
ALTER TABLE `pageCollectionMetadata`
  ADD CONSTRAINT `fk_pageCollectionMetadata_pageCollections` FOREIGN KEY (`pageCollectionId`) REFERENCES `pageCollections` (`id`);

--
-- Constraints for table `roccCodes`
--
ALTER TABLE `roccCodes`
  ADD CONSTRAINT `fk_roccCodes_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`),
  ADD CONSTRAINT `fk_roccCodes_annotationLevels` FOREIGN KEY (`annotationLevel`) REFERENCES `annotationLevels` (`id`),
  ADD CONSTRAINT `fk_roccCodes_centuries` FOREIGN KEY (`century`) REFERENCES `centuries` (`id`),
  ADD CONSTRAINT `fk_roccCodes_difficultyLevels` FOREIGN KEY (`difficultyLevel`) REFERENCES `difficultyLevels` (`id`),
  ADD CONSTRAINT `fk_roccCodes_halfCenturies` FOREIGN KEY (`fiftyYears`) REFERENCES `halfCenturies` (`id`),
  ADD CONSTRAINT `fk_roccCodes_writingTypes` FOREIGN KEY (`writingType`) REFERENCES `writingTypes` (`id`);

--
-- Constraints for table `roccCodeZones`
--
ALTER TABLE `roccCodeZones`
  ADD CONSTRAINT `fk_roccCodeZones_zones` FOREIGN KEY (`zone`) REFERENCES `zones` (`id`),
  ADD CONSTRAINT `fk_roccCodeZones_roccCodes` FOREIGN KEY (`roccCodeId`) REFERENCES `roccCodes` (`id`);

--
-- Constraints for table `scannedCopies`
--
ALTER TABLE `scannedCopies`
  ADD CONSTRAINT `fk_scannedCopies_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`);

--
-- Constraints for table `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `fk_translations_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`);
