var inquirer = require("inquirer");
var inquirer = require("mysql");

var connection = mysql.createConnection ({
    host: "localhost",

    port:3306,
    user: "root",
    password:"jamm10a",
    database: "products"
});

connection.connect(function(err){
    if(err) throw err;
    console.log("connected as id " + connection.threadId);
    connection.end();
});

function showProducts() {
    inquirer
        .prompt({
            name: "input",
            type: "choice",
            message:"Please enter the item you have selected"
        },
        {
            name: "category",
            type: "input",
            message: "Please enter the category your item is under"
        },
        {
            name:"price",
            type:"input",
            message: "Please enter the amount of your item",
            validate: function(value) {
                if(isNaN(value) === false){
                    return true;
                }
                return false;
            }
        });
    }