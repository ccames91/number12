CREATE TABLE department (
  id INT AUTO INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);
show tables;
insert into department (name) values ('chandler');
select id from department where name = 'chandler';
SELECT id, name FROM department WHERE name = 'chandler';

update department set name = 'sporting' where id = 1;
select from department