-- jsp_member.sql

-- 회원 테이블
create table jsp_member(
id varchar(20) primary key,
pwd varchar(25) not null,
name varchar(20) not null
);

-- 회원 추가
insert into jsp_member values('hong','1234','홍길동');
insert into jsp_member values('lee','4567','이순신');

select * from JSP_MEMBER;
select count(*) as 'cnt' from jsp_member;
commit work;