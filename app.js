'use strict';

var express = require('express');

var app = express();

app.get('/', function(req, res) {
    res.send('Hello world\n');
});

app.listen(3000);
console.log('Magic happens on port :', 3000);