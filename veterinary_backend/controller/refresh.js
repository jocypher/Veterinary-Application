const jwt = require("jsonwebtoken");
const User = require('../models/User')

const handleRefreshToken = async (req, res) => {
    console.log("working");
    const cookie = req.cookies;
    if (!cookie.jwt) {return res.status(401)};
    const refreshToken = cookie.jwt;
    const foundUser = await User.findOne({refreshToken}).exec();
    if (!foundUser) return res.status(204);
    jwt.verify(
        refreshToken,
        process.env.REFRESH_TOKEN_SECRET,
        (err, decoded) => {
            if (err) return res.sendStatus(403);
            const roles = Object.values(foundUser.roles);
            const accessToken = jwt.sign(
                {
                    userInfo: {
                        studentId: decoded.studentId,
                        roles: roles
                    }
                },
                process.env.ACCESS_TOKEN_SECRET,
                {expiresIn: '300s'}
            )
            res.status(201).json(accessToken);
        }
    )
}

module.exports = handleRefreshToken;