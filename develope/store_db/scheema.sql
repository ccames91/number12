
CREATE TABLE sporting (
  id INT PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE Role (
  id INT PRIMARY KEY,
  title VARCHAR(255),
  salary DECIMAL(10, 2),
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES Department(id)
);

CREATE TABLE Employee (
  id INT PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  role_id INT,
  manager_id INT
);