import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { toggleDateInputs } from './booking';
import { bookingPrice } from './booking_price';

initMapbox();
if (document.getElementById('periods')) {
  toggleDateInputs();
}
if (document.getElementById('periods')) {
  bookingPrice();
}

