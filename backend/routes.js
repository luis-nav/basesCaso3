const { single, pool, orm } = require("./controllers");

const router = require("express").Router();

router.route("/single/:accion")
    .get(single)

router.route("/pool/:accion")
    .get(pool)

router.route("/orm/:accion")
    .get(orm)

module.exports = router;