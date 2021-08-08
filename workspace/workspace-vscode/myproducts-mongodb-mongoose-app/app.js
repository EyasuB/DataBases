/**
 * @mongoose Application Developed nodejs and mongoose on mongodb
 * @Author Eyasu Gebrehiwot 
 * 
 */

const mongoose = require("mongoose");
const dbUrl= "mongodb://localhost:27017/MyProducts-db";
mongoose.connect(dbUrl,{
    useNewUrlParser:true,useUnifiedTopology:true
    
});
const Schema = mongoose.Schema;
const productSchema= new Schema({
"product_id":{type:Number,required:true},
"name":{type:String, required:true},
"unit-price":{type:Number,required:false},
"quantity":{type:Number, required:false}

})
// create collection from the schema 
let Product= mongoose.model("Product",productSchema);
// Implement searching function for the product 
/*
mongoose.model("Product").find({},(err, products)=>{
    //console.log(products);
    products.forEach(book=>console.log(book));
})
*/
/*
//Insert an object 
let objTobeInserted= new Product({
    'product_id':109,
    'name':"Pears",
    'unit-price':0.7,
    'quantity': 1.00
});
objTobeInserted.save((err,products)=>{
    if(err) return handleError(err);
    console.log(products);
});
*/
// To insert many products to the database

let productAdditions =[{
    'product_id':106,
    'name':"Lemon",
    'unit-price':0.7,
    'quantity': 50
},{
    'product_id':110,
    'name':"Peaches",
    'unit-price':0.75,
    'quantity': 100
},{
    'product_id':111,
    'name':"Healing Fruit",
    'unit-price':0.9,
    'quantity': 120
},{
    'product_id':112,
    'name':"Grapes",
    'unit-price':0.78,
    'quantity': 1000
}]
Product.insertMany(productAdditions,(err, products) => {
    if(err) return handleError(err);
    console.log(products);
})
/*
//updating an object in the database 
mongoose.model("Product").updateOne({product_id:106},{name:'Lemon'},(err,products)=>{
if(err){
    console.error(err);
}else{
    console.log(products);
}
});
*/
/*
// deleting decument for the database 
mongoose.model("Product").insertOne({product_id:106},(err,products)=>{
    if(err) return handleError(err);
    console.log(products);
})
mongoose.model("Product").deleteOne({product_id:106},(err,products)=>{
    if(err) return handleError(err);
    console.log(products);
})
*/