const http = require("http");

const path = require("path");

const fs = require("fs");

const server = http.createServer((req, res) => {
  const filePath = path.join(
    __dirname,
    req.url === "/" ? "/index.html" : req.url
  );
  const extName = path.extname(filePath);
  const extTypes = {
    ".html": "text/html",
    ".css": "text/css",
    ".js": "text/javascript",
  };
  const contentType = extTypes[extName] || 'application/octet';
  fs.readFile(filePath,(err,content)=>{
    if (err) {
        res.writeHead(404, { "Content-Type": "text/plain" });
        res.end('File not found');
    } else {
        res.writeHead(200, { "Content-Type": contentType });
        res.end(content);
    }
  })
});

server.listen(3000, () => {
  console.log("Working");
});
