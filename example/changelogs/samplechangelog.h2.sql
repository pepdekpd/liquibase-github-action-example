--liquibase formatted sql

--changeset pepdek:1
--rollback DROP TABLE person;
create table person (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset pepdek:2
--rollback DROP TABLE company;
create table company (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset pepdek:3
--rollback ALTER TABLE person DROP COLUMN country;
alter table person add column country varchar(2)

--changeset pepdek:4
--rollback ALTER TABLE person DROP COLUMN state;
alter table person add column state varchar(2)

--changeset pepdek:5
--rollback ALTER TABLE company DROP COLUMN country;
alter table company add column country varchar(2)

--changeset pepdek:6
--rollback DELETE FROM company WHERE id=1;
INSERT INTO company values (1,'pepdek','Straatweg 7','1945AR', 'ARNHEM', 'NL')

--changeset fernando:7
--rollback DELETE FROM company WHERE id=2;
INSERT INTO company values (2,'fernando','Straatweg 9','1945AR', 'ARNHEM', 'NL')