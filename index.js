const express = require("express");
const clientRouter = require("./routes/client.routes");

const app = express();

const PORT = process.env.PORT ?? 3000;

app.use(express.json());

app.use("/api", clientRouter);

app.listen(PORT, () => {
  console.log(`${PORT} is started`);
});
