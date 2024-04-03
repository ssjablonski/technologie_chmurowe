const express = require("express");
const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const app = express();
const port = 8080;
app.use(express.json());

const ItemSchema = new mongoose.Schema({
  name: String,
  price: Number,
});

const Item = mongoose.model("Item", ItemSchema);

mongoose
  .connect("mongodb://host.docker.internal:27017/test")
  .then(() => console.log("Successfully connected to mongodb"))
  .catch((e) => console.error(e));

app.get("/", (req, res) => {
  const item = Item.find().then((item) => {
    res.json(item);
    console.log(item);
  });
});

app.post("/", (req, res) => {
  const newItem = new Item({ name: "test", price: 100 });
  newItem.save().then((item) => {
    res.json(item);
  });
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
