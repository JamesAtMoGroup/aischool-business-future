# aischool · business-future landing

AI 未來學院已加入學員專屬學習地圖頁面（standalone HTML，無外部框架依賴）。

## 入口

- `business-future.html` — 主頁

## 本地預覽

```bash
./serve.sh
# → http://localhost:8080/business-future.html
```

## 部署

Static site，任何靜態 host 皆可：Zeabur Static / Vercel / Netlify / GitHub Pages。

Zeabur：
1. New Project → Deploy from GitHub
2. 選此 repo，service type 偵測為 static
3. 設 root 為 `/`（無 build command，直接服務 HTML/asset）
