-- jsp_board.sql

-- 시퀀스 제거 및 객체 생성
drop sequence board_seq;
create sequence board_seq increment by 1 start with 1;

-- 레코드 제거
delete from jsp_board;

-- 레코드 추가 
insert into JSP_BOARD 
values(board_seq.nextval,'홍길동','제목1','내용1','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'이순신','제목2','내용2','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목3','내용3','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목4','내용4','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목5','내용5','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목6','내용6','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목7','내용7','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목8','내용8','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목9','내용9','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목10','내용10','1234',default,sysdate);

insert into JSP_BOARD 
values(board_seq.nextval,'홍길동','제목1','내용1','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'이순신','제목2','내용2','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목3','내용3','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목4','내용4','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목5','내용5','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목6','내용6','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목7','내용7','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목8','내용8','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목9','내용9','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목10','내용10','1234',default,sysdate);

insert into JSP_BOARD 
values(board_seq.nextval,'홍길동','제목1','내용1','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'이순신','제목2','내용2','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목3','내용3','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목4','내용4','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목5','내용5','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목6','내용6','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목7','내용7','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목8','내용8','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목9','내용9','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목10','내용10','1234',default,sysdate);

insert into JSP_BOARD 
values(board_seq.nextval,'홍길동','제목1','내용1','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'이순신','제목2','내용2','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목3','내용3','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목4','내용4','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목5','내용5','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목6','내용6','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목7','내용7','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목8','내용8','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목9','내용9','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목10','내용10','1234',default,sysdate);

insert into JSP_BOARD 
values(board_seq.nextval,'홍길동','제목1','내용1','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'이순신','제목2','내용2','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목3','내용3','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목4','내용4','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목5','내용5','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목6','내용6','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목7','내용7','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목8','내용8','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목9','내용9','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목10','내용10','1234',default,sysdate);

insert into JSP_BOARD 
values(board_seq.nextval,'홍길동','제목1','내용1','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'이순신','제목2','내용2','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목3','내용3','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목4','내용4','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목5','내용5','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목6','내용6','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목7','내용7','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목8','내용8','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목9','내용9','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목10','내용10','1234',default,sysdate);

insert into JSP_BOARD 
values(board_seq.nextval,'홍길동','제목1','내용1','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'이순신','제목2','내용2','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목3','내용3','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목4','내용4','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목5','내용5','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목6','내용6','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목7','내용7','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목8','내용8','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목9','내용9','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목10','내용10','1234',default,sysdate);

insert into JSP_BOARD 
values(board_seq.nextval,'홍길동','제목1','내용1','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'이순신','제목2','내용2','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목3','내용3','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목4','내용4','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목5','내용5','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목6','내용6','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목7','내용7','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목8','내용8','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목9','내용9','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목10','내용10','1234',default,sysdate);

insert into JSP_BOARD 
values(board_seq.nextval,'홍길동','제목1','내용1','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'이순신','제목2','내용2','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목3','내용3','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목4','내용4','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목5','내용5','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목6','내용6','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목7','내용7','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목8','내용8','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목9','내용9','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목10','내용10','1234',default,sysdate);

insert into JSP_BOARD 
values(board_seq.nextval,'홍길동','제목1','내용1','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'이순신','제목2','내용2','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목3','내용3','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목4','내용4','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목5','내용5','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목6','내용6','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목7','내용7','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목8','내용8','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목9','내용9','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목10','내용10','1234',default,sysdate);

insert into JSP_BOARD 
values(board_seq.nextval,'홍길동','제목1','내용1','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'이순신','제목2','내용2','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목3','내용3','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목4','내용4','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목5','내용5','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목6','내용6','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목7','내용7','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목8','내용8','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목9','내용9','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목10','내용10','1234',default,sysdate);

insert into JSP_BOARD 
values(board_seq.nextval,'홍길동','제목1','내용1','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'이순신','제목2','내용2','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목3','내용3','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목4','내용4','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목5','내용5','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목6','내용6','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목7','내용7','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목8','내용8','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목9','내용9','1234',default,sysdate);
insert into JSP_BOARD 
values(board_seq.nextval,'테스트','제목10','내용10','1234',default,sysdate);
commit work; -- 120개 레코드 추가 

-- 전체 레코드 조회(120개) : 게시물번호 내림차순 정렬  
select * from jsp_board order by board_no desc;

-- rownum(의사컬럼)이용 전체 레코드 조회(rownum : 검색된 레코드의 순서 저장 칼럼)   
select jsp_board.*, rownum from jsp_board order by board_no desc;
select jsp_board.*, rownum from (select * from jsp_board order by board_no desc) jsp_board;
-- 의사칼럼 이용 특정 레코드 조회 : 1차(내림차순 정렬 전체 레코드 조회) -> 2차(의사칼럼 이용 5~10번째 레코드 조회) 
-- 형식) select * from( 의사칼럼    ) where 조건식(의사칼럼);
select * from (select jsp_board.*, rownum as rnum 
			  from (select * from jsp_board order by board_no desc) jsp_board) 
			  where rnum >=1 and rnum <= 10; 


select jsp_board.*, rownum as rnum 
  from (select * from jsp_board order by board_no desc) jsp_board;







