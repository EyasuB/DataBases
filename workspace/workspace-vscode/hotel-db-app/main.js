const currentDatTime = new Date();
console.log('hello  HotelDb. Datetime zone is ' + `${currentDatTime}`);
const mysql = require('mysql');
const dbconnection = mysql.createConnection({
    host: "localhost",
    user: "hotel-db-sys",
    passord: "test1234",
    database: "homedream"
    
})// the one in {} is the connection object 
dbconnection.connect((error) => {
    if (error)
        throw error;
})
//Fetch the names of all the hotels 

const qryStrGetAllHotels = "Select * from `hotel-db.homedream`"; 

dbconnection.query(qryStrGetAllHotels, (err, result) => {
    if (error)
        throw error;
    console.log('List of all hotels: ');
    console.log(result);
});
const displayHotels = function (hotels) {
    for (let hotel of hotels) {
        console.log(`{hotelNo: ${hotel.hotelNo},hotelName:${hotel.hotelName}, city: ${hotel.city}}`);
    }
}
dbconnection.end();
