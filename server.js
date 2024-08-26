const http = require('http');
const RtspStream = require('node-rtsp-stream');

const server = http.createServer((req, res) => {
  res.writeHead(200, {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': 'OPTIONS, POST, GET',
    'Access-Control-Allow-Headers': 'Origin, X-Requested-With, Content-Type, Accept',
    'Content-Type': 'video/mp4'
  });

  const rtspUrl = 'rtsp://your-camera-ip-address:554/stream';

  const stream = new RtspStream({
    url: rtspUrl,
    quality: 3,
    ffmpegOptions: { // optional
      '-stats': '', // print statistics
      '-r': 30 // frame rate
    }
  });

  stream.on('data', (data) => {
    res.write(data);
  });

  stream.on('stop', () => {
    res.end();
  });
});

server.listen(8000, () => {
  console.log('Server listening on port 8000');
});
