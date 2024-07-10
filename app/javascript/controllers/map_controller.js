import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static targets = ["canvas"];

  connect() {
    this.pieces = JSON.parse(this.data.get("pieces"));
    console.log(this.pieces);
    this.drawImages();
  }

  drawImages() {
    const canvas = this.canvasTarget;
    const context = canvas.getContext('2d');

    var image = new Image();
    image.src = '/assets/1.png';
    image.addEventListener('load', function() {
        context.drawImage(image, 0, 0, 800, 1600);
    }, false);

    this.pieces.forEach(piece => {
      const img = new Image();
      img.src = piece.image;
      img.onload = () => {
        console.log('Drawing image at (${piece.location_x}, ${piece.location_y})');
        this.drawImage(context, img, piece);
      };
      img.onerror = () => {
        console.error('Failed to load image: ${piece.image}');
      };
    });
  }

  drawImage(context, img, piece) {
    context.drawImage(img, piece.location_x, piece.location_y, piece.size_x, piece.size_y);
  }


  // connect() {
  //   console.log(this.pieces);
  //   this.drawImages();
  // }

  // drawImages() {
  //   const canvas = this.canvasTarget;
  //   const context = canvas.getContext('2d');

  //   const srcs = [
  //     '/assets/1.png',
  //     '/assets/2.png',
  //     '/assets/3.png',
  //     '/assets/4.png',
  //     '/assets/5.png',
  //   ];
  //   const images = [];

  //   srcs.forEach((src, index) => {
  //     const img = new Image();
  //     img.src = src;
  //     img.onload = () => {
  //       this.drawImage(context, img, index);
  //     };
  //     images.push(img);
  //   });
  // }

  // drawImage(context, img, index) {
  //   const positions = [
  //     { x: 0, y: 0, width: 800, height: 1600 },
  //     { x: 420, y: 370, width: 250, height: 375 },
  //     { x: 350, y: 800, width: 300, height: 300 },
  //     { x: 90, y: 1090, width: 190, height: 190 },
  //     { x: 140, y: 1430, width: 80, height: 160 }
  //   ];

  //   const pos = positions[index];
  //   context.drawImage(img, pos.x, pos.y, pos.width, pos.height);
  // }
}
