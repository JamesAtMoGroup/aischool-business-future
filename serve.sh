#!/bin/bash
# 起本地 http server 讓 YouTube 影片能就地播放 (file:// 不能 embed)
# Usage: ./serve.sh [port]
PORT="${1:-8080}"
cd "$(dirname "$0")"
echo "🚀 Serving on http://localhost:$PORT/business-future.html"
echo "   (Ctrl+C 停止)"
echo ""
# Try Python 3
if command -v python3 &> /dev/null; then
  python3 -m http.server "$PORT"
elif command -v python &> /dev/null; then
  python -m SimpleHTTPServer "$PORT"
else
  echo "❌ 沒裝 Python — 改用 npx serve"
  npx serve -p "$PORT"
fi
