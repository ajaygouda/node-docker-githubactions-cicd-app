const express = require("express");
const app = express();

app.get("/", (req, res) => {
    let ar = [{ name: "Ajay" }, { name: "Aadyant" }, { name: "Kishori" }, {name:"x"}]
    res.json(ar)
})

app.listen(4000, () => {
    console.log("App is running on 4000 port")
})