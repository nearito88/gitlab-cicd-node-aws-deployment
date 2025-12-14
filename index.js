const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello from the CI/CD Pipeline! Application is running on EC2 via Docker.');
});

app.listen(port, () => {
  console.log(`Application listening at http://localhost:${port}`);
});