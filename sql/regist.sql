set names utf8;
set foreign_key_checks = 0;

drop database if exists regist;
create database if not exists regist;
use regist;

drop table if exists accounts;

create table accounts(
	id int(100) not null primary key auto_increment,
	family_name varchar(100),
	last_name varchar(100),
	family_name_kana varchar(100),
	last_name_kana varchar(100),
	mail varchar(255),
	password varchar(255),
	gender int(1),
	postal_code int(7),
	prefecture varchar(100),
	address_1 varchar(100),
	address_2 varchar(255),
	authority int(1),
	delete_flag int(1),
	registered_time datetime,
	update_time datetime
);

/*テスト用*/
INSERT INTO accounts(family_name,last_name,mail,gender) VALUES("TEST","test","test@gmail.com",0)
