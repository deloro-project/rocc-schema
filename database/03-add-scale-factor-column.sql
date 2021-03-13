alter TABLE `pages` ADD COLUMN `scaleFactor` DOUBLE(25,2)
DEFAULT 1.0
AFTER `pageName`;
