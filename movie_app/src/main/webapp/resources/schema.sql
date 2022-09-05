create table theater (
tno bigint,
tname varchar(100) not null,
region int not null,
addr varchar(100) not null,
total_seat int not null,
total_room int not null,
description text,
show_type int default 0,
primary key(tno)
) default CHARSET=utf8mb4;

create table room (
rno bigint,
tno bigint not null,
rname varchar(100) not null,
show_type tinyint(1) not null,
movie_id bigint not null,
special varchar(10) default '2D',
check((special) in ('2D', '4DX', 'IMAX')),
width int not null,
height int not null,
path_x1 int,
path_x2 int,
path_y1 int,
path_y2 int,
primary key(rno)
) default CHARSET=utf8mb4;

create table movie (
movie_id bigint not null,
movie_nm varchar(100) not null,
show_tm int not null,
open_dt date not null,
prdt_stat_nm tinyint default '0',
ticket bigint default '0',
content text,
rate  varchar(10) not null,
trail_link varchar(100) default null,
check((rate) in ('ALL', '12', '15', '18')),
primary key(movie_id)
) default CHARSET=utf8mb4;

create table member(
mno bigint not null auto_increment,
name varchar(100) not null,
id varchar(100) not null,
pwd varchar(100) not null,
nick_name varchar(100) not null,
tel varchar(100) not null,
point int default '0',
auth tinyint default '0',
birth date not null,
profile_link varchar(100),
primary key(mno)
) default CHARSET=utf8mb4;

create table schedule (
scno bigint not null auto_increment,
rno bigint not null,
tno bigint not null,
start_time datetime not null,
end_time datetime not null,
movie_id bigint not null,
time_discount tinyint(1) default '0',
primary key(scno)
) default CHARSET=utf8mb4;

create table book (
bno varchar(100) primary key,
scno bigint not null,
mno bigint not null,
movie_id bigint not null,
pay bigint not null,
adult int default 0,
teenager int default 0,
elder int default 0,
reg_at datetime default current_timestamp
) default CHARSET=utf8mb4;

create table b_seat (
bsno bigint auto_increment primary key,
sid varchar(100) not null,
bno varchar(100) not null
) default CHARSET=utf8mb4;

create table seat(
sid varchar(100) not null,
scno bigint not null,
status tinyint(1) default '0',
valid tinyint(1) default '0' not null,
price int not null,
primary key(sid, scno)
) default CHARSET=utf8mb4;

create table comment (
cno bigint not null auto_increment,
movie_id bigint not null,
content varchar(1000) not null,
rate int default 5,
writer varchar(100) not null,
reg_at datetime default current_timestamp,
mod_at datetime default current_timestamp,
primary key(cno)
) default CHARSET=utf8mb4;

create table chat (
chno bigint not null auto_increment,
movie_id bigint not null,
content varchar(1000) not null,
writer varchar(100) not null,
play_sec int not null,
primary key(chno)
) default CHARSET=utf8mb4;

create table favor_th (
fno bigint not null auto_increment,
mno bigint not null,
tno bigint,
primary key(fno)
) default CHARSET=utf8mb4;

