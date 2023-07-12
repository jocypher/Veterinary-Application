const bcrypt = require('bcrypt');
const User = require('../models/User');

const handleRegistration = async (req, res) => {
    const { id, pin } = req.body;
    if (!id || !pin) {return res.status(400).json({message: 'Student id and pin required'})};
    const duplicate = await User.findOne({studentId: id}).exec();
    if (duplicate) {return res.status(409).json({message: `User ${id} alreaded exists`})};
    try {
        const hashedPin = await bcrypt.hash(pin, 10);
        const result = await User.create({
            studentId: id,
            pin: hashedPin
        });
        console.log(result);
        res.status(201).json({message: `New user '${id}' created`})
    } catch (err) {
        res.status(500).json({message: err.message})
    }
}

module.exports = handleRegistration