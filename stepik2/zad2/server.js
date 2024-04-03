// console.log("Hello World!");

const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.json({ date: new Date() });
  console.log(new Date());
});

app.listen(8080, () => {
  console.log("Server is running on port 8080");
});
