const express = require("express");
const Datastore= require('nedb');

const app=express();

app.listen(3603,()=>{console.log("Running...")});
app.use(express.static('public'));
app.use(express.json({limit:'1mb'}));
const database=new Datastore('database.db');
database.loadDatabase();
database.insert({textName:'Dina', txtCim:'', telefonszam:'', emailcim:'', allergen:'' });
app.post('/api',(request,response) => {
    console.log('Van adatom');
    console.log(request.body);
    const data=request.body;
    database.push(data);
    console.log(database);
    response.json({
        status:'sikeres',
        latitude:data.lat,
        longitude:data.lon
    });

});