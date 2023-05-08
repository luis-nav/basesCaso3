const Connection = require("tedious").Connection;

const config = {
    server: "",
    authentication: {
        type: "default",
        options: {
            userName: "",
            password: "",
        }
    },
    options: {
        database: "",
    }
};

module.exports = new Connection(config);