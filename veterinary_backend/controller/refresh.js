const jwt = require("jsonwebtoken");
const User = require('../models/User')

const handleRefreshToken = async (req, res) => {
    const cookie = req.cookies;
    if (!cookie.jwt) {return res.status(401)};
    const refreshToken = cookie.jwt;
    console.log(refreshToken);
    const foundUser = await User.findOne({refreshToken}).exec();
    if (!foundUser) return res.status(401);
    jwt.verify(
        refreshToken,git 
        process.env.REFRESH_TOKEN_SECRET,
        (err, decoded) => {
            if (err || foundUser.studentId != decoded.studentId) return res.status(403);
            const accessToken = jwt.sign(
                {studentId: decoded.studentId},
                process.env.ACCESS_TOKEN_SECRET,
                {expiresIn: '30s'}
            )
            res.json(accessToken);
        }
    )
}

module.exports = handleRefreshToken;