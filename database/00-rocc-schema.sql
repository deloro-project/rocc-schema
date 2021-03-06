SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `accoladeDirections` (
  `id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `accolades` (
  `id` int(11) NOT NULL,
  `pageid` int(11) NOT NULL,
  `objectannotator` varchar(256) NOT NULL,
  `leftuphoriz` decimal(10,0) NOT NULL,
  `leftupvert` decimal(10,0) NOT NULL,
  `rightdownhoriz` decimal(10,0) NOT NULL,
  `rightdownvert` decimal(10,0) NOT NULL,
  `direction` varchar(10) NOT NULL,
  `horizCoordOfPeak` decimal(10,0) NOT NULL,
  `vertCoordOfPeak` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `alignmentTypes` (
  `id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `annotationLevels` (
  `id` char(1) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `bookFormats` (
  `id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `centuries` (
  `id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `columnPositions` (
  `id` varchar(1) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `creationLocations` (
  `id` int(11) NOT NULL,
  `provinceId` int(11) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `house` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `dimensions` (
  `id` int(11) NOT NULL,
  `publishingId` int(11) NOT NULL,
  `contentWidth` decimal(10,0) NOT NULL,
  `contentHeight` decimal(10,0) NOT NULL,
  `pageWidth` decimal(10,0) NOT NULL,
  `pageHeight` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `formatDescriptions` (
  `id` int(11) NOT NULL,
  `metadataId` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `frames` (
  `id` int(11) NOT NULL,
  `pageid` int(11) NOT NULL,
  `objectannotator` varchar(256) NOT NULL,
  `extFrameLeftUpHoriz` decimal(10,0) NOT NULL,
  `extFrameLeftUpVert` decimal(10,0) NOT NULL,
  `extFrameRightDownHoriz` decimal(10,0) NOT NULL,
  `extFrameRightDownVert` decimal(10,0) NOT NULL,
  `intFrameLeftUpHoriz` decimal(10,0) NOT NULL,
  `intFrameLeftUpVert` decimal(10,0) NOT NULL,
  `intFrameRightDownHoriz` decimal(10,0) NOT NULL,
  `intFrameRightDownVert` decimal(10,0) NOT NULL
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

CREATE TABLE IF NOT EXISTS `initialLetters` (
  `id` int(11) NOT NULL,
  `pageid` int(11) NOT NULL,
  `objectannotator` varchar(256) NOT NULL,
  `content` varchar(100) DEFAULT NULL,
  `leftuphoriz` decimal(10,0) NOT NULL,
  `leftupvert` decimal(10,0) NOT NULL,
  `rightdownhoriz` decimal(10,0) NOT NULL,
  `rightdownvert` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `letterAlignments` (
  `id` int(11) NOT NULL,
  `letterId` int(11) NOT NULL,
  `alignmentType` varchar(10) NOT NULL,
  `characterOffset` int(11) NOT NULL,
  `length` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `lettersSequences` (
  `sequenceId` int(11) NOT NULL,
  `letterId` int(11) NOT NULL
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

CREATE TABLE IF NOT EXISTS `marginals` (
  `id` int(11) NOT NULL,
  `pageId` int(11) NOT NULL,
  `objectAnnotator` varchar(256) NOT NULL,
  `content` varchar(100) DEFAULT NULL,
  `leftUpHoriz` decimal(10,0) NOT NULL,
  `leftUpVert` decimal(10,0) NOT NULL,
  `rightDownHoriz` decimal(10,0) NOT NULL,
  `rightDownVert` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `marginalWritings` (
  `id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `modifiers` (
  `id` int(11) NOT NULL,
  `pageId` int(11) NOT NULL,
  `objectAnnotator` varchar(256) NOT NULL,
  `content` varchar(100) DEFAULT NULL,
  `leftUpHoriz` decimal(10,0) NOT NULL,
  `leftUpVert` decimal(10,0) NOT NULL,
  `rightDownHoriz` decimal(10,0) NOT NULL,
  `rightDownVert` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ornaments` (
  `id` int(11) NOT NULL,
  `pageid` int(11) NOT NULL,
  `objectannotator` varchar(256) NOT NULL,
  `content` varchar(100) DEFAULT NULL,
  `leftuphoriz` decimal(10,0) NOT NULL,
  `leftupvert` decimal(10,0) NOT NULL,
  `rightdownhoriz` decimal(10,0) NOT NULL,
  `rightdownvert` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `outOfLineLetters` (
  `id` int(11) NOT NULL,
  `pageId` int(11) NOT NULL,
  `objectAnnotator` varchar(256) NOT NULL,
  `content` varchar(100) DEFAULT NULL,
  `leftUpHoriz` decimal(10,0) NOT NULL,
  `leftUpVert` decimal(10,0) NOT NULL,
  `rightDownHoriz` decimal(10,0) NOT NULL,
  `rightDownVert` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `pageLuminosity` decimal(10,0) NOT NULL,
  `pageImageFile` varchar(255) NOT NULL,
  `textPageFile` varchar(256) DEFAULT NULL,
  `beginningOfPage` int(11) DEFAULT NULL,
  `endOfPage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `provinces` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `publishing` (
  `id` int(11) NOT NULL,
  `metadataId` int(11) NOT NULL,
  `publishingYear` int(11) NOT NULL,
  `publisher` text NOT NULL,
  `noOfPagesOrSheets` int(11) NOT NULL,
  `pageOrSheet` varchar(5) NOT NULL,
  `bookFormat` varchar(10) NOT NULL,
  `publishingLocation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `publishingLocations` (
  `id` int(11) NOT NULL,
  `provinceId` int(11) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `house` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `referenceMarksAboveLines` (
  `id` int(11) NOT NULL,
  `pageid` int(11) NOT NULL,
  `objectannotator` varchar(256) NOT NULL,
  `content` varchar(100) DEFAULT NULL,
  `leftuphoriz` decimal(10,0) NOT NULL,
  `leftupvert` decimal(10,0) NOT NULL,
  `rightdownhoriz` decimal(10,0) NOT NULL,
  `rightdownvert` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `referenceMarksOnMargin` (
  `id` int(11) NOT NULL,
  `pageid` int(11) NOT NULL,
  `objectannotator` varchar(256) NOT NULL,
  `content` varchar(100) DEFAULT NULL,
  `leftuphoriz` decimal(10,0) NOT NULL,
  `leftupvert` decimal(10,0) NOT NULL,
  `rightdownhoriz` decimal(10,0) NOT NULL,
  `rightdownvert` decimal(10,0) NOT NULL
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

CREATE TABLE IF NOT EXISTS `sequences` (
  `id` int(11) NOT NULL,
  `alignmentType` varchar(10) NOT NULL,
  `characterOffset` int(11) NOT NULL,
  `characterLength` int(11) NOT NULL,
  `letterLength` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `sheetTypes` (
  `id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `titles` (
  `id` int(11) NOT NULL,
  `pageId` int(11) NOT NULL,
  `objectAnnotator` varchar(256) NOT NULL,
  `content` varchar(1024) NOT NULL,
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

CREATE TABLE IF NOT EXISTS `writingTypes` (
  `id` varchar(2) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `zones` (
  `id` varchar(2) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `accoladeDirections`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `accolades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageid` (`pageid`),
  ADD KEY `direction` (`direction`);

ALTER TABLE `alignmentTypes`
  ADD PRIMARY KEY (`id`);

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

ALTER TABLE `bookFormats`
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

ALTER TABLE `creationLocations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinceId` (`provinceId`);

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
  ADD KEY `publishingId` (`publishingId`);

ALTER TABLE `formatDescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metadataId` (`metadataId`);

ALTER TABLE `frames`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageid` (`pageid`);

ALTER TABLE `frontispieces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageId` (`pageId`);

ALTER TABLE `halfCenturies`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `initialLetters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageid` (`pageid`);

ALTER TABLE `letterAlignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `letterId` (`letterId`),
  ADD KEY `alignmentType` (`alignmentType`);

ALTER TABLE `letters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageId` (`pageId`),
  ADD KEY `objectAnnotator` (`objectAnnotator`(255));

ALTER TABLE `lettersSequences`
  ADD PRIMARY KEY (`sequenceId`,`letterId`),
  ADD KEY `fk_lettersSequences_letters` (`letterId`);

ALTER TABLE `lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `objectAnnotator` (`objectAnnotator`(255)),
  ADD KEY `inColumn` (`inColumn`),
  ADD KEY `pageId` (`pageId`);

ALTER TABLE `lineTypes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `marginals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageId` (`pageId`),
  ADD KEY `objectAnnotator` (`objectAnnotator`(255));

ALTER TABLE `marginalWritings`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `modifiers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageId` (`pageId`);

ALTER TABLE `ornaments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageid` (`pageid`);

ALTER TABLE `outOfLineLetters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageId` (`pageId`);

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
  ADD KEY `pageOrSheet` (`pageOrSheet`),
  ADD KEY `bookFormat` (`bookFormat`);

ALTER TABLE `publishingLocations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinceId` (`provinceId`);

ALTER TABLE `referenceMarksAboveLines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageid` (`pageid`);

ALTER TABLE `referenceMarksOnMargin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageid` (`pageid`);

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

ALTER TABLE `sequences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alignmentType` (`alignmentType`);

ALTER TABLE `sheetTypes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageId` (`pageId`);

ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metadataId` (`metadataId`);

ALTER TABLE `writingTypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_writingTypes_name` (`name`);

ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_zones_name` (`name`);


ALTER TABLE `accolades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
ALTER TABLE `creationLocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `creations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `difficultyCriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `dimensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `formatDescriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `frames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `frontispieces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `initialLetters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `letterAlignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `letters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `lines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `marginals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `modifiers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `ornaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `outOfLineLetters`
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
ALTER TABLE `publishingLocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `referenceMarksAboveLines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `referenceMarksOnMargin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `roccCodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `scannedCopies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `sequences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `accolades`
  ADD CONSTRAINT `fk_accolades_accoladeDirections` FOREIGN KEY (`direction`) REFERENCES `accoladeDirections` (`id`),
  ADD CONSTRAINT `fk_accolades_pages` FOREIGN KEY (`pageid`) REFERENCES `pages` (`pageId`);

ALTER TABLE `authorBiographyLines`
  ADD CONSTRAINT `fk_authorBiographyLines_authors` FOREIGN KEY (`authorId`) REFERENCES `authors` (`id`);

ALTER TABLE `authorNameAdditions`
  ADD CONSTRAINT `fk_authorNameAdditions_authors` FOREIGN KEY (`authorId`) REFERENCES `authors` (`id`);

ALTER TABLE `columns`
  ADD CONSTRAINT `fk_columns_pages` FOREIGN KEY (`pageId`) REFERENCES `pages` (`pageId`),
  ADD CONSTRAINT `fk_columns_columnPositions` FOREIGN KEY (`columnPosition`) REFERENCES `columnPositions` (`id`);

ALTER TABLE `contentDescriptions`
  ADD CONSTRAINT `fk_contentDescriptions_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`);

ALTER TABLE `creationLocations`
  ADD CONSTRAINT `fk_creationLocations_provinces` FOREIGN KEY (`provinceId`) REFERENCES `provinces` (`id`);

ALTER TABLE `creations`
  ADD CONSTRAINT `fk_creations_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`),
  ADD CONSTRAINT `fk_creations_authors` FOREIGN KEY (`authorId`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `fk_creations_creationLocations` FOREIGN KEY (`locationId`) REFERENCES `creationLocations` (`id`);

ALTER TABLE `creationSecondaryAuthors`
  ADD CONSTRAINT `fk_creationSecondaryAuthors_creations` FOREIGN KEY (`creationId`) REFERENCES `creations` (`id`),
  ADD CONSTRAINT `fk_creationSecondaryAuthors_authors` FOREIGN KEY (`authorId`) REFERENCES `authors` (`id`);

ALTER TABLE `difficultyCriteria`
  ADD CONSTRAINT `fk_difficultyCriteria_pages` FOREIGN KEY (`pageId`) REFERENCES `pages` (`pageId`),
  ADD CONSTRAINT `fk_difficultyCriteria_corrections` FOREIGN KEY (`corrections`) REFERENCES `corrections` (`id`),
  ADD CONSTRAINT `fk_difficultyCriteria_marginalWritings` FOREIGN KEY (`marginalWriting`) REFERENCES `marginalWritings` (`id`);

ALTER TABLE `dimensions`
  ADD CONSTRAINT `fk_dimensions_publishing` FOREIGN KEY (`publishingId`) REFERENCES `publishing` (`id`);

ALTER TABLE `formatDescriptions`
  ADD CONSTRAINT `fk_formatDescriptions_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`);

ALTER TABLE `frames`
  ADD CONSTRAINT `fk_frames_pages` FOREIGN KEY (`pageid`) REFERENCES `pages` (`pageId`);

ALTER TABLE `frontispieces`
  ADD CONSTRAINT `fk_frontispieces_pages` FOREIGN KEY (`pageId`) REFERENCES `pages` (`pageId`);

ALTER TABLE `initialLetters`
  ADD CONSTRAINT `fk_initialLetters_pages` FOREIGN KEY (`pageid`) REFERENCES `pages` (`pageId`);

ALTER TABLE `letterAlignments`
  ADD CONSTRAINT `fk_letterAlignments_alignmentTypes` FOREIGN KEY (`alignmentType`) REFERENCES `alignmentTypes` (`id`),
  ADD CONSTRAINT `fk_letterAlignments_letters` FOREIGN KEY (`letterId`) REFERENCES `letters` (`id`);

ALTER TABLE `letters`
  ADD CONSTRAINT `fk_letters_pages` FOREIGN KEY (`pageId`) REFERENCES `pages` (`pageId`);

ALTER TABLE `lettersSequences`
  ADD CONSTRAINT `fk_lettersSequences_sequences` FOREIGN KEY (`sequenceId`) REFERENCES `sequences` (`id`),
  ADD CONSTRAINT `fk_lettersSequences_letters` FOREIGN KEY (`letterId`) REFERENCES `letters` (`id`);

ALTER TABLE `lines`
  ADD CONSTRAINT `fk_lines_pages` FOREIGN KEY (`pageId`) REFERENCES `pages` (`pageId`),
  ADD CONSTRAINT `fk_lines_lineTypes` FOREIGN KEY (`inColumn`) REFERENCES `lineTypes` (`id`);

ALTER TABLE `marginals`
  ADD CONSTRAINT `fk_marginals_pages` FOREIGN KEY (`pageId`) REFERENCES `pages` (`pageId`);

ALTER TABLE `modifiers`
  ADD CONSTRAINT `fk_modifiers_pages` FOREIGN KEY (`pageId`) REFERENCES `pages` (`pageId`);

ALTER TABLE `ornaments`
  ADD CONSTRAINT `fk_ornaments_pages` FOREIGN KEY (`pageid`) REFERENCES `pages` (`pageId`);

ALTER TABLE `outOfLineLetters`
  ADD CONSTRAINT `fk_outOfLineLetters_pages` FOREIGN KEY (`pageId`) REFERENCES `pages` (`pageId`);

ALTER TABLE `pageCollectionMetadata`
  ADD CONSTRAINT `fk_pageCollectionMetadata_pageCollections` FOREIGN KEY (`pageCollectionId`) REFERENCES `pageCollections` (`id`);

ALTER TABLE `pages`
  ADD CONSTRAINT `fk_onePageImages_pageCollections` FOREIGN KEY (`pageCollectionId`) REFERENCES `pageCollections` (`id`);

ALTER TABLE `publishing`
  ADD CONSTRAINT `fk_publishing_publishingLocations` FOREIGN KEY (`publishingLocation`) REFERENCES `publishingLocations` (`id`),
  ADD CONSTRAINT `fk_publishing_bookFormats` FOREIGN KEY (`bookFormat`) REFERENCES `bookFormats` (`id`),
  ADD CONSTRAINT `fk_publishing_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`),
  ADD CONSTRAINT `fk_publishing_sheetTypes` FOREIGN KEY (`pageOrSheet`) REFERENCES `sheetTypes` (`id`);

ALTER TABLE `publishingLocations`
  ADD CONSTRAINT `fk_publishingLocations_provinces` FOREIGN KEY (`provinceId`) REFERENCES `provinces` (`id`);

ALTER TABLE `referenceMarksAboveLines`
  ADD CONSTRAINT `fk_referenceMarksAboveLines_pages` FOREIGN KEY (`pageid`) REFERENCES `pages` (`pageId`);

ALTER TABLE `referenceMarksOnMargin`
  ADD CONSTRAINT `fk_referenceMarksOnMargin_pages` FOREIGN KEY (`pageid`) REFERENCES `pages` (`pageId`);

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

ALTER TABLE `sequences`
  ADD CONSTRAINT `fk_sequences_alignmentTypes` FOREIGN KEY (`alignmentType`) REFERENCES `alignmentTypes` (`id`);

ALTER TABLE `titles`
  ADD CONSTRAINT `fk_titles_pages` FOREIGN KEY (`pageId`) REFERENCES `pages` (`pageId`);

ALTER TABLE `translations`
  ADD CONSTRAINT `fk_translations_pageCollectionMetadata` FOREIGN KEY (`metadataId`) REFERENCES `pageCollectionMetadata` (`roccId`);
