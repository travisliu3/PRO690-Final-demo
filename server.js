const express = require("express");
const app = express();
const { hostname } = require("os");

const port = 8080;

app.get("/", (req, res) => {
  res.status(200).json({
    name: "Travis Liu",
    hostname: hostname(),
  });
});

app.listen(port, () => {
  console.log(`Server is running on http://${hostname()}:${port}`);
});
