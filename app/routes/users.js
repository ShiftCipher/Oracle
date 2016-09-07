var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  var Nombre = "Daniel Tarazona";
  var Numeros = [1,5,9, 7, 55, 74, 6, 32, 44, 125, 658];
  var Electronica = {
    "SmartTV" : "Sony 3D 3000Hz",
    "Nevera" : "Samsung",
    "Apple TV" : "Apple"
  };

  // JavaScript Rules!
  console.log(Electronica.SmartTV);

  var Padre = Padre || {};

  function extend( ns, ns_string ) {
      var parts = ns_string.split('.'),
          parent = ns,
          pl, i;

      if (parts[0] == Padre) {
          parts = parts.slice(1);
      }

      pl = parts.length;
      for (i = 0; i < pl; i++) {
          if (typeof parent[parts[i]] == 'undefined') {
              parent[parts[i]] = {};
          }

          parent = parent[parts[i]];
      }

      return parent;
  }

  var Abuelo = extend(Padre, 'Abuelo');
  var Papa = extend(Abuelo, 'Papa');
  var Nieto = extend(Papa, 'Nieto')

  console.log(Padre);

  res.send([Nombre, Numeros, Electronica]);

});

module.exports = router;
