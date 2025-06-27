const express = require("express");

const app = express();

app.use(express.json());

let cars = [];

let id = 1;

app.post("/create", (req, res) => {
  let name = req.body.name;
  let price = req.body.price;
  let obj = {
    id: id++,
    name,
    price,
  };
  cars.push(obj);
  res.status(200).send(obj);
});

app.get("/cars", (req, res) => {
  res.status(200).send(cars);
});

app.get("/car/:id", (req, res) => {
  const car = cars.findIndex((e) => Number(req.params.id) === e.id);
  if (car === -1) {
    res.status(404).send("Not Found");
  } else {
    res.status(200).send(cars[car]);
  }
});

app.put("/update/:id", (req, res) => {
  const car = cars.findIndex((e) => Number(req.params.id) === e.id);
  if (car === -1) {
    res.status(404).send("Not Found");
  } else {
    let name = req.body.name;
    let price = req.body.price;
    cars[car] = {
      id: cars[car].id,
      name,
      price,
    };
    res.status(200).send(cars[car]);
  }
});

app.delete('/delete/:id', (req, res) => {
  let index = cars.findIndex(e => e.id === parseInt(req.params.id));
  if (index === -1) {
    res.status(404).send("Not Found");
  } else {
    cars.splice(index, 1);
    res.status(200).send('Done');
  }
});

app.listen(3000, "127.0.0.1", () => {
  console.log("server is working");
});
