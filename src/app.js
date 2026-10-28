const express = require("express");

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());

app.get("/", (req, res) => {
  res.send(`
    <h1>DevSecOps Security Lab</h1>
    <p>Application for authorized security testing.</p>
    <a href="/health">Check application health</a>
  `);
});

app.get("/health", (req, res) => {
  res.json({
    status: "running",
    project: "DevSecOps Security Lab"
  });
});

app.listen(PORT, "127.0.0.1", () => {
  console.log(`Security lab running at http://127.0.0.1:${PORT}`);
});