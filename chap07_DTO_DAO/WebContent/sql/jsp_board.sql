-- jsp_board.sql
drop table jsp_board purge;

create table jsp_board(
board_no number primary key, -- 게시물 번호
board_name varchar(25) not null,
board_title varchar(50) not null,
board_cont varchar(2000),
board_pwd varchar(25) not null,
board_hit number default 0,
board_regdate date
);

-- 시퀀스 객체 생성
drop sequence board_seq;
create sequence board_seq increment by 1 start with 1;

-- 레코드 추가
delete from jsp_board;
insert into JSP_BOARD 
values(board_seq.nextval,'홍길동','제목1','내용1','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'이순신','제목2','내용2','1234',default,sysdate);

select * from jsp_board;
commit work;








