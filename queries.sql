-- create table
--     artist(
--         id serial primary key,
--         f_name varchar(20),
--         l_name varchar(20)
--     )
-- create table
--     album(
--         id serial primary key,
--         name varchar(20),
--         artist_id integer references artist (id)
--     );

-- insert into album(name, artist_id) values ('ares', 2);
select
    a.f_name as bruh
    -- *
    -- artist.f_name,
    -- artist.l_name
FROM
    album
    JOIN artist as a ON album.artist_id = a.id;

-- insert into artist(f_name, l_name) values ('abrar', 'mahi');
-- delete from artist where id = 3;
-- select
--     *
-- from
--     artist

create table dogs(
    dog_tag serial PRIMARY KEY,
    d_name varchar(20),
    d_age varchar(20),
    d_type varchar(20)
)

insert into dogs(d_name, d_age, d_type) VALUES ('scooby', 12, 'american')

select * from dogs

create table d_owners(
    owner_id serial PRIMARY KEY,
    owner_name VARCHAR(25),
    owner_age  VARCHAR(20),
    dog_tag INTEGER References dogs(dog_tag)
)

insert into d_owners(owner_name, owner_age,dog_tag) values ('abrar', '22', 1)

select 
    dogs.d_name
FROM
    d_owners
    Join dogs ON d_owners.dog_tag = dogs.dog_tag
