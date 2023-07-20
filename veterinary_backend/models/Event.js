const mongoose = require('mongoose');
const Schema = mongoose.Schema;

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