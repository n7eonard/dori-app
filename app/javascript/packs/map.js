import GMaps from 'gmaps/gmaps.js';
import { autocomplete } from '../components/autocomplete';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });

  // var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';
  // var icons = {
  //   pool: {
  //     icon: <%= image_tag("pool-icon.png") %>
  //     },
  //   user: {
  //     icon: <%= image_tag("phelps-avatar.jpg") %>
  //    },
  //   };

  const markers = JSON.parse(mapElement.dataset.markers);
  map.addMarkers(markers);
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




