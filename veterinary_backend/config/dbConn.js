const mongoose = require('mongoose');

const ConnectDB = async () => {
    try {
        mongoose.connect(process.env.DATABASE_URI, {
            useUnifiedTopology: true,
            useNewUrlParser: true
        })
    } catch(err) {
        console.error(err)
    }
}

module.exports = ConnectDB;