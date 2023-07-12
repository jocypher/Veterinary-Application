const jwt = require('jsonwebtoken');

const verifyJWT = (req, res, next) => {
    const auth = req.headers.authorization || req.headers.Authorization;
    if (!auth) {return res.status(401).json({message: 'Unauthorized'})};
    const token = auth.split(' ')[1];
    jwt.verify(
        token,
        process.env.ACCESS_TOKEN_SECRET,
        (err, decode) => {
           if (err) return res.status(403);
           req.user = decode.studentId; 
           next();
        }
    )
}

module.exports = verifyJWT;