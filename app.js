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

console.log(faker.internet.email());
generateAddress();

function generateAddress()
{
    console.log(faker.address.state());
    console.log(faker.address.city());
    console.log(faker.address.streetAddress());
}
