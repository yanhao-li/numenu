import jsQR from "jsqr";

const video = document.createElement("video");
const canvasElement = document.getElementById("canvas");
const canvas = canvasElement.getContext("2d");

// Use facingMode: environment to attemt to get the rear camera on phones
try {
  console.log('Starting camera...');
  navigator.mediaDevices.getUserMedia(
    { 
      video: { 
        facingMode: "environment" 
      }
    }).then(stream => {
      video.srcObject = stream;
      video.setAttribute("playsinline", true); // required to tell iOS safari we don't want fullscreen
      video.play();
      requestAnimationFrame(tick);
  });
} catch(err) {
  console.error("webcam error: ");
  console.log(err);
}

const tick = () => {
  if (video.readyState === video.HAVE_ENOUGH_DATA) {
    canvasElement.hidden = false;

    canvasElement.height = video.videoHeight;
    canvasElement.width = video.videoWidth;
    canvas.drawImage(video, 0, 0, canvasElement.width, canvasElement.height);
    const imageData = canvas.getImageData(0, 0, canvasElement.width, canvasElement.height);
    const code = jsQR(imageData.data, imageData.width, imageData.height, {
      inversionAttempts: "dontInvert",
    });

    if (code) {
      drawLine(code.location.topLeftCorner, code.location.topRightCorner, "#FF3B58");
      drawLine(code.location.topRightCorner, code.location.bottomRightCorner, "#FF3B58");
      drawLine(code.location.bottomRightCorner, code.location.bottomLeftCorner, "#FF3B58");
      drawLine(code.location.bottomLeftCorner, code.location.topLeftCorner, "#FF3B58");
      const url = code.data
      if (isValidURL(url)) {
        window.location.replace(url);
      }
    }
  }
  requestAnimationFrame(tick);
}

const isValidURL = (str) => {
  const pattern = new RegExp('^(https?:\\/\\/)?'+ // protocol
    '(?:localhost|numenu-app.herokuapp.com'+ // domain name
    '|127.0.0.1|0.0.0.0)'+ // OR ip (v4) address
    '(\\:\\d+)?(\\/[-a-z\\d%_.~+]*)*'+ // port and path
    '(\\?[;&a-z\\d%_.~+=-]*)?'+ // query string
    '(\\#[-a-z\\d_]*)?$','i'); // fragment locator
  console.log(pattern.test(str));
  return !!pattern.test(str);
}

const drawLine = (begin, end, color) => {
  canvas.beginPath();
  canvas.moveTo(begin.x, begin.y);
  canvas.lineTo(end.x, end.y);
  canvas.lineWidth = 4;
  canvas.strokeStyle = color;
  canvas.stroke();
}