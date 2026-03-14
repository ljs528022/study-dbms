create database jdbc;
use jdbc;

drop table tbl_member;
create table tbl_member(
	id bigint unsigned auto_increment primary key,
	member_email varchar(255) unique not null,
	member_password varchar(255) not null,
	member_name varchar(255) not null,
	member_age int default 0,
	member_gender enum('남', '여', '선택안함') default '선택안함',
	member_status enum('disable', 'enable') default 'enable',
	created_datetime datetime default current_timestamp(),
	updated_datetime datetime default current_timestamp()
);