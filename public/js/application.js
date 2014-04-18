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
  doFlickr();
}

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
