const express = require('express');
const app = express();

const environment = process.env.ENV;

app.get('/', (req, res) => {
  res.send(`Hello world, ${environment}`);
});

app.listen(3000, () => {
  console.log('Example app listening on port 3000!');
});
