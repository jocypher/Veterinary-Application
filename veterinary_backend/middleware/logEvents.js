const path = require('path');
const fs = require('fs');
const fsPromises = require('fs').promises;
const { format } = require('date-fns');
const { v4: uuid } = require('uuid');

const logEvents = async (logMsg, file) => {
    let date = format(new Date(), "dd/MM/yyyy\thh:mm:ss");
    let id = uuid();
    let logItem = `${date}\t${id}\t${logMsg}\n`

    try {
        if (!fs.existsSync(path.join(__dirname, "..", "logs"))) {
            await fsPromises.mkdir(path.join(__dirname, "..", "logs"));
        }
        await fsPromises.appendFile(path.join(__dirname, "..", "logs", file), logItem);
    } catch (err) {
        console.error(err);
    }

}

const reqLogger = (req, res, next) => {
    logEvents(`${req.method}\t${req.headers.origin}\t${req.url}`, 'reqLog.txt');
    res.status(200);
    next();
}

const errLogger = (req, res, err) => {
    logEvents(`${req.name} : ${req.message}`, 'errLog.txt');
    console.error(err.stack);
    res.status(500).send(err.message);
}

module.exports = {reqLogger, errLogger};

