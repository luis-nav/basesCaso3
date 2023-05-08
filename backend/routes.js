const { prueba } = require("./controllers");

const router = require("express").Router();

router.route("/")
    .get(prueba)

module.exports = router;