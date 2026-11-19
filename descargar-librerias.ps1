# Ejecutar en PowerShell, dentro de esta carpeta
New-Item -ItemType Directory -Force lib | Out-Null
Invoke-WebRequest https://cdn.jsdelivr.net/npm/three@0.128.0/build/three.min.js -OutFile lib/three.min.js
Invoke-WebRequest https://cdn.jsdelivr.net/npm/three@0.128.0/examples/js/controls/OrbitControls.js -OutFile lib/OrbitControls.js
Invoke-WebRequest https://cdn.jsdelivr.net/npm/three@0.128.0/examples/js/loaders/PLYLoader.js -OutFile lib/PLYLoader.js
Invoke-WebRequest https://cdn.jsdelivr.net/npm/three@0.128.0/examples/js/loaders/STLLoader.js -OutFile lib/STLLoader.js
Invoke-WebRequest https://cdn.jsdelivr.net/npm/three@0.128.0/examples/js/loaders/MTLLoader.js -OutFile lib/MTLLoader.js
Invoke-WebRequest https://cdn.jsdelivr.net/npm/three@0.128.0/examples/js/loaders/OBJLoader.js -OutFile lib/OBJLoader.js
