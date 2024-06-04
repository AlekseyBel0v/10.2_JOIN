create schema netology;

create table netology.USERS
(
    id SERIAL primary key,
    name varchar(255) not null,
    age int check ( age > 0 ),
    city_id int
);

create table netology.CITIES
(
    id int primary key,
    name varchar(255) not null
);

select * from netology.USERS u left join netology.CITIES c on u.city_id = c.id;
select u.id, u.name, u.age, u.city_id, c.name as "город" from netology.USERS u left join netology.CITIES c on u.city_id = c.id;


drop table netology.CITIES;

INSERT into netology.CITIES (id, name) values (1, 'Moscow');
INSERT into netology.CITIES (id, name) values (2, 'Minsk');
INSERT into netology.CITIES (id, name) values (3, 'Pinsk');

INSERT into netology.USERS (name, age, city_id) values ('Alex', 18, 1);
INSERT into netology.USERS (name, age, city_id) values ('Maria', 18, 2);
INSERT into netology.USERS (name, age, city_id) values ('Sasha', 20, 2);