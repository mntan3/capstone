drop table if exists sites;
create table sites (
	id integer primary key autoincrement,
	title text,
	key_command text,
	key_language text,
	content_path text,
	notes text
);


insert into sites values(1, 'Java','','java','General informtion about Java','');
insert into sites values(2, 'Python','','python', 'General information about Python','');
insert into sites values(3, 'c++','','c++', 'General information about c++','');
insert into sites values(4, 'Javascript','','javascript','General information about Javascript','');

insert into sites values(5, 'Hello World in Java', 'hello world', 'java', './includes/java_helloworld.html','Program must be named HelloWorld.java');
insert into sites values(6, 'Hello World in Python', 'hello world', 'python', './includes/python_helloworld.html','');
insert into sites values(7, 'Hello World in c++', 'hello world', 'c++', './includes/c++_helloworld.html','');
insert into sites values(8, 'Hello World in Javascript', 'hello world', 'javascript', './includes/javascript_helloworld.html','');

insert into sites values(9, 'Java installation', 'installation', 'java', './includes/java_installation.html','');
insert into sites values(10, 'Python installation', 'installation', 'python', './includes/python_installation.html','');
insert into sites values(11, 'c++ installation', 'installation', 'c++', './includes/c++_installation.html','');
insert into sites values(12, 'Javascript installation', 'installation', 'javascript', './includes/javascript_installation.html','');

insert into sites values(13, 'While Loop in Java', 'while loop', 'java', './includes/java_whileloop.html','');
insert into sites values(14, 'While Loop in Python', 'while loop', 'python', './includes/python_whileloop.html','');
insert into sites values(15, 'While Loop in c++', 'while loop', 'c++', './includes/c++_whileloop.html','');
insert into sites values(16, 'While Loop in Javascript ', 'while loop', 'javascript', './includes/javascript_whileloop.html','');
