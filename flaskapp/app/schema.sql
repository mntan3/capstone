drop table if exists sites;
create table sites (
	id integer primary key autoincrement,
	title text,
	key_command text,
	key_language text,
	content text
);


insert into sites values(1, 'Java','','Java','General informtion about Java');
insert into sites values(2, 'Python','','Python', 'General information about Python');
insert into sites values(3, 'c++','','c++', 'General information about c++');
insert into sites values(4, 'Javascript','','Javascript','General information about Javascript');

insert into sites values(5, 'Hello World in Java', 'Hello World', 'Java', '');
insert into sites values(6, 'Hello World in Python', 'Hello World', 'python', '');
insert into sites values(7, 'Hello World in c++', 'Hello World', 'c++', '');
insert into sites values(8, 'Hello World in Javascript', 'Hello World', 'javascript', '');

insert into sites values(9, 'Java installation', 'Installation', 'Java', '');
insert into sites values(10, 'Python installation', 'Installation', 'Python', '');
insert into sites values(11, 'c++ installation', 'Installation', 'c++', '');
insert into sites values(12, 'Javascript installation', 'Installation', 'javascript', '');

insert into sites values(13, 'While Loop in Java', 'While loop', 'Java', '');
insert into sites values(14, 'While Loop in Python', 'While loop', 'Python', '');
insert into sites values(15, 'While Loop in c++', 'While loop', 'c++', '');
insert into sites values(16, 'While Loop in Javascript ', 'While loop', 'javascript', '');
