#!/bin/bash
# 济南国庆行 App - 局域网启动器
# 双击运行后，在 iPhone Safari 输入下面显示的地址，然后「分享 → 添加到主屏幕」
cd "$(dirname "$0")"
IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null || echo "127.0.0.1")
echo "======================================"
echo "  请在 iPhone Safari 输入："
echo "  http://$IP:8765"
echo "  然后点分享按钮 → 添加到主屏幕"
echo "  按 Ctrl+C 可停止服务"
echo "======================================"
python3 -m http.server 8765 --bind 0.0.0.0
