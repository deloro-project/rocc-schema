DROP PROCEDURE `get_statistics`;
CREATE DEFINER=`root`@`%` PROCEDURE `get_statistics`(IN `user_id` INT) NOT DETERMINISTIC READS SQL DATA SQL SECURITY DEFINER SELECT
    t.table_name,
    t.total_annotations,
    u.user_annotations
FROM
    (
    SELECT
        s.table_name,
        SUM(s.num_annotations) AS total_annotations
    FROM
        statistics s
    GROUP BY
        s.table_name
) t
JOIN(
    SELECT
        s.table_name,
        SUM(s.num_annotations) AS user_annotations
    FROM
        statistics s
    WHERE
        s.id = user_id
    GROUP BY
        s.table_name
) u
ON
    t.table_name = u.table_name
