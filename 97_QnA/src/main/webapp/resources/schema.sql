create table questions (
qno bigint not null auto_increment,
category varchar(100) not null,
title varchar(1000) not null,
writer varchar(100) not null,
question text not null,
reg_at datetime default current_timestamp,
mod_at datetime default current_timestamp,
read_count int default '0',
ans_qty int default '0',
primary key (qno)
) default CHARSET=utf8mb4;

create table answers (
ano bigint not null auto_increment,
qno bigint not null,
writer varchar(100) not null,
content text not null,
reg_at datetime default current_timestamp,
mod_at datetime default current_timestamp,
primary key (ano)
) default CHARSET=utf8mb4;

create table replies (
rno bigint not null auto_increment,
qno bigint not null,
ano bigint not null,
writer varchar(100) not null,
reply varchar(2000) not null,
reg_at datetime default current_timestamp,
mod_at datetime default current_timestamp,
primary key (rno)
) default CHARSET=utf8mb4;

create table qnamember (
email varchar(100) not null,
pwd varchar(1000) not null,
nick_name varchar(100) not null,
reg_at datetime default current_timestamp,
last_login datetime default null,
answer_count int default '0',
accepted_answer int default '0'
profile_img varchar(1000) null
primary key(email)
) default CHARSET=utf8mb4;

create table qna_file(
uuid varchar(256) primary key,
save_dir varchar(1000) not null,
file_name varchar(1000) not null,
file_type tinyint(1) default 0,
qno bigint not null,
file_size bigint not null,
reg_at datetime default current_timestamp
) default CHARSET=utf8mb4;

ALTER TABLE questions ADD file_count INT DEFAULT 0 NULL;