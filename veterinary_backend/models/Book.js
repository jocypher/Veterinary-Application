const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const bookSchema = new Schema({
    title: {
        type: String,
        required: true
    },
    author: {
        type: String,
        required: true
    },
    year: Number,
    publisher: String,
    pageNumber: Number,
    uploadLink: {
        type: String,
        required: true
    }
});

module.exports = mongoose.model('Book', bookSchema);