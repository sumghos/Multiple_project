//Load the express module .
var express = require('express'),
app = express.createServer();

//Response to Request for / with "Hello world "

app.get('/',function(req, res){
    res.send('Hello World');
});

//Listen on Port 80 (like a true web server).
app.listen(80);
console.log('Express server started successfully .');
