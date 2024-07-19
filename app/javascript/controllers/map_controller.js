// import { Controller } from "@hotwired/stimulus"

// // Connects to data-controller="map"
// export default class extends Controller {
//   static targets = ["canvas"];

//   connect() {
//     this.pieces = JSON.parse(this.data.get("pieces"));
//     console.log(this.pieces);
//     this.drawImages();
//   }

//   drawImages() {
//     const canvas = this.canvasTarget;
//     const context = canvas.getContext('2d');

//     var image = new Image();
//     image.src = '/assets/flame.png';
//     image.addEventListener('load', function() {
//         context.drawImage(image, 0, 0, 800, 1600);
//     }, false);

//     this.pieces.forEach(piece => {
//       const img = new Image();
//       img.src = piece.image;
//       img.onload = () => {
//         console.log('Drawing image at (${piece.location_x}, ${piece.location_y})');
//         this.drawImage(context, img, piece);
//       };
//       img.onerror = () => {
//         console.error('Failed to load image: ${piece.image}');
//       };
//     });
//   }

//   drawImage(context, img, piece) {
//     context.drawImage(img, piece.location_x, piece.location_y, piece.size_x, piece.size_y);
//   }

// }
