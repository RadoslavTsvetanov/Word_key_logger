const express = require("express");
const app = express();
const port = 5000;

app.use(express.json()); // Enable JSON request parsing

let data = ""; // Variable to store the appended data

// Handle PUT requests to append data
app.put("/append", (req, res) => {
  const requestBody = req.body;

  console.log(req.body);
  if (requestBody && requestBody.data) {
    console.log(req.data);
    data += requestBody.data; // Append the data to the variable
    res.json({ message: "Data appended successfully" });
  } else {
    console.log("err");
    res.status(400).json({ error: "Invalid request data" });
  }
});

// Handle GET requests to display the variable
app.get("/display", (req, res) => {
  res.json({ data });
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
