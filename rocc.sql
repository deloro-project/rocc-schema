SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `annotationLevels` (
  `id` char(1) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `annotationLevels` (`id`, `name`) VALUES
('g', 'gold'),
('m', 'mixt'),
('o', 'original'),
('t', 'test');

CREATE TABLE IF NOT EXISTS `authorBiographyLines` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `bio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `authorNameAdditions` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `addToName` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `centuries` (
  `id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `centuries` (`id`) VALUES
('XIX'),
('XVI'),
('XVII'),
('XVIII');

CREATE TABLE IF NOT EXISTS `columnPositions` (
  `id` varchar(1) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `columnPositions` (`id`, `name`) VALUES
('L', 'Left'),
('R', 'Right'),
('U', 'Unique');

CREATE TABLE IF NOT EXISTS `columns` (
  `id` int(11) NOT NULL,
  `pageId` int(11) NOT NULL,
  `columnPosition` varchar(1) NOT NULL,
  `objectAnnotator` varchar(256) NOT NULL,
  `leftUpHoriz` decimal(10,0) NOT NULL,
  `leftUpVert` decimal(10,0) NOT NULL,
  `rightDownHoriz` decimal(10,0) NOT NULL,
  `rightDownVert` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `contentDescriptions` (
  `id` int(11) NOT NULL,
  `metadataId` int(11) NOT NULL,
  `style` varchar(100) NOT NULL,
  `subject` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `corrections` (
  `id` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `corrections` (`id`) VALUES
('few'),
('many'),
('none');

CREATE TABLE IF NOT EXISTS `creations` (
  `id` int(11) NOT NULL,
  `metadataId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `locationId` int(11) NOT NULL,
  `creationYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `creationSecondaryAuthors` (
  `creationId` int(11) NOT NULL,
  `authorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `difficultyCriteria` (
  `id` int(11) NOT NULL,
  `pageId` int(11) NOT NULL,
  `damaged` tinyint(1) NOT NULL,
  `opaqueSpots` tinyint(1) NOT NULL,
  `transparentPaper` tinyint(1) NOT NULL,
  `overlayPrint` tinyint(1) DEFAULT NULL,
  `interlineWriting` tinyint(1) NOT NULL,
  `palimpsest` tinyint(1) NOT NULL,
  `corrections` varchar(4) NOT NULL,
  `marginalWriting` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `difficultyLevels` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `difficultyLevels` (`id`, `name`) VALUES
(1, 'easy'),
(3, 'hard'),
(2, 'medium');

CREATE TABLE IF NOT EXISTS `dimensions` (
  `id` int(11) NOT NULL,
  `publishingId` int(11) NOT NULL,
  `units` varchar(2) NOT NULL,
  `width` decimal(10,0) NOT NULL,
  `height` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `formatDescriptions` (
  `id` int(11) NOT NULL,
  `metadataId` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `frontispieces` (
  `id` int(11) NOT NULL,
  `pageId` int(11) NOT NULL,
  `objectAnnotator` varchar(256) NOT NULL,
  `leftUpHoriz` decimal(10,0) NOT NULL,
  `leftUpVert` decimal(10,0) NOT NULL,
  `rightDownHoriz` decimal(10,0) NOT NULL,
  `rightDownVert` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `halfCenturies` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `halfCenturies` (`id`) VALUES
(1),
(2);

CREATE TABLE IF NOT EXISTS `letters` (
  `id` int(11) NOT NULL,
  `pageId` int(11) NOT NULL,
  `objectAnnotator` varchar(256) NOT NULL,
  `content` varchar(10) NOT NULL,
  `accuracy` decimal(10,0) DEFAULT NULL,
  `leftUpHoriz` decimal(10,0) NOT NULL,
  `leftUpVert` decimal(10,0) NOT NULL,
  `rightDownHoriz` decimal(10,0) NOT NULL,
  `rightDownVert` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `lines` (
  `id` int(11) NOT NULL,
  `pageId` int(11) NOT NULL,
  `objectAnnotator` varchar(256) NOT NULL,
  `inColumn` varchar(10) DEFAULT NULL,
  `content` text,
  `leftUpHoriz` decimal(10,0) NOT NULL,
  `leftUpVert` decimal(10,0) NOT NULL,
  `rightDownHoriz` decimal(10,0) NOT NULL,
  `rightDownVert` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `lineTypes` (
  `id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `lineTypes` (`id`) VALUES
('footer'),
('header'),
('ordinary');

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL,
  `provinceId` int(11) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `house` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `marginalWritings` (
  `id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `marginalWritings` (`id`) VALUES
('few'),
('many'),
('none');

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

CREATE TABLE IF NOT EXISTS `pageCollections` (
  `id` int(11) NOT NULL,
  `integralTranscribedTextFile` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `pages` (
  `pageId` int(11) NOT NULL,
  `pageCollectionId` int(11) NOT NULL,
  `pageName` varchar(100) NOT NULL,
  `pageImageFile` varchar(255) NOT NULL,
  `textPageFile` varchar(256) DEFAULT NULL,
  `beginningOfPage` int(11) DEFAULT NULL,
  `endOfPage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `provinces` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `provinces` (`id`, `name`) VALUES
(1, 'Moldova'),
(2, 'Țara Românească'),
(3, 'Transilvania');

CREATE TABLE IF NOT EXISTS `publishing` (
  `id` int(11) NOT NULL,
  `metadataId` int(11) NOT NULL,
  `publishingYear` int(11) NOT NULL,
  `publisher` text NOT NULL,
  `noOfPagesOrSheets` int(11) NOT NULL,
  `pageOrSheet` varchar(5) NOT NULL,
  `publishingLocation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `roccCodeZones` (
  `roccCodeId` int(11) NOT NULL,
  `zone` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `scannedCopies` (
  `id` int(11) NOT NULL,
  `metadataId` int(11) NOT NULL,
  `library` varchar(255) NOT NULL,
  `libraryCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `sheetTypes` (
  `id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sheetTypes` (`id`) VALUES
('page'),
('sheet');

CREATE TABLE IF NOT EXISTS `titles` (
  `id` int(11) NOT NULL,
  `pageId` int(11) NOT NULL,
  `objectAnnotator` varchar(256) NOT NULL,
  `objectContent` varchar(1024) NOT NULL,
  `leftUpHoriz` decimal(10,0) NOT NULL,
  `leftUpVert` decimal(10,0) NOT NULL,
  `rightDownHoriz` decimal(10,0) NOT NULL,
  `rightDownVert` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(11) NOT NULL,
  `metadataId` int(11) NOT NULL,
  `originalLanguage` varchar(50) NOT NULL,
  `originalAuthor` varchar(255) DEFAULT NULL,
  `translator` varchar(255) DEFAULT NULL,
  `secTranslator` varchar(1023) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `unitTypes` (
  `id` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `unitTypes` (`id`) VALUES
('cm'),
('mm');

CREATE TABLE IF NOT EXISTS `writingTypes` (
  `id` varchar(2) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `writingTypes` (`id`, `name`) VALUES
('m', 'manuscript'),
('p', 'print'),
('su', 'semiuncial'),
('u', 'uncial');

CREATE TABLE IF NOT EXISTS `zones` (
  `id` varchar(2) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `zones` (`id`, `name`) VALUES
('BT', 'Banat'),
('BS', 'Bessarabia'),
('MM', 'Maramureș'),
('MD', 'Moldavia'),
('T', 'Transylvania'),
('W', 'Wallachia');


ALTER TABLE `annotationLevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_annotationLevels_name` (`name`);

ALTER TABLE `authorBiographyLines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authorId` (`authorId`);

ALTER TABLE `authorNameAdditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authorId` (`authorId`);

ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `centuries`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `columnPositions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_columnPositions_name` (`name`);

ALTER TABLE `columns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageId` (`pageId`),
  ADD KEY `columnPosition` (`columnPosition`);

ALTER TABLE `contentDescriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_contentDescriptions_metadataId` (`metadataId`) USING BTREE,
  ADD KEY `metadataId` (`metadataId`),
  ADD KEY `style` (`style`);

ALTER TABLE `corrections`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `creations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metadataId` (`metadataId`),
  ADD KEY `authorId` (`authorId`),
  ADD KEY `locationId` (`locationId`);

ALTER TABLE `creationSecondaryAuthors`
  ADD PRIMARY KEY (`creationId`,`authorId`),
  ADD KEY `fk_creationSecondaryAuthors_authors` (`authorId`);

ALTER TABLE `difficultyCriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `corrections` (`corrections`),
  ADD KEY `marginalWriting` (`marginalWriting`),
  ADD KEY `pageId` (`pageId`);

ALTER TABLE `difficultyLevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_difficultyLevels_name` (`name`);

ALTER TABLE `dimensions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publishingId` (`publishingId`),
  ADD KEY `units` (`units`);

ALTER TABLE `formatDescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metadataId` (`metadataId`);

ALTER TABLE `frontispieces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageId` (`pageId`);

ALTER TABLE `halfCenturies`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `letters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageId` (`pageId`),
  ADD KEY `objectAnnotator` (`objectAnnotator`(255));

ALTER TABLE `lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `objectAnnotator` (`objectAnnotator`(255)),
  ADD KEY `inColumn` (`inColumn`),
  ADD KEY `pageId` (`pageId`);

ALTER TABLE `lineTypes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinceId` (`provinceId`);

ALTER TABLE `marginalWritings`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `pageCollectionMetadata`
  ADD PRIMARY KEY (`roccId`),
  ADD UNIQUE KEY `pageCollectionURL` (`pageCollectionURL`),
  ADD KEY `pageCollectionId` (`pageCollectionId`);

ALTER TABLE `pageCollections`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `pages`
  ADD PRIMARY KEY (`pageId`),
  ADD KEY `pageCollectionId` (`pageCollectionId`);

ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_provinces_name` (`name`) USING BTREE;

ALTER TABLE `publishing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metadataId` (`metadataId`),
  ADD KEY `publishingLocation` (`publishingLocation`),
  ADD KEY `pageOrSheet` (`pageOrSheet`);

ALTER TABLE `roccCodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `annotationLevel` (`annotationLevel`),
  ADD KEY `difficultyLevel` (`difficultyLevel`),
  ADD KEY `writingType` (`writingType`),
  ADD KEY `century` (`century`),
  ADD KEY `fiftyYears` (`fiftyYears`),
  ADD KEY `metadataId` (`metadataId`);

ALTER TABLE `roccCodeZones`
  ADD PRIMARY KEY (`roccCodeId`,`zone`),
  ADD KEY `fk_roccCodeZones_zones` (`zone`);

ALTER TABLE `scannedCopies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metadataId` (`metadataId`);

ALTER TABLE `sheetTypes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageId` (`pageId`);

ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metadataId` (`metadataId`);

ALTER TABLE `unitTypes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `writingTypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_writingTypes_name` (`name`);

ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_zones_name` (`name`);


ALTER TABLE `authorBiographyLines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `authorNameAdditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `columns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `contentDescriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `creations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `difficultyCriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `dimensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `formatDescriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `frontispieces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `letters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `lines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `pageCollectionMetadata`
  MODIFY `roccId` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `pageCollections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `pages`
  MODIFY `pageId` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
ALTER TABLE `publishing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `roccCodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `scannedCopies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `authorBiographyLines`
  ADD CONSTRAINT `fk_authorBiographyLines_authors` FOREIGN KEY (`authorId`) REFERENCES `authors` (`id`);

ALTER TABLE `authorNameAdditions`
  ADD CONSTRAINT `fk_authorNameAdditions_authors` FOREIGN KEY (`authorId`) REFERENCES `authors` (`id`);

ALTER TABLE `columns`
  ADD CONSTRAINT `fk_columns_pages` FOREIGN KEY (`pageId`) REFERENCES `pages` (`pageId`),
  ADD CONSTRAINT `fk_columns_columnPositions` FOREIGN KEY (`columnPosition`) REFERENCES `columnPositions` (`id`);

ALTER TABLE `contentDescriptions`
  ADD CONSTRAINT `fk_contentDescriptions_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`);

ALTER TABLE `creations`
  ADD CONSTRAINT `fk_creationInfo_locations` FOREIGN KEY (`locationId`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `fk_creationInfo_authors` FOREIGN KEY (`authorId`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `fk_creationInfo_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`);

ALTER TABLE `creationSecondaryAuthors`
  ADD CONSTRAINT `fk_creationSecondaryAuthors_creations` FOREIGN KEY (`creationId`) REFERENCES `creations` (`id`),
  ADD CONSTRAINT `fk_creationSecondaryAuthors_authors` FOREIGN KEY (`authorId`) REFERENCES `authors` (`id`);

ALTER TABLE `difficultyCriteria`
  ADD CONSTRAINT `fk_difficultyCriteria_pages` FOREIGN KEY (`pageId`) REFERENCES `pages` (`pageId`),
  ADD CONSTRAINT `fk_difficultyCriteria_corrections` FOREIGN KEY (`corrections`) REFERENCES `corrections` (`id`),
  ADD CONSTRAINT `fk_difficultyCriteria_marginalWritings` FOREIGN KEY (`marginalWriting`) REFERENCES `marginalWritings` (`id`);

ALTER TABLE `dimensions`
  ADD CONSTRAINT `fk_dimensions_unitTypes` FOREIGN KEY (`units`) REFERENCES `unitTypes` (`id`),
  ADD CONSTRAINT `fk_dimensions_publishing` FOREIGN KEY (`publishingId`) REFERENCES `publishing` (`id`);

ALTER TABLE `formatDescriptions`
  ADD CONSTRAINT `fk_formatDescriptions_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`);

ALTER TABLE `frontispieces`
  ADD CONSTRAINT `fk_frontispieces_pages` FOREIGN KEY (`pageId`) REFERENCES `pages` (`pageId`);

ALTER TABLE `letters`
  ADD CONSTRAINT `fk_letters_pages` FOREIGN KEY (`pageId`) REFERENCES `pages` (`pageId`);

ALTER TABLE `lines`
  ADD CONSTRAINT `fk_lines_pages` FOREIGN KEY (`pageId`) REFERENCES `pages` (`pageId`),
  ADD CONSTRAINT `fk_lines_lineTypes` FOREIGN KEY (`inColumn`) REFERENCES `lineTypes` (`id`);

ALTER TABLE `locations`
  ADD CONSTRAINT `fk_locations_provinces` FOREIGN KEY (`provinceId`) REFERENCES `provinces` (`id`);

ALTER TABLE `pageCollectionMetadata`
  ADD CONSTRAINT `fk_pageCollectionMetadata_pageCollections` FOREIGN KEY (`pageCollectionId`) REFERENCES `pageCollections` (`id`);

ALTER TABLE `pages`
  ADD CONSTRAINT `fk_onePageImages_pageCollections` FOREIGN KEY (`pageCollectionId`) REFERENCES `pageCollections` (`id`);

ALTER TABLE `publishing`
  ADD CONSTRAINT `fk_publishing_locations` FOREIGN KEY (`publishingLocation`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `fk_publishing_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`),
  ADD CONSTRAINT `fk_publishing_sheetTypes` FOREIGN KEY (`pageOrSheet`) REFERENCES `sheetTypes` (`id`);

ALTER TABLE `roccCodes`
  ADD CONSTRAINT `fk_roccCodes_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`),
  ADD CONSTRAINT `fk_roccCodes_annotationLevels` FOREIGN KEY (`annotationLevel`) REFERENCES `annotationLevels` (`id`),
  ADD CONSTRAINT `fk_roccCodes_centuries` FOREIGN KEY (`century`) REFERENCES `centuries` (`id`),
  ADD CONSTRAINT `fk_roccCodes_difficultyLevels` FOREIGN KEY (`difficultyLevel`) REFERENCES `difficultyLevels` (`id`),
  ADD CONSTRAINT `fk_roccCodes_halfCenturies` FOREIGN KEY (`fiftyYears`) REFERENCES `halfCenturies` (`id`),
  ADD CONSTRAINT `fk_roccCodes_writingTypes` FOREIGN KEY (`writingType`) REFERENCES `writingTypes` (`id`);

ALTER TABLE `roccCodeZones`
  ADD CONSTRAINT `fk_roccCodeZones_zones` FOREIGN KEY (`zone`) REFERENCES `zones` (`id`),
  ADD CONSTRAINT `fk_roccCodeZones_roccCodes` FOREIGN KEY (`roccCodeId`) REFERENCES `roccCodes` (`id`);

ALTER TABLE `scannedCopies`
  ADD CONSTRAINT `fk_scannedCopies_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`);

ALTER TABLE `titles`
  ADD CONSTRAINT `fk_titles_pages` FOREIGN KEY (`pageId`) REFERENCES `pages` (`pageId`);

ALTER TABLE `translations`
  ADD CONSTRAINT `fk_translations_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`);
