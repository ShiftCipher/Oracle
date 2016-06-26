var express = require('express');
var oracledb = require('oracledb');
var router = express.Router();

router.get('/', function(req, res, next) {
  oracledb.getConnection(
  {
    user          : "daniel",
    password      : "123456",
    connectString : "localhost/orcl"
  },
  function(err, connection)
  {
    if (err) { console.error(err.message); return; }

    connection.execute(
      "select * from articulo where desart like '%COLGA%'",
      function(err, result)
      {
        if (err) { console.error(err.message); return; }
        console.log(result.rows);
        res.write("<!DOCTYPE html>");
        res.write("<html>");
        res.write("<head>");
        res.write("</head>");
        res.write("<body>");
        res.write("</body>\n</html>");
        res.write("<table>");
        res.write("<tr>");
        for (var col = 0; col < result.metaData.length; col++) {
          res.write("<td>" + result.metaData[col].name + "</td>");
        }
        res.write("</tr>");

        // Rows
        for (var row = 0; row < result.rows.length; row++) {
          res.write("<tr>");
          for (col = 0; col < result.rows[row].length; col++) {
            res.write("<td>" + result.rows[row][col] + "</td>");
          }
          res.write("</tr>");
        }
        res.write("</table>");
      });
  });
});

module.exports = router;
