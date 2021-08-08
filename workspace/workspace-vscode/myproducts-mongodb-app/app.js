/**
 * app.js
 * @author Eyasu Gebrehiwot
 * @day 2021-08-06
 */
const {MongoClient, ObjectId}= require('mongodb');
let eyasuconnection= null;
const dbUrl = "mongodb://localhost:27017";
// name of the database
const dbName= 'MyProducts-db';

async function main(){
    eyasuconnection=await MongoClient.connect(dbUrl,{
        useNewUrlParser:true,
        useUnifiedTopology:true

    });

    console.log("Connected Successfully With MongoDb Server!");
    const db = eyasuconnection.db(dbName);
    const productsCollection= db.collection("products");
    //new Database operations 
    const products = await getProducts(productsCollection);
    console.log(products);

    // Let's add one product into the collection 
    const newProduct= {
            "product_id":101,
            "name":"Banana",
            "unit-price":0.89,
            "quantity":94
        }
    
    //console.log(await addProduct(productsCollection, newProduct));
    

    const newerProducts = [
        {
            "product_id":103,
            "name":"Avocado",
            "unit-price":1.1,
            "quantity":93
        },
        {
            "product_id":104,
            "name":"Mango",
            "unit-price":0.99,
            "quantity":90
        },
        {
            "product_id":105,
            "name":"Orange",
            "unit-price":0.89,
            "quantity":100
        },
        {
            "product_id":106,
            "name":"Guava",
            "unit-price":0.99,
            "quantity":74
        }
    ]

   // console.log(await addManyProducts(productsCollection,newerProducts));


   /*
    // delete one product 
    const productTodeleteFilter= {"_id":ObjectId("610df6a22d084a688760909a")}
    //const productTodeleteFilter = {"Product2":{}};
    //console.log(await deleteProduct(productsCollection, productTodeleteFilter));
    return "Operation Completed";
    
    */

    // update one product 
    const productUpdatefilter = {"product_id":104};
    const newUnitPrice= 1.3;
    console.log(await updateproduct(productsCollection,productUpdatefilter,newUnitPrice));

}
main()
.then(console.log)
.catch(console.error)
.finally(()=>{if(!eyasuconnection) eyasuconnection.close();})

const getProducts= async function(collection){
    const qryOfProducts = await collection.find({}).toArray();
    return qryOfProducts;
}
const addProduct= async function(collection,newProduct){
    const addedproduct = await collection.insertOne(newProduct);
    return addedproduct;
}
const addManyProducts = async function(collection, newerProducts){
    const addManyProducts =  await collection.insertMany(newerProducts);
    return addManyProducts;
}
const deleteProduct = async function (collection, filter){
    const prouctToDelete = await collection.deleteOne(filter);
    return prouctToDelete;
}

const updateproduct = async function(collection ,filter,newUnitPrice){
    const productUpdateResult = await collection.updateOne(filter,{$set:{"unit-price":newUnitPrice}});
    return productUpdateResult;
}