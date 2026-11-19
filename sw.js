// Solo se cachea el código del visor. Los ZIP de pacientes nunca se guardan.
const C='visor3d-v2';
const F=['./','index.html','manifest.webmanifest','icon-192.png','icon-512.png','lib/three.min.js','lib/OrbitControls.js','lib/PLYLoader.js','lib/STLLoader.js','lib/MTLLoader.js','lib/OBJLoader.js','lib/jszip.min.js'];
let pending=null;
self.addEventListener('install',e=>{e.waitUntil(caches.open(C).then(c=>c.addAll(F)));self.skipWaiting()});
self.addEventListener('activate',e=>{e.waitUntil(caches.keys().then(k=>Promise.all(k.filter(x=>x!==C).map(x=>caches.delete(x)))).then(()=>self.clients.claim()))});
self.addEventListener('message',e=>{if(e.data==='getShared'&&pending){e.source.postMessage({sharedFile:pending});pending=null}});
self.addEventListener('fetch',e=>{
  const u=new URL(e.request.url);
  if(e.request.method==='POST'&&u.pathname.endsWith('/share-target')){
    e.respondWith((async()=>{const fd=await e.request.formData();pending=fd.get('zip');return Response.redirect(new URL('./?share=1',self.registration.scope).href,303)})());return;
  }
  if(e.request.method!=='GET'||u.origin!==location.origin||u.pathname.endsWith('.zip')||u.searchParams.has('zip'))return;
  e.respondWith(caches.match(e.request,{ignoreSearch:true}).then(r=>r||fetch(e.request)));
});
