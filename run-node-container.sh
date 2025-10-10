docker run -it \
  --name ionic \
  --memory="4g" \
  --cpus="2" \
  -v ~/development/javascript:/app \
  -w /app \
  -p 5173:5173 \
  -p 8100:8100 \
  -p 3000:3000 \
  node:24-alpine \
  sh
