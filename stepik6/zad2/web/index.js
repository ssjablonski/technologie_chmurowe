const mysql = require("mysql");
const express = require("express");
const app = express();
const port = 3000;

const connection = mysql.createConnection({
  host: "db",
  user: "root",
  password: "rootpassword",
  database: "mydatabase",
});

connection.connect();

app.get("/", (req, res) => {
  connection.query(
    "SELECT 1 + 1 AS solution",
    function (error, results, fields) {
      if (error) throw error;
      res.send(`Database connected, 1 + 1 = ${results[0].solution}`);
    }
  );
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
