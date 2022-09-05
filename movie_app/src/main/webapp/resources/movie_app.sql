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

insert into movie(movie_id, movie_nm, show_tm, open_dt, prdt_stat_nm, rate, trail_link) values
(20209343, "한산: 용의 출현", 129, "2022-07-27", 1, "12", "GduEtmvwcI0"),
(20205362, "미니언즈2", 87, "2022-07-20", 1, "ALL", "qoXf5Zr3BhA"),
(20194376, "탑건: 매버릭", 130, "2022-06-22", 1, "12", "Mrj9XACVJ8U"),
(20208446, "외계+인 1부", 142, "2022-07-20", 1, "12", "rfbwr5oPO7c"),
(20209654, "헤어질 결심", 138, "2022-06-29", 1, "15", "A33AdB4u8GQ"),
(20225237, "명탐정 코난: 할로윈의 신부", 110, "2022-07-13", 1, "12", "sfndyw8V4Q8"),
(20211792, "헌트", 125, "2022-08-10", 0, "15", "CSOb8gia_mg"),
(20196410, "비상선언", 140, "2022-08-03", 1, "12", "SW4uz0U27Cg"),
(20224662, "토르: 러브 앤 썬더", 118, "2022-07-06", 1, "12", "Dlfp3K11C_o"),
(20225448, "불릿 트레인", 126, "2022-08-24", 1, "18", "vR5cn7O46TU");

insert into theater (tno, tname, region, addr, total_seat, total_room, show_type) values
(1, '연남', 0, '서울시 마포구 양화로 186 (동교동)',  734, 6, 1),
(2, '왕십리', 0, '서울특별시 성동구 행당동 168-1 왕십리 민자역사 5층', 680, 5, 1),
(3, '압구정', 0, '서울특별시 강남구 압구정로30길 45 (신사동)', 839, 7, 0),
(4, '명동', 0, '서울특별시 중구 명동길 14 (명동)', 673, 5, 1),
(10, '광교', 1, '경기도 수원시 영통구 광교호수공원로 320(하동) 갤러리아백화점 광교점 10층',  1478, 6, 1),
(11, '시흥', 1, '경기도 시흥시 복지로 90 (대야동)',  632, 5, 0),
(12, '일산', 1, '경기도 고양시 일산동구 정발산로 24 (장항동)',  728, 7, 0),
(20, '인천도화', 2, '인천광역시 미추홀구 숙골로88번길 12(도화동) 지하1층',  536, 6, 0),
(21, '계양', 2, '인천광역시 계양구 장제로 738, 8층(작전동)',  536, 6, 1),
(30, '대구수성', 3, '대구광역시 수성구 지범로 191, 8층(범물동)', 678, 7, 1),
(40, '센텀시티', 4, '부산광역시 해운대구 센텀남대로 35, 7층(우동)', 892, 8, 1);

insert into room (rno, tno, rname, show_type, movie_id, special, width, height, path_x1, path_x2, path_y1, path_y2) values
(1, 1, '1관', 1, 20196410, '4DX', 21, 12, 4, 15, null, null),
(2, 1, '2관', 0, 20209343, '2D', 17, 10, 3, null, 4, null),
(3, 1, '3관', 0, 20225448, '2D', 8, 10, null, null, null, null),
(4, 1, '4관', 0, 20194376, '2D', 14, 11, 2, null, null, null),
(5, 1, '5관', 0, 20208446, '2D', 12, 9, 6, null, null, null),
(6, 1, '6관', 0, 20209654, '2D', 13, 8, 6, null, null, null),
(7, 2, '1관', 0, 20211792, '4DX', 15, 11, 5, null, null, null),
(8, 2, '2관', 0, 20209654, '2D', 20, 15, 5, 16, null, null),
(9, 2, '3관', 0, 20209343, '2D', 22, 12, 5, 18, null, null),
(10, 2, '4관', 0, 20225448, '2D', 18, 12, 5, 14, null, null),
(11, 2, '5관', 0, 20208446, '2D', 13, 10, 8, null, null, null),
(12, 3, '1관', 0, 20209654, '2D', 20, 13, 5, 16, null, null),
(13, 3, '2관', 0, 20209343, '2D', 18, 13, 8, 6, 5, null),
(14, 3, '3관', 0, 20211792, '2D', 13, 13, 8, null, null, null),
(15, 3, '4관', 0, 20209654, '2D', 22, 12, 5, 18, 6, null),
(16, 3, '5관', 0, 20225448, '2D', 17, 10, 3, null, 4, null),
(17, 3, '6관', 0, 20209654, '2D', 12, 9, 6, null, null, null),
(18, 3, '7관', 0, 20208446, '2D', 13, 10, 7, null, null, null),
(19, 2, '1관', 0, 20211792, '4DX', 15, 11, 5, null, null, null),
(20, 2, '2관', 0, 20209343, '2D', 20, 15, 5, 16, null, null),
(21, 2, '3관', 0, 20208446, '2D', 22, 12, 5, 18, null, null),
(22, 2, '4관', 0, 20225448, '2D', 18, 12, 5, 14, null, null),
(23, 2, '5관', 0, 20209654, '2D', 13, 10, 8, null, null, null),
(24, 10, '1관', 0, 20209343, '2D', 14, 7, null, null, null, null),
(25, 10, '2관', 0, 20211792, '2D', 8, 10, null, null, null, null),
(26, 10, '3관', 0, 20194376, '2D', 17, 10, 3, null, 4, null),
(27, 10, '4관', 0, 20225448, '2D', 17, 10, 3, null, 4, null),
(28, 10, '5관', 1, 20196410, '4DX', 21, 14, 4, 15, null, null),
(29, 10, '6관', 2, 20224662, 'IMAX', 16, 14, 14, null, null, null),
(30, 10, '1관', 0, 20209343, '2D', 14, 7, null, null, null, null),
(31, 10, '2관', 0, 20224662, '2D', 8, 10, null, null, null, null),
(32, 10, '3관', 0, 20225448, '2D', 17, 10, 3, null, 4, null),
(33, 10, '4관', 0, 20208446, '2D', 17, 10, 3, null, 4, null),
(34, 10, '5관', 1, 20196410, '2D', 21, 14, 4, 15, null, null),
(35, 10, '1관', 0, 20209343, '2D', 14, 7, null, null, null, null),
(36, 10, '2관', 0, 20224662, '2D', 8, 10, null, null, null, null),
(37, 10, '3관', 0, 20194376, '2D', 17, 10, 3, null, 4, null),
(38, 10, '4관', 0, 20208446, '2D', 17, 10, 3, null, 4, null),
(39, 10, '5관', 1, 20196410, '2D', 21, 14, 4, 15, null, null),
(40, 10, '6관', 2, 20211792, '2D', 16, 14, 14, null, null, null),
(41, 10, '7관', 2, 20224662, '2D', 16, 14, 14, null, null, null),
(42, 20, '1관', 0, 20196410, '2D', 13, 8, 6, null, null, null),
(43, 20, '2관', 0, 20224662, '2D', 8, 10, null, null, null, null),
(44, 20, '3관', 0, 20208446, '2D', 20, 15, 4, 14, null, null),
(45, 20, '4관', 0, 20211792, '2D', 14, 8, null, null, null, null),
(46, 20, '5관', 0, 20194376, '2D', 18, 7, 4, 12, null, null),
(47, 20, '6관', 0, 20209654, '2D', 12, 9, 6, null, null, null),
(48, 20, '1관', 0, 20196410, '4DX', 13, 8, 6, null, null, null),
(49, 20, '2관', 0, 20224662, '2D', 8, 10, null, null, null, null),
(50, 20, '3관', 0, 20208446, '2D', 20, 15, 4, 14, null, null),
(51, 20, '4관', 0, 20205362, '2D', 14, 8, null, null, null, null),
(52, 20, '5관', 0, 20194376, '2D', 18, 7, 4, 12, null, null),
(53, 20, '6관', 0, 20211792, '2D', 12, 9, 6, null, null, null),
(54, 30, '1관', 0, 20211792, '2D', 20, 13, 5, 16, null, null),
(55, 30, '2관', 0, 20209343, '2D', 18, 13, 8, 6, 5, null),
(56, 30, '3관', 0, 20209654, '2D', 13, 13, 8, null, null, null),
(57, 30, '4관', 0, 20194376, '2D', 22, 12, 5, 18, 6, null),
(58, 30, '5관', 0, 20225448, '2D', 17, 10, 3, null, 4, null),
(59, 30, '6관', 0, 20196410, '2D', 12, 9, 6, null, null, null),
(60, 30, '7관', 0, 20224662, '4DX', 13, 10, 7, null, null, null),
(61, 30, '1관', 0, 20205362, '2D', 20, 13, 5, 16, null, null),
(62, 30, '2관', 0, 20211792, '2D', 18, 13, 8, 6, 5, null),
(63, 30, '3관', 0, 20209343, '2D', 13, 13, 8, null, null, null),
(64, 30, '4관', 0, 20194376, '2D', 22, 12, 5, 18, 6, null),
(65, 30, '5관', 0, 20208446, '2D', 17, 10, 3, null, 4, null),
(66, 30, '6관', 0, 20225448, '2D', 12, 9, 6, null, null, null),
(67, 30, '7관', 0, 20224662, 'IMAX', 13, 10, 7, null, null, null),
(68, 30, '8관', 0, 20209654, '4DX', 13, 10, 7, null, null, null);
