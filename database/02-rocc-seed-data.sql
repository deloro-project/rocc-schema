INSERT INTO accoladedirections (id) VALUES
('left'),
('right');

INSERT INTO alignmenttypes (id) VALUES
('gold'),
('test');

INSERT INTO annotationlevels (id, name) VALUES
('g', 'gold'),
('m', 'mixt'),
('o', 'original'),
('t', 'test');

INSERT INTO bookformats (id) VALUES
(' '),
('duo'),
('folio'),
('octavo'),
('quarto');

INSERT INTO centuries (id) VALUES
('XIX'),
('XVI'),
('XVII'),
('XVIII');

INSERT INTO columnpositions (id, name) VALUES
('L', 'Left'),
('R', 'Right'),
('U', 'Unique');

INSERT INTO corrections (id) VALUES
('few'),
('many'),
('none');

INSERT INTO difficultylevels (id, name) VALUES
(1, 'easy'),
(3, 'hard'),
(2, 'medium');

INSERT INTO halfcenturies (id) VALUES
(1),
(2);

INSERT INTO linetypes (id) VALUES
('footer'),
('header'),
('ordinary');

INSERT INTO marginalwritings (id) VALUES
('few'),
('many'),
('none');

INSERT INTO provinces (id, name) VALUES
(4, ' '),
(1, 'Moldova'),
(2, 'Țara Românească'),
(3, 'Transilvania');

INSERT INTO sheettypes (id) VALUES
('n/a'),
('page'),
('sheet');

INSERT INTO writingtypes (id, name) VALUES
('m', 'manuscript'),
('p', 'print'),
('su', 'semiuncial'),
('u', 'uncial'),
('', 'unknown');

INSERT INTO zones (id, name) VALUES
('BT', 'Banat'),
('BS', 'Bessarabia'),
('MM', 'Maramureș'),
('MD', 'Moldavia'),
('T', 'Transylvania'),
(' ', 'Unknown'),
('W', 'Wallachia');
