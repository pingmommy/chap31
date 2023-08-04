
drop table alpha;

drop table fcolor;


-- references 키설정이 되어 있어서 아무 값이나 넣을 수 없다.(외래키 제약 조건)(?) 
-- 외래키 제약조건이 걸린 fg, bg는 유효값이나 null값만 넣어야 한다.(null은 미정이란 의미)
-- 유효값은 참조된 fcolor, bcolor에 있는 값이다. 
-- 유효값으로 지정된 매개변수는 반드시 primary key 설정을 해주어야 한다. 

create table alpha(

    line number(2),
    col  number(2),
    fg   number(2) references fcolor,
    bg   number(2) references bcolor,
    ch   char(1)
    );


--무결성제약조건에 위배되었다고 오류메세지가 뜬다. 부모키가 없다고 한다.   
--insert into alpha values(10,10,30,40,'a');

-- null값은 입력된다. : 아직 미정이란 뜻으로 전달된다. 
insert into alpha values(10,10,null,null,'a');




    
select * from alpha;

create table fcolor(
    fg    number(20) primary key,
    name  varchar(10)

);
insert into fcolor values(30,'black');
insert into fcolor values(31,'red');
insert into fcolor values(32,'green');

select * from fcolor;

create table bcolor(
    fg    number(20) primary key,
    name  varchar(10)

);

insert into bcolor values(40,'black');
insert into bcolor values(41,'red');
insert into bcolor values(42,'green');

select * from bcolor;


-- 이제 아래의 코드를 실행할 수 있다. 
-- fcolor, bcolor에 primary key로 값을 넣어주었고, 올바른 값을 입력했기 때문에 수행가능. 
insert into alpha values(10,10,30,40,'a');

select * from alpha;

commit;

select table_name from user_tables;

select * from DEPT;



