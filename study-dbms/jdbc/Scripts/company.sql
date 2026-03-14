use jdbc;

drop table tbl_company;
create table tbl_company(
	id bigint unsigned auto_increment primary key,
	company_name varchar(255) not null, 
	company_address varchar(255) not null,
	company_phone varchar(255) unique not null,
	company_type enum('스타트업', '중소기업', '중견기업', '대기업'),
	company_status enum('disable', 'enable') default 'enable',
	created_datetime datetime default current_timestamp(),
	updated_datetime datetime default current_timestamp()
);

select * from tbl_company;