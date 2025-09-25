create database if not exists books;
use books;

CREATE TABLE AUTHOR (
author_id int auto_increment not null,
author_name varchar(250) not null,
author_email varchar(250) not null,
primary key(author_id)


);

CREATE TABLE fiction_book (
book_id int auto_increment not null,
author_id int not null,
book_title varchar(250) not null,
publication_data date not null,
primary key(book_id),
foreign key (author_id) references author(author_id)


);

insert into author (author_name, author_email) 
values ("Thabo Bless", "thabo@yahoo.com");

insert into fiction_book (book_title, author_id, publication_data)
values ("Into The Darkness",1,"2025-02-14");
