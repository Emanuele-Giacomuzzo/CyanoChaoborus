#!/bin/bash
# Double-click this file in Finder to open the Daphnia food calculator.
# It runs entirely on your own computer via a local web server -- no
# internet connection is needed, and nothing leaves your machine.

cd "$(dirname "$0")"

PORT=8752
URL="http://localhost:$PORT/food_calculator.html"

if curl -s -o /dev/null "$URL"; then
  echo "Food calculator is already running -- opening it in your browser."
  open "$URL"
  exit 0
fi

python3 -m http.server "$PORT" >/dev/null 2>&1 &
SERVER_PID=$!
trap 'kill $SERVER_PID 2>/dev/null' EXIT SIGHUP SIGTERM

sleep 1
open "$URL"

echo "Food calculator is running at $URL"
echo "Keep this window open while you use it -- closing it stops the calculator."
read -p "Press Enter (or close this window) to stop the server..."
