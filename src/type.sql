desc dept;

-- 타입오류(deptno : number(2) =>'xxx'문자라서 오류 
--insert into dept values('xxx','yyy','zzz');

-- 유효값오류 (deptno : number(2) =>500은 3자리라서 오류 
--insert into dept values(500,'xxx','yyy');

-- 유효값오류 (LOC : vachar2(13) => '1234567890123456'은 16자리라서 오류 
--insert into dept values(500,'xxx','1234567890123456');