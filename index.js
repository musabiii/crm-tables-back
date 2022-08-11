const express = require("express");
const clientRouter = require("./routes/client.routes");

const app = express();

const PORT = process.env.PORT ?? 4000;

console.log("port", process.env.PORT);

app.use(express.json());

app.use("/api", clientRouter);

app.listen(PORT, () => {
  console.log(`${PORT} is started`);
  console.log("port", process.env.PORT);
});

app.get("/", (req, res) => {
  res.send("ok");
});
