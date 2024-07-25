import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = { pieces: Array }

  connect() {
    this.pieces = JSON.parse(this.data.get("pieces"));
    this.initMap();
  }

  initMap() {
    let historicalOverlay;

    function Grid(size) {
      this.tileSize = size;
    }
    
    Grid.prototype.maxZoom = 17;
    Grid.prototype.minZoom = 14;
    Grid.prototype.getTile = function(coord, zoom, ownerDocument) {
      var div = ownerDocument.createElement('div');
      return div;
    };

    const map = new google.maps.Map(this.element, {
      zoom: 15,
      center: {lat: 36.105523, lng: 140.102319},
      mapTypeId: 'custom_type',
      streetViewControl: false,
      mapTypeControl: false,
      restriction: {
        latLngBounds: {
          north: 36.128543,
          south: 36.078037,
          east: 140.124402,
          west: 140.082094
        },
        strictBounds: false
      }
    });

    map.mapTypes.set('custom_type', new Grid(new google.maps.Size(256, 256)));
    historicalOverlay = new google.maps.GroundOverlay(
      "/assets/pieces/flame.png",
      {
        north: 36.123562,
        south: 36.084223,
        east: 140.110225,
        west: 140.090263,
      }
    );
    historicalOverlay.setMap(map);
  }
}
