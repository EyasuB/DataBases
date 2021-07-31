/**
 * main.js
 * 
 * @author Eyasu
 * @since 2021-07-29
 */
//console.log("hello");
const mysql = require('mysql');
const dbconnection = mysql.createConnection({
    host: "localhost",
    user: "dreamhomeUser",
    password: "Test@123",
    database: "homedream"
    
});
dbconnection.connect((error) => {
    if (error)
        throw error;
});









const displayBranches = function (branches) {
    for (let branch of branches) {
        console.log(`{${branch.branchNo},${branch.street}, ${branch.city},${branch.postcode}}`)
    }
}
const displayStaff = function (staffs) {
    for (let staff of staffs) {
        console.log(`{${staff.staffNo},${staff.fname}, ${staff.lname},${staff.position},${staff.sex},${staff.DOB},${staff.salary},${staff.branchNo}}`);
    }
}
const qrystrbranchbybranchNo = "select * from branch group by branchNo";
dbconnection.query(qrystrbranchbybranchNo, (error, result) => {
    if (error)
        throw error;
    console.log(`List of All Branches: `);

    displayBranches(result);
});

const qrystrStaffinLondon = "select s.* from staff s join branch b on s.branchNo= b.branchNo where city ='London'";
dbconnection.query(qrystrStaffinLondon, (error, result) => {
    if (error)
        throw error;
    console.log(`List of All Branches in London: `);

    displayStaff(result);
});


const qryStaffinLondonorBristol = "select * from branch s where city = 'London' or city = 'Bristol'"
dbconnection.query(qryStaffinLondonorBristol, (error, result) => {
    if (error)
        throw error;
    console.log(`List of All Branches in London or Bristol`);

    branchofficesLondonorBristol(result);
});
const branchofficesLondonorBristol = function (branches) {
    for (let branch of branches) {
        console.log(`{${branch.branchNo},${branch.street}, ${branch.city},${branch.postcode}}`)
    }
}

dbconnection.end();