#!/bin/sh
# Ejecutar en un equipo con internet, dentro de esta carpeta
mkdir -p lib
curl -fL https://cdn.jsdelivr.net/npm/three@0.128.0/build/three.min.js -o lib/three.min.js
curl -fL https://cdn.jsdelivr.net/npm/three@0.128.0/examples/js/controls/OrbitControls.js -o lib/OrbitControls.js
curl -fL https://cdn.jsdelivr.net/npm/three@0.128.0/examples/js/loaders/PLYLoader.js -o lib/PLYLoader.js
curl -fL https://cdn.jsdelivr.net/npm/three@0.128.0/examples/js/loaders/STLLoader.js -o lib/STLLoader.js
curl -fL https://cdn.jsdelivr.net/npm/three@0.128.0/examples/js/loaders/MTLLoader.js -o lib/MTLLoader.js
curl -fL https://cdn.jsdelivr.net/npm/three@0.128.0/examples/js/loaders/OBJLoader.js -o lib/OBJLoader.js
