var express = require('express');
var mysql = require('mysql');
var app = express();

var connection = mysql.createConnection
({
    host: 'localhost',
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: 'section16'
});

app.set("view engine","ejs");

app.get("/",function(req,res)
{
    var query = 'SELECT COUNT(*) AS total FROM users';
    connection.query(query, function (error, results) {
        if (error) throw error;
         var count = results[0].total;
         res.render("home",{count: count});
        });
    
  
});

app.get("/joke",function(req,res)
{
    res.send("What do you call a dog that does magic tricks? A labracadabrador");
});

app.get("/random_num",function(req,res)
{
    res.send("Your random number is: "+Math.floor(Math.random() * 10));
});

app.listen(8080,function()
{
    console.log('App listening on port 8080!');
});

