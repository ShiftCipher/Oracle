
var oracledb = require('oracledb');

  oracledb.getConnection(function(err, connection) {
    
    ,
    connection.execute(
      "SELECT codart, desart, preart, compart, ivaart " +
      "FROM articulo " +
      "WHERE desart like '%COLGATE'",
      function(err, result) {
        if (err) {
          connection.release(function(err) {
            if (err) {
              // Just logging because handleError call below will have already
              // ended the response.
              console.error("execute() error release() error", err);
            }
          });
          handleError(response, "execute() error", err);
          return;
        }

        displayResults(response, result, deptid);

        /* Release the connection back to the connection pool */
        connection.release(function(err) {
          if (err) {
            handleError(response, "normal release() error", err);
          } else {
            htmlFooter(response);
          }
        });
      }
    );
  });

response.writeHead(200, {"Content-Type": "text/html"});
response.write("<!DOCTYPE html>");
response.write("<html>");
response.write("<head>");
response.write("<style>" +
  "body {background:#FFFFFF;color:#000000;font-family:Arial,sans-serif;margin:40px;padding:10px;font-size:12px;text-align:center;}" +
  "h1 {margin:0px;margin-bottom:12px;background:#FF0000;text-align:center;color:#FFFFFF;font-size:28px;}" +
  "table {border-collapse: collapse;   margin-left:auto; margin-right:auto;}" +
  "td {padding:8px;border-style:solid}" +
  "</style>\n");
response.write("<title>" + caption + "</title>");
response.write("</head>");
response.write("<body>");
response.write("<h1>" + title + "</h1>");
response.write("</body>\n</html>");

console.log(result);
response.write("<h2>" + "Rows " + deptid + "</h2>");
response.write("<table>");

// Column Title
response.write("<tr>");
for (var col = 0; col < result.metaData.length; col++) {
  response.write("<td>" + result.metaData[col].name + "</td>");
}
response.write("</tr>");

// Rows
for (var row = 0; row < result.rows.length; row++) {
  response.write("<tr>");
  for (col = 0; col < result.rows[row].length; col++) {
    response.write("<td>" + result.rows[row][col] + "</td>");
  }
  response.write("</tr>");
}
response.write("</table>");
