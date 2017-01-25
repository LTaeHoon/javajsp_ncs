-- fileUpload.sql


create table fileUpload(

writer		varchar(25)		primary key,	-- 작성자
fileType	varchar(50)		not null,		-- 파일 유형
fileName	varchar(100)	not null		-- 파일명

);


select * from fileupload;

commit work;