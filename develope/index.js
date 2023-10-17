const mysql = require('mysql2');
const consoleTable = require('console.table');

const connection = mysql.createConnection({
  host: 'your_db_host',
  user: 'root',
  password: 'atari1991',
  database: 'store_db',
});


function viewDepartments() {
  connection.query('SELECT * FROM department', (err, results) => {
    if (err) throw err;
    console.table(results);
  });
}


function viewRoles() {
  connection.query('SELECT * FROM role', (err, results) => {
    if (err) throw err;
    console.table(results);
  });
}


function viewEmployees() {
  connection.query('SELECT * FROM employee', (err, results) => {
    if (err) throw err;
    console.table(results);
  });
}


connection.connect((err) => {
  if (err) throw err;

  
  viewDepartments();
  viewRoles();
  viewEmployees();
});

