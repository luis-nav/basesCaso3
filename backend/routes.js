const { single, pool } = require("./controllers");

const router = require("express").Router();

router.route("/single/:accion")
    .get(single)

router.route("/pool/:accion")
    .get(pool)

module.exports = router;