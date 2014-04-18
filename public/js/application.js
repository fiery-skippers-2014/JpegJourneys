//  var geocoder;
//  var map;

$('document').ready(function() {

  function bindEvents() {
    $('.destination').on('submit', handler)
  }
  bindEvents();
});

// //// HANDLER
var handler = function(event){
  event.preventDefault();
  // var mappy = new GoogleMap();
  // console.log("HANDLER");
  // mappy.initialize_me();
  // mappy.code_it();
 doFlickr();
}


// ///GOOGLE MAPS
// GoogleMap = function() {
//   event.preventDefault();
// }

// GoogleMap.prototype = {
//   initialize_me: function(d) {
//     console.log("Initialize Me")

//     var jqxhr = $.ajax({
//       url: '/photos',
//       type: "POST",

//       success: function(){
//         console.log("Successful initialize");
//         geocoder = new google.maps.Geocoder();
//         var latlng = new google.maps.LatLng(37.774, -122.419);
//         var mapOptions = {
//           zoom: 8,
//           center: latlng
//         }
//         map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
//       },
//       fail: function(){
//         console.log("Failed initialize");
//       }
//     })
//   },


  // code_it: function(){

  //   var jqxhr = $.ajax({
  //     url: '/photos',
  //     type: "POST",
  //     data: {tags: $("#address").val()},

  //     success: function(data){
  //       console.log("Success!!" + data);
  //       console.log("Making the map!")

  //       var address = document.getElementById('address').value;
  //       geocoder.geocode( { 'address': address}, function(results, status) {
  //         if (status == google.maps.GeocoderStatus.OK) {
  //           map.setCenter(results[0].geometry.location);
  //           var marker = new google.maps.Marker({
  //             map: map,
  //             position: results[0].geometry.location
  //           });
  //         } else {
  //           alert('Geocode was not successful for the following reason: ' + status);
  //         }
  //       });
  //     },
  //     fail: function(data){
  //       console.log("Fail" + data);
  //     }
  //   })
  // }
// }







  ///FLICKR
  var doFlickr = function(){

    console.log("DOFLICKER")

    var jqxhr = $.ajax({
      url: "/photos",
      type: "POST",
      data: {tags: $("#address").val()},
      success: function(data){
        console.log("Success!!" + data);
        $(".flickr").html("<img src= "+data+">");
      },
      fail: function(data){
        console.log("Fail" + data);
      }
    })
  }
