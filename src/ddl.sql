--DDL(Date Definition Language)

-- create
-- drop
-- alter
-- rename
--truncate


create table alpha (

    line    numeric,
    col     numeric,
    fg      numeric,
    bg      numeric,
    ch      char



);

COMMIT;

select * from alpha;

insert into alpha values(10,20,31,41,'A');

commit;
-- commit후에는 rollback 안 된다. 

select * from emp;
