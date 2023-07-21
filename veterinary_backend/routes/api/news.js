const express = require('express');
const router = express.Router();
const { getAllNews, createNewNews, updateNews, deleteNews, getNews } = require('../../controller/news');
const verifyRoles = require("../../middleware/verifyRoles");
const ROLES_LIST = require("../../config/roles")

router.route('/')
.get(getAllNews)
.post(verifyRoles(ROLES_LIST.admin), createNewNews)
.put(verifyRoles(ROLES_LIST.admin), updateNews)
.delete(verifyRoles(ROLES_LIST.admin), deleteNews)

router.route('/:id')
.get(getNews)

module.exports = router;