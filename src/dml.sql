-- ********** Query문  ********************
-- sql문은 대기소문자를 가리지 않는다. 

--DQL(Date query  language)
-- select 

--DML(data Manipulation language)
-- insert
-- update
-- delete 

select * from dept;

-- 행추가하
insert into dept values(50,'개발부','부산');

select * from dept;

--dname의 전체를 xxx로 바꾸기(수정)
update dept set dname = 'xxx';

--deptno 50을 삭제하기
delete from dept where deptno= 50;

--원래 작업대로 취소
rollback;

