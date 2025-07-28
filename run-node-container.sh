docker run -itd \
  --name ionic \
  -v "$PWD":/app \
  -w /app \
  -p 5173:5173 \
  -p 8100:8100 \
  -p 3000:3000 \
  --entrypoint /bin/sh \
  node:24-alpine \
  -c "trap : TERM INT; sleep infinity & wait"
