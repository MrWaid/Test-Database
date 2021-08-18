create table "Users"
(
    id        integer,
    name      text,
    birthdate date
);

insert into "Users" (id, name, birthdate)
    values (1, 'Мерсер Фрей',    '1976-03-18'),
           (2, 'Бриньольф',      '1983-05-10'),
           (3, 'Делвин Меллори', '1980-04-20'),
           (4, 'Векс',           '2002-08-14'),
           (5, 'Тонилла',        '1984-12-12'),
           (6, 'Векел Воин',     '1981-06-13');