


CREATE DATABASE IF NOT EXISTS eos DEFAULT CHARSET utf8 COLLATE utf8_general_ci;


use eos;

DROP TABLE IF EXISTS t_pressure_record;

create table t_pressure_record(

id bigint not null primary key auto_increment,

time varchar(19)  not null,

name text not null,

url varchar(120) not null,

method varchar(10) not null,

concurrent integer default 0,

fail_num integer default 0,

fail_rate numeric(19,2) NOT NULL,

success_num integer default 0,

success_rate numeric(19,2) NOT NULL,

total_request  integer default 0,

total_time integer default 0,

avg_time numeric(19,2) NOT NULL,

pv integer default 0,

daytime varchar(10), 

company varchar(32),

note varchar(60),

qps integer default 0

) default charset=utf8;








DROP TABLE IF EXISTS t_ratio_pressure_record;

create table t_ratio_pressure_record(

id bigint not null primary key auto_increment,

time varchar(19)  not null,

name_ratio text not null, 

concurrent integer default 0,

fail_num integer default 0,

fail_rate numeric(19,2) NOT NULL,

success_num integer default 0,

success_rate numeric(19,2) NOT NULL,

total_request  integer default 0,

total_time integer default 0,

avg_time numeric(19,2) NOT NULL,

pv integer default 0,

daytime varchar(10), 

company varchar(32),

note varchar(60),

qps integer default 0

) default charset=utf8;




