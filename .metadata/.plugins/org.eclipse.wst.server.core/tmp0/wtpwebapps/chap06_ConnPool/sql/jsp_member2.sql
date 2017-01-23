-- jsp_member2.sql

create table jsp_member2(
id varchar(20) primary key,
password varchar(25) not null,
name varchar(30) not null,
jumin1 char(6) not null,
jumin2 char(7) not null,
email varchar(50) --null 허용
);

insert into jsp_member2 values('hong','1234','홍길동','123456','1234567','hong@naver.com');
insert into jsp_member2 values('admin','admin','관리자','123456','1234567','admin@naver.com');

select * from JSP_MEMBER2;

commit work;