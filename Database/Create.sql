create DATABASE "Shops and Customers";

create table "Users"
(
    id        integer NOT NULL PRIMARY KEY CHECK ( id > 0 ),
    name      text    NOT NULL,
    birthdate date CHECK ( birthdate > '0000-00-00' )
);

create table "Shops"
(
    id   integer NOT NULL PRIMARY KEY CHECK ( id > 0 ),
    name text    NOT NULL
);

create table "Shopping_list"
(
    id      integer NOT NULL PRIMARY KEY CHECK ( id > 0 ),
    shop_id integer NOT NULL CHECK ( shop_id > 0 ),
    user_id integer NOT NULL CHECK ( user_id > 0 ),
    amount  integer NOT NULL CHECK ( amount> 0 ),
    data    date CHECK ( data > '0000-00-00' ),

    FOREIGN KEY (shop_id) REFERENCES "Shops" (id) ON DELETE CASCADE ,
    FOREIGN KEY (user_id) REFERENCES "Users" (id) ON DELETE CASCADE
);
