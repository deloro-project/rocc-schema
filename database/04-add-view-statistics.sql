CREATE OR REPLACE VIEW statistics AS SELECT
    'accolades' AS 'table_name',
    u.id,
    u.name,
    u.family_name,
    COUNT(a.id) AS 'num_annotations'
FROM
    `objectAnnotators` u
LEFT JOIN `accolades` a ON
    a.objectAnnotator = u.id
GROUP BY
    u.id
UNION ALL
SELECT
    'columns' AS 'table_name',
    u.id,
    u.name,
    u.family_name,
    COUNT(t.id) AS 'num_annotations'
FROM
    `objectAnnotators` u
LEFT JOIN `columns` t ON
    t.objectAnnotator = u.id
GROUP BY
    u.id
UNION ALL
SELECT
    'frames' AS 'table_name',
    u.id,
    u.name,
    u.family_name,
    COUNT(t.id) AS 'num_annotations'
FROM
    `objectAnnotators` u
LEFT JOIN `frames` t ON
    t.objectAnnotator = u.id
GROUP BY
    u.id
UNION ALL
SELECT
    'frontispieces' AS 'table_name',
    u.id,
    u.name,
    u.family_name,
    COUNT(t.id) AS 'num_annotations'
FROM
    `objectAnnotators` u
LEFT JOIN `frontispieces` t ON
    t.objectAnnotator = u.id
GROUP BY
    u.id
UNION ALL
SELECT
    'initialLetters' AS 'table_name',
    u.id,
    u.name,
    u.family_name,
    COUNT(t.id) AS 'num_annotations'
FROM
    `objectAnnotators` u
LEFT JOIN `initialLetters` t ON
    t.objectAnnotator = u.id
GROUP BY
    u.id
UNION ALL
SELECT
    'letters' AS 'table_name',
    u.id,
    u.name,
    u.family_name,
    COUNT(t.id) AS 'num_annotations'
FROM
    `objectAnnotators` u
LEFT JOIN `letters` t ON
    t.objectAnnotator = u.id
GROUP BY
    u.id
UNION ALL
SELECT
    'lines' AS 'table_name',
    u.id,
    u.name,
    u.family_name,
    COUNT(t.id) AS 'num_annotations'
FROM
    `objectAnnotators` u
LEFT JOIN `lines` t ON
    t.objectAnnotator = u.id
GROUP BY
    u.id
UNION ALL
SELECT
    'marginals' AS 'table_name',
    u.id,
    u.name,
    u.family_name,
    COUNT(t.id) AS 'num_annotations'
FROM
    `objectAnnotators` u
LEFT JOIN `marginals` t ON
    t.objectAnnotator = u.id
GROUP BY
    u.id
UNION ALL
SELECT
    'modifiers' AS 'table_name',
    u.id,
    u.name,
    u.family_name,
    COUNT(t.id) AS 'num_annotations'
FROM
    `objectAnnotators` u
LEFT JOIN `modifiers` t ON
    t.objectAnnotator = u.id
GROUP BY
    u.id
UNION ALL
SELECT
    'ornaments' AS 'table_name',
    u.id,
    u.name,
    u.family_name,
    COUNT(t.id) AS 'num_annotations'
FROM
    `objectAnnotators` u
LEFT JOIN `ornaments` t ON
    t.objectAnnotator = u.id
GROUP BY
    u.id
UNION ALL
SELECT
    'outOfLineLetters' AS 'table_name',
    u.id,
    u.name,
    u.family_name,
    COUNT(t.id) AS 'num_annotations'
FROM
    `objectAnnotators` u
LEFT JOIN `outOfLineLetters` t ON
    t.objectAnnotator = u.id
GROUP BY
    u.id
UNION ALL
SELECT
    'referenceMarksAboveLines' AS 'table_name',
    u.id,
    u.name,
    u.family_name,
    COUNT(t.id) AS 'num_annotations'
FROM
    `objectAnnotators` u
LEFT JOIN `referenceMarksAboveLines` t ON
    t.objectAnnotator = u.id
GROUP BY
    u.id
UNION ALL
SELECT
    'referenceMarksOnMargin' AS 'table_name',
    u.id,
    u.name,
    u.family_name,
    COUNT(t.id) AS 'num_annotations'
FROM
    `objectAnnotators` u
LEFT JOIN `referenceMarksOnMargin` t ON
    t.objectAnnotator = u.id
GROUP BY
    u.id
UNION ALL
SELECT
    'titles' AS 'table_name',
    u.id,
    u.name,
    u.family_name,
    COUNT(t.id) AS 'num_annotations'
FROM
    `objectAnnotators` u
LEFT JOIN `titles` t ON
    t.objectAnnotator = u.id
GROUP BY
    u.id
