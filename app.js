const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('iam server running <p>Version 3.5</p>');
}) 
app.get('/v2', (req, res) => {
  res.send('<h1>Express Demo App</h1> <h4>Message: Success</h4> <p>Version 2.0</p>');
})
app.get('/products', (req, res) => {
  res.send([
    {
      productId: '101',
      price: 100
    },
    {
      productId: '102',
      price: 150
    }
  ])
})

app.listen(port, ()=> {
  console.log(`server is started on: ${port}`);
})
 