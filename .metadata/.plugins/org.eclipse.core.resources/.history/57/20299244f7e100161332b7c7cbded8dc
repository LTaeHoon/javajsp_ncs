--join.sql

/*
 * <<join 실습 순서>> 
 * 1. 기본키가 있는 테이블 생성 - department
 * 2. 기본키가 있는 테이블에 레코드 추가
 * 3. 외래키가 있는 테이블 생성 - student
 * 4. 외래키가 있는 테이블에 레코드 추가
 */ 

-- 기존 테이블 삭제
drop table student purge;
drop table department purge;

-- 1. 기본키 테이블 생성
create table department(
dept_code char(4) primary key
,dept_name varchar(30) not null
);

-- 2. 기본키 테이블 레코드 삽입
insert into department values('d001','국어국문');
insert into department values('d002','컴퓨터공학');
insert into department values('d003','자연과학');
select * from DEPARTMENT;

-- 3. 외래키 테이블 생성
create table student(
num number primary key
,name varchar(30) not null
,gender char(3) not null
,dept_code char(4) not null
,foreign key(dept_code) references 
department(dept_code) /* 외래키 지정 */
);

-- 4. 외래키 테이블 레코드 삽입
insert into student values(2015001,'홍길동','남','d001');
insert into student values(2015002,'김유신','남','d003');
insert into student values(2015003,'유관순','여','d002');
select * from student;
-- 무결성 제약조건 위배
insert into student values(2015003,'강호동','남','d004');

-- 5. join query문
select d.dept_code, s.num, s.name, s.gender, d.dept_name
from department d, student s
where d.dept_code = s.dept_code 
and s.name like '%유%';

commit work;

















