const mongoose = require('mongoose');
const Schema = new Schema;

const eventSchema = new Schema({
    event: {
        type: String,
        required: true
    },
    eventDate: {
        type: Date,
        required: true
    }
});

module.exports = mongoose.model('Event', eventSchema);