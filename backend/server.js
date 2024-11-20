const express = require('express');
const app = express();
const mysql = require('mysql2');
const cors = require('cors');

app.use(cors());

const db = mysql.createConnection({
    host: 'db', 
    user: 'root',
    password: 'password',
    database: 'mydb'
});

db.connect(err => {
    if (err) throw err;
    console.log('Connected to the database');
});

app.get('/products', (req, res) => {
    db.query('SELECT * FROM products', (err, results) => {
        if (err) throw err;
        res.json(results); 
    });
});

app.listen(3000, () => {
    console.log('Backend running on port 3000');
});