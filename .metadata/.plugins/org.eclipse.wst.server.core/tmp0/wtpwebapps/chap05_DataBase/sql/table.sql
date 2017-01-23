-- table.sql

create table member1(
id varchar(25) primary key,
passwd varchar(25) not null,
name varchar(30) not null,
reg_date date
);

insert into member1 values('hong','1234','홍길동',sysdate);
insert into member1 values('yoo','3456','윤아',sysdate);

select * from member1;

commit work;
