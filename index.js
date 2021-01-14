const express = require("express");
const morgan = require("morgan");
const app = express();

app.use(morgan("dev"));

app.get('/', (req, res)=>{
    res.send("<h1>API Academia Geek</h1>");
});

app.get('/estudiantes', (req, res)=>{
    let estudiantes = [];
    estudiantes.push({nombre: "Sebas", apellido: "Restrepo", edad: 20})
    res.json(estudiantes);
});

app.listen(8083, function(){
    console.log("Aplicacion abierta en el puerto 8083!");
});