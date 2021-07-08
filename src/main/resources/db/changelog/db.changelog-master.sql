--liquibase formatted sql

--changeset nvoxland:1
create table users
(
    id        int primary key,
    name      varchar(255),
    last_name varchar(255)
);

--changeset nvoxland:2
create sequence global_sequence
    start with 1
    increment by 1
    no cache
;

--changeset nvoxland:3
insert into users (id, name, last_name) values (global_sequence.nextval, 'Alex', 'Blinov');
insert into users (id, name, last_name) values (global_sequence.nextval, 'Boris', 'Sidorov');
insert into users (id, name, last_name) values (global_sequence.nextval, 'Cinderella', 'Bella');
