select * from member;
create table member(
	id varchar2(20) primary key,
	pw varchar2(20),
	name varchar2(20),
	reg_date varchar2(20),
	ssn varchar2(10)
);
-- CREATE
insert into member(id,pw,name,reg,ssn) 
values('lee','1','이순신','2016-07-01','800101-1');
insert into member(id,pw,name,reg,ssn) 
values('hong','1','홍길동','2015-07-01','100701-1');
insert into member(id,pw,name,reg,ssn) 
values('you','1','유관순','2014-07-01','010701-4');
insert into member(id,pw,name,reg,ssn) 
values('kimhyunsoo','1','김현수','2014-07-08','900325-1');
-- READ ()
select * from member; -- list
select * from member where id = 'hong';-- findByPK
select * from member where gender = '남';-- findByNotPK
select count(*) as count from member; -- count

-- UPDATE
update member set pw = '999'where id = 'you';

-- DELETE
delete from member where id = 'you';
