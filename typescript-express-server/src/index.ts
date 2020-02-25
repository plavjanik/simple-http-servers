import express from "express";

const app = express();
const port = process.env.PORT || 8080;

app.get("/greeting", (req, res) =>
  res.send(`Hello, ${req.query.name || "world"}!`)
);

app.listen(port, () =>
  process.stdout.write(`server started at http://localhost:${port}\n`)
);
