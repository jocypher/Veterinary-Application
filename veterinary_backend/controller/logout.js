const User = require('../models/User')

const handleLogout = async (req, res) => {
    const cookie = req.cookies;
    if (!cookie?.jwt) return res,sendStatus(204);
    const refreshToken = cookie.jwt;
    const foundUser = await User.findOne({refreshToken}).exec();
    if (!foundUser) {
        res.clearCookie('jwt', {httpOnly: true, sameSite: 'None', /*secure: true,*/ maxAge: 24 * 60 * 60 * 1000});
        res.sendStatus(201);
    }
    foundUser.refreshToken = "";
    const result = await foundUser.save();
    console.log(result);
    res.json({foundUser});
}

module.exports = handleLogout;