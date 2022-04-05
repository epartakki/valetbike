// Initialize and add the map
function initMap() {
    // The location of Northampton (https://www.distancesto.com/coordinates/us/northampton-latitude-longitude/history/15946.html)
    const noho = { lat: 42.3250896, lng: -72.6412013 };
    // The map, centered at Northampton
    const map = new google.maps.Map(document.getElementById("map"), {
      zoom: 4,
      center: noho,
    });
    // The marker, positioned at Northampton
    const marker = new google.maps.Marker({
      position: noho,
      map: map,
    });
  }