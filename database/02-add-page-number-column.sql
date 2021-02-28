ALTER TABLE
    `pages` ADD COLUMN `pageNumber` INT NULL AFTER `pageCollectionId`;
UPDATE
    `pages`
SET
    `pageNumber` =
REPLACE
    (
        regexp_substr(pageName, '[0-9]+\\.'),
        '.',
        ''
    );
ALTER TABLE
    `pages` MODIFY `pageNumber` INT NOT NULL;
ALTER TABLE
    `pages` ADD UNIQUE(`pageCollectionId`, `pageNumber`);
