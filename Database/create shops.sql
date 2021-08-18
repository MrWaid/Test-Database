create table "Shops"
(
    id   integer NOT NULL PRIMARY KEY CHECK ( id > 0 ),
    name text    NOT NULL
);

insert into "Shops" (id, name)
    values (1, 'Обожжённый молот'),
           (2, 'Заложенная креветка'),
           (3, 'Элексиры Элгрима');
