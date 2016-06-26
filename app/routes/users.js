var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  var test = "Prueba JSON";
  test = JSON.parse(test);
  res.json(test);
});

module.exports = router;
