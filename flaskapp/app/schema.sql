drop table if exists sites;
create table sites (
	id integer primary key autoincrement,
	title text,
	key_command text,
	key_language text,
	content_path text,
	notes text
);

insert into sites values(0, 'No matches found', 'None','None','./includes/none.html','');

insert into sites values(1, 'Java','','java','./includes/java.html','');
insert into sites values(2, 'Python','','python', './includes/python.html','');
insert into sites values(3, 'c++','','c++', './includes/c++.html','');
insert into sites values(4, 'Javascript','','javascript','./includes/javascript.html','');

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

insert into sites values(17, 'for loop in python', 'for loop', 'python', './includes/python_forloop.html','');
insert into sites values(18, 'for loop in c++', 'for loop', 'c++', './includes/c++_forloop.html','');
insert into sites values(19, 'for loop in javascript', 'for loop', 'javascript', './includes/javascript_forloop.html','');
insert into sites values(20, 'for loop in java', 'for loop', 'java', './includes/java_forloop.html','');

insert into sites values(21, 'execute in python', 'execute', 'python', './includes/python_execute.html','');
insert into sites values(22, 'execute in c++', 'execute', 'c++', './includes/c++_execute.html','');
insert into sites values(23, 'execute in javascript', 'execute', 'javascript', './includes/javascript_execute.html','');
insert into sites values(24, 'execute in java', 'execute', 'java', './includes/java_execute.html','');

insert into sites values(25, 'comments in python', 'comments', 'python', './includes/python_comments.html','');
insert into sites values(26, 'comments in c++', 'comments', 'c++', './includes/c++_comments.html','');
insert into sites values(27, 'comments in javascript', 'comments', 'javascript', './includes/javascript_comments.html','');
insert into sites values(28, 'comments in java', 'comments', 'java', './includes/java_comments.html','');
insert into sites values(29, 'data type in python', 'data type', 'python', './includes/python_datatype.html','');
insert into sites values(30, 'data type in c++', 'data type', 'c++', './includes/c++_datatype.html','');
insert into sites values(31, 'data type in javascript', 'data type', 'javascript', './includes/javascript_datatype.html','');
insert into sites values(32, 'data type in java', 'data type', 'java', './includes/java_datatype.html','');
insert into sites values(33, 'function in python', 'function', 'python', './includes/python_function.html','');
insert into sites values(34, 'function in c++', 'function', 'c++', './includes/c++_function.html','');
insert into sites values(35, 'function in javascript', 'function', 'javascript', './includes/javascript_function.html','');
insert into sites values(36, 'function in java', 'function', 'java', './includes/java_function.html','');
insert into sites values(37, 'syntax in python', 'syntax', 'python', './includes/python_syntax.html','');
insert into sites values(38, 'syntax in c++', 'syntax', 'c++', './includes/c++_syntax.html','');
insert into sites values(39, 'syntax in javascript', 'syntax', 'javascript', './includes/javascript_syntax.html','');
insert into sites values(40, 'syntax in java', 'syntax', 'java', './includes/java_syntax.html','');
insert into sites values(41, 'file input in python', 'file input', 'python', './includes/python_fileinput.html','');
insert into sites values(42, 'file input in c++', 'file input', 'c++', './includes/c++_fileinput.html','');
insert into sites values(43, 'file input in javascript', 'file input', 'javascript', './includes/javascript_fileinput.html','');
insert into sites values(44, 'file input in java', 'file input', 'java', './includes/java_fileinput.html','');
insert into sites values(45, 'file output in python', 'file output', 'python', './includes/python_fileoutput.html','');
insert into sites values(46, 'file output in c++', 'file output', 'c++', './includes/c++_fileoutput.html','');
insert into sites values(47, 'file output in javascript', 'file output', 'javascript', './includes/javascript_fileoutput.html','');
insert into sites values(48, 'file output in java', 'file output', 'java', './includes/java_fileoutput.html','');
insert into sites values(49, 'console input in python', 'console input', 'python', './includes/python_consoleinput.html','');
insert into sites values(50, 'console input in c++', 'console input', 'c++', './includes/c++_consoleinput.html','');
insert into sites values(51, 'console input in javascript', 'console input', 'javascript', './includes/javascript_consoleinput.html','');
insert into sites values(52, 'console input in java', 'console input', 'java', './includes/java_consoleinput.html','');
insert into sites values(53, 'console output in python', 'console output', 'python', './includes/python_consoleoutput.html','');
insert into sites values(54, 'console output in c++', 'console output', 'c++', './includes/c++_consoleoutput.html','');
insert into sites values(55, 'console output in javascript', 'console output', 'javascript', './includes/javascript_consoleoutput.html','');
insert into sites values(56, 'console output in java', 'console output', 'java', './includes/java_consoleoutput.html','');
