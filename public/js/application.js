//Application JS

//Controller

//View JS

// $(document).ready(function(){

var geocoder;
var map;
// initialize();
$('.destination').on('submit',codeAddress);
$('.destination').on('submit',doFlickr);

// });

function initialize() {
  geocoder = new google.maps.Geocoder();
  console.log("GEOCODER!!!!!!!!")
  console.log(geocoder)

  var latlng = new google.maps.LatLng(37.774, -122.419);
  console.log("LATLNG!!!!!!!!!!")
  console.log(latlng)
  var mapOptions = {
    zoom: 8,
    center: latlng
  }
  console.log("mapOPTIONS!!!!!!!!")
  console.log(mapOptions)
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
}

function codeAddress() {
  var address = document.getElementById('address').value;
  geocoder.geocode( { 'address': address}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      map.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location
      });
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}

 google.maps.event.addDomListener(window, 'load', initialize);