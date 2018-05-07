/*for(var i = 0; i < 500; i++)
{
    console.log("Hello world");
}

for(var i = 0; i < 500; i++)
{
    // insert user into the database 
}
*/

var faker = require('faker');
var mysql = require('mysql');

var connection = mysql.createConnection
({
    host: 'localhost',
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: 'section16'
});

var query1 = 'SELECT 1+1 AS solution';
var query2 = 'SELECT CURDATE()';
var query3 = 'SELECT 1+5';
var query4 = 'SELECT 1+5 AS answer';
var query5 = 'SELECT CURTIME() as time, CURDATE() as date, NOW() as now';
var query6 = 'SELECT * FROM users';
var query7 = 'SELECT COUNT(*) AS total FROM users';

//timeQuery();
for(var i = 0; i< 1000; i++){
insertRandomUser();
}
usersQuery();

connection.end();

function insertRandomUser()
{
var person = {email: faker.internet.email()};
connection.query('INSERT INTO users SET ?',person, function (error, results) {
    if (error) throw error;
    //console.log(results);
    });
}

function usersQuery()
{
    connection.query(query7, function (error, results, fields) {
    if (error) throw error;
    console.log(results[0].total);
    });
}

function timeQuery()
{
    connection.query(query5, function (error, results, fields) {
    if (error) throw error;
    console.log(results[0].time);
    console.log(results[0].date);
    console.log(results[0].now);
    });
}

function generateAddress()
{
    console.log(faker.address.state());
    console.log(faker.address.city());
    console.log(faker.address.streetAddress());
}


