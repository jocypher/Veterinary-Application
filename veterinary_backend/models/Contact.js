const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const contactSchema = new Schema({
    title: {
        type: String,
        required: true
    },
    name: {
        type: String,
        required: true
    },
    email: {
        type: String,
        required: true
    },
    officeHours: Date,
    location: String    
});

module.exports = mongoose.model('Contact', contactSchema);