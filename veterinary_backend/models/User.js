const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const userSchema = new Schema({
    studentId: {
        type: String,
        required: true
    },
    pin: {
        type: String,
        required: true
    },
    roles: {
        user: {
            type: Number,
            default: 1845
        },
        admin: Number,
    },
    refreshToken: String
})

module.exports = mongoose.model('User', userSchema);