import "bootstrap";
// import { initMapbox } from '../plugins/init_mapbox';

// document.addEventListener('turbolinks:load', () => {
//   initMapbox();
// })
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
