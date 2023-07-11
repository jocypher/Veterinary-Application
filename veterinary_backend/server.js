const express = require('express');
const cookieParser = require('cookie-parser');
const credentials = require('./middleware/credentials')
const corsOptions = require('./config/corsOptions')
const cors = require('cors');
require('dotenv').config();
const { reqLogger, errLogger } = require("./middleware/logEvents");
const PORT = process.env.PORT;
const app = express();

app.use(reqLogger);
//app.use(credentials);
app.use(cors(corsOptions))

app.use(express.json());
app.use(cookieParser());
app.use(express.urlencoded({extended: false}));

app.all("*", (req, res) => {
    res.status = 404;
    res.type('txt').send("404 file not found");
})

app.use(errLogger);

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
})
