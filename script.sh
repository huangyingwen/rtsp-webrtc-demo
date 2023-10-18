docker run --rm -it \
  -e MTX_PROTOCOLS=tcp \
  -p 8554:8554 \
  -p 1935:1935 \
  -p 8888:8888 \
  -p 8889:8889 \
  -p 9997:9997 \
  -p 8890:8890/udp \
  -v $PWD/projects/rtsp-webrtc-demo/mediamtx.yml:/mediamtx.yml \
  --network=host \
  bluenviron/mediamtx
