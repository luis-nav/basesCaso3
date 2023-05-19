if (process.env.NODE_ENV !== "production") {
    require("dotenv").config()
}

const express = require("express");
const router = require("./routes");
const { PrismaClient } = require("@prisma/client")

//App Setup:
const app = express();
app.use(express.json());

//Prisma in locals
app.locals.orm = new PrismaClient()


app.use("/api", router);

app.all("*", (req,res) => {
    res.send("El endpoint no existe")
})

//App.listen
const port = process.env.PORT || 3000;
app.listen(port, () => {
    console.log(`Serving on port ${port}!`);
});