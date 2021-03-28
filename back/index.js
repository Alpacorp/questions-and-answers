const express = require('express');
const bodyparser = require('body-parser');
const cors = require('cors');
// const path = require('path');

// start server
const server = express();

// settings
server.set('port', process.env.PORT || 7000);
server.use(cors());
server.use(bodyparser.json());

// routes
server.use(require('./routes/questions'));
server.use(require('./routes/answers'));

// log server
server.listen(server.get('port'), () => {
    console.log("Server up in port", server.get('port'));
})