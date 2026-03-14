use jdbc;

create table tbl_member_file(
   id bigint unsigned primary key,
   file_path varchar(255) not null,
   constraint fk_member_file_member foreign key(id)
   references tbl_member(id)
);

select * from tbl_member_file;