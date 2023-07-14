const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const announcementSchema = new Schema({
    caption: {
        type: String,
        required: true
    }
});

module.exports = mongoose.model('Announcement', announcementSchema);