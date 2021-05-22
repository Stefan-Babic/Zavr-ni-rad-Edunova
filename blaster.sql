drop database if exists blaster;
create database blaster;
use blaster;
create table user(
id int not null primary key auto_increment,
first_name varchar(255) not null,
last_name varchar(255) not null,
username varchar(255) not null,
password char(50),
email varchar(255) not null
);
create table post(
id int not null primary key auto_increment,
text varchar(255),
audio_file char(50),
genre int, 
user int
);
create table genre(
id int not null primary key auto_increment,
name varchar(255)
);
create table comment(
id int not null primary key auto_increment,
user int,
post int,
content text
);
create table favorite(
id int not null primary key auto_increment,
user int,
post int);

alter table post add foreign key (user) references user(id);
alter table post add foreign key (genre) references genre(id);
alter table comment add foreign key (user) references user(id);
alter table comment add foreign key (post) references post(id);
alter table favorite add foreign key (user) references user(id);
alter table favorite add foreign key (post) references post(id);