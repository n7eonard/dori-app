import GMaps from 'gmaps/gmaps.js';
import { autocomplete } from '../components/autocomplete';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });

  const markers = JSON.parse(mapElement.dataset.markers);
  map.addMarkers(markers);
  map.setOptions({ scrollwheel: false });
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {

    map.setCenter(markers[markers.length -1].lat, markers[markers.length -1].lng);
    map.setZoom(14);
  }
}


autocomplete();




