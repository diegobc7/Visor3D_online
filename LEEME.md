# Visor 3D (PWA para iPhone y Android)

## Para quien lo publica (TI / desarrollo)
1. En un equipo con internet, ejecutar `descargar-librerias.ps1` (Windows) o `descargar-librerias.sh` (Mac/Linux). Descarga 6 librerías three.js 0.128.0 a `lib/`. JSZip 3.10.1 ya está incluido. Comprobar que `lib/` queda con 7 archivos.
2. Subir TODA la carpeta a un servidor con **HTTPS** (obligatorio para instalar la app). No necesita backend ni base de datos. Opciones gratuitas: Cloudflare Pages, GitHub Pages, Netlify, o el dominio del hospital.
3. Probar en local: `python3 -m http.server 8000` y abrir http://localhost:8000.
4. Si se cambia algún archivo, cambiar el nombre de caché `C` en `sw.js` (`visor3d-v2`...) para que los móviles se actualicen.

Privacidad: el ZIP se lee en la memoria del dispositivo y no se sube ni se cachea. El service worker solo guarda el código del visor.

## Para clínicos
**Instalar (una vez):** abrir el enlace del visor.
- iPhone: en Safari, Compartir → Añadir a pantalla de inicio.
- Android: en Chrome, menú ⋮ → Instalar aplicación.

**Abrir un caso:**
- iPhone: en el correo, tocar el adjunto → Compartir → Guardar en Archivos. Abrir el visor → Abrir ZIP → elegir el archivo.
- Android: descargar el adjunto, abrir el visor → Abrir ZIP → elegirlo en Descargas. (En algunos móviles el visor aparece también en Compartir del ZIP.)

**Al terminar:** pulsar "Cerrar caso". Después, borrar el ZIP de Archivos/Descargas y del correo si no se necesita: el visor no puede eliminarlo.
