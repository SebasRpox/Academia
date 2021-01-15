const express = require("express");
const morgan = require("morgan");
const app = express();
const actores = require("./routes/actores");
require("dotenv").config();

app.use(morgan("dev"));

//Routes
app.use("/api/", actores);

app.get('/', (req, res)=>{
    res.send("<h1>API Academia Geek</h1>");
});

app.get('/estudiantes', (req, res)=>{
    let estudiantes = [];
    estudiantes.push({nombre: "Sebas", apellido: "Restrepo", edad: 20})
    res.json(estudiantes);
});

app.set("port", process.env.PORT || 5000)

app.listen(app.get("port"), ()=>{
    console.log(`Aplicación corriendo en el puerto ${app.get("port")}!!`);
});