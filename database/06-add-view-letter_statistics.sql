CREATE OR REPLACE VIEW `letter_statistics`  AS
WITH
    `letter_rows` AS(
    SELECT
        `rocc`.`letters`.`content` AS `letter`
    FROM
        `rocc`.`letters`
)
SELECT
    `letter_rows`.`letter` AS `letter`,
    COUNT(`letter_rows`.`letter`) AS `num_annotations`
FROM
    `letter_rows`
GROUP BY
    `letter_rows`.`letter`
ORDER BY
    `letter_rows`.`letter`
