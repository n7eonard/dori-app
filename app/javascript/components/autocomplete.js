function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var poolAddresses = document.querySelectorAll("textarea[id*='address']");
    var options = {
      componentRestrictions: {country: 'fr'}
    };
    poolAddresses.forEach((poolAddress) => {
      if (poolAddress) {
        var autocomplete = new google.maps.places.Autocomplete(poolAddress, options, { types: [ 'geocode' ] });

        google.maps.event.addListener(autocomplete, 'place_changed', function(){
          const first_address = document.querySelector("textarea[id*='address']");

          if (first_address == poolAddress) {
            const all = document.querySelectorAll("textarea[id*='address']");

            all.forEach((input) => {
              input.value = first_address.value;
            })
          }
        });
        google.maps.event.addDomListener(poolAddress, 'keydown', function(e) {
          if (e.key === "Enter") {
            console.log(poolAddress.value)
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
      }
    });
  });
};

export { autocomplete };
