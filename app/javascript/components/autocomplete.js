function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var poolAddress = document.querySelector("textarea[id*='address']");
    var options = {
      componentRestrictions: {country: 'fr'}
    };
    if (poolAddress) {
      var autocomplete = new google.maps.places.Autocomplete(poolAddress, options, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(poolAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
