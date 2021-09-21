INSERT INTO public.accoladedirections (id) VALUES
('left'),
('right');

INSERT INTO public.alignmenttypes (id) VALUES
('gold'),
('test');

INSERT INTO public.annotationlevels (id, name) VALUES
('g', 'gold'),
('m', 'mixt'),
('o', 'original'),
('t', 'test');

INSERT INTO public.bookformats (id) VALUES
(' '),
('duo'),
('folio'),
('octavo'),
('quarto');

INSERT INTO public.centuries (id) VALUES
('XIX'),
('XVI'),
('XVII'),
('XVIII');

INSERT INTO public.columnpositions (id, name) VALUES
('L', 'Left'),
('R', 'Right'),
('U', 'Unique');

INSERT INTO public.corrections (id) VALUES
('few'),
('many'),
('none');

INSERT INTO public.difficultylevels (id, name) VALUES
(1, 'easy'),
(3, 'hard'),
(2, 'medium');

INSERT INTO public.halfcenturies (id) VALUES
(1),
(2);

INSERT INTO public.linetypes (id) VALUES
('footer'),
('header'),
('ordinary');

INSERT INTO public.marginalwritings (id) VALUES
('few'),
('many'),
('none');

INSERT INTO public.provinces (id, name) VALUES
(4, ' '),
(1, 'Moldova'),
(2, 'Țara Românească'),
(3, 'Transilvania');

INSERT INTO public.sheettypes (id) VALUES
('n/a'),
('page'),
('sheet');

INSERT INTO public.writingtypes (id, name) VALUES
('m', 'manuscript'),
('p', 'print'),
('su', 'semiuncial'),
('u', 'uncial'),
('', 'unknown');

INSERT INTO public.zones (id, name) VALUES
('BT', 'Banat'),
('BS', 'Bessarabia'),
('MM', 'Maramureș'),
('MD', 'Moldavia'),
('T', 'Transylvania'),
(' ', 'Unknown'),
('W', 'Wallachia');
