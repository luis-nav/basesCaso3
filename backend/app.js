if (process.env.NODE_ENV !== "production") {
    require("dotenv").config()
}

const express = require("express");
const router = require("./routes");

//App Setup:
const app = express();
app.use(express.json());

app.use("/api", router);

//App.listen
const port = process.env.PORT || 3000;
app.listen(port, () => {
    console.log(`Serving on port ${port}!`);
});