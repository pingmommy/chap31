
drop table alpha;

-- 데이터를 지우는 명령어. 용기를 비운다고 생각하면 쉽다. 
TRUNCATE table alpha;

-- 소수부까지 합쳐서 5자리. number(5,2) => 전체 다섯자리에 소수부는 두 자리 
create table Alpha(
    line numeric not null,
    col number(20)
    );
    
insert into alpha values(10,20);
insert into alpha values(10,null);

-- line이 not null 설정이 되어 있어 오류.
--insert into alpha values(null,null);



select * from alpha;
insert into alpha values(123);

--null을 넣으면 오류남 (=>not null 키워드를 설정했기 때문에) 
--insert into alpha values(null);
-- 수치,문자타입 모두 null이 입력될 수 있다. 이를 방지하기 위해서 not null키워드가 있어야 한다. 
-- primery key? 무한대의 row를 식별할 수 있는 key(중복을 허락하지 않는다. ex: 주민번호)


create table Alpha(
    line numeric PRIMARY key,
    col number(20)
    );
    
insert into alpha values(20,30);
select * from alpha;

--line이 primary key로 설정되어 있는데 20이 중복되므로 오류 (not null은 중복을 허용함. null값만 아니면 됨.)
--insert into alpha values(20,30);


