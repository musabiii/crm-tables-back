const express = require("express");
const clientRouter = require("./routes/client.routes");
const serviceRouter = require("./routes/service.routes");
const documentRouter = require("./routes/document.routes");
const cors = require('cors');
const app = express();

const PORT = process.env.PORT ?? 4000;

app.use(express.json());
app.use(cors());

app.use("/api", clientRouter);
app.use("/api", serviceRouter);
app.use("/api", documentRouter);

app.listen(PORT, () => {
  console.log(`${PORT} is started`);
  console.log("port", process.env.PORT);
});

app.get("/", (req, res) => {
  res.send("ok");
});
