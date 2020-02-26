CREATE TABLE departments1
(
  ID SERIAL,
  department_id INTEGER NOT NULL,
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

SELECT * from departments1


INSERT into departments1
VALUES (14, 45, 'webdev'),
       (17, 45, 'webdev');
	   
	   
INSERT into departments1
VALUES (45, 45, 'webdev'),
       (46, 45, 'webdev');
	   
	   
SELECT * from departments1


CREATE TABLE employees3
(
  id SERIAL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  department_id INTEGER NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (department_id) REFERENCES departments1(id)
);

SELECT * from employees3;

INSERT into employees3
VALUES (45, 'Jan', 'Jansson', 45),
       (46, 'Sam', 'Samuels', 45);
	   
	   
SELECT * from employees3


SELECT * FROM employees3 e
  JOIN departments1 d
  ON e.department_id = d.id
  WHERE e.department_id = 45;
