function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var poolAddress = document.getElementById('program_1_lundi_address');

    if (poolAddress) {
      var autocomplete = new google.maps.places.Autocomplete(poolAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(poolAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
