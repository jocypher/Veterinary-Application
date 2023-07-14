const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const newSchema = new Schema({
    caption: {
        type: String,
        required: true
    },
    domainName: {
        type: String,
        required: true
    },
    uploadLink: {
        type: String,
        required: true
    }
});

module.exports = mongoose.model('New', newSchema);