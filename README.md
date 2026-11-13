# aischool · business-future landing

AI 未來學院已加入學員專屬學習地圖頁面（standalone HTML，無外部框架依賴）。

## 入口

- `business-future.html` — 主頁

## 本地預覽

```bash
./serve.sh
# → http://localhost:8080/business-future.html
```

## 部署（AI GO）

2026-11-03 起，這個頁面跑在 AI GO 的 Hosted App（workspace `mogroup`）。

| 項目 | 內容 |
|---|---|
| App slug | `aischool-business-future` |
| 網址 | https://aischool-business-future.deploy.ai-go.app |
| 執行方式 | 可休眠（非常駐） |
| 持久資料 | 無 |
| 建置方式 | 靜態網站，沒有建置指令（repo 只有 HTML、`assets/` 與本機預覽用的 `serve.sh`，沒有 Dockerfile） |

### 改完怎麼上線

1. 安裝 aigo CLI 並登入（瀏覽器按一次授權；約 1 小時後過期，過期再登入一次）：

   ```bash
   curl -fsSL https://raw.githubusercontent.com/AI-GO-APP/aigo-cli-releases/main/install.sh | bash
   aigo login --workspace mogroup
   ```

2. 線上版可能和 GitHub main 不同。改之前先下載線上版比對：`aigo hosted list` 查 App ID，再跑 `aigo hosted clone --app <App ID> <空資料夾>`。
3. 在專案根目錄部署：

   ```bash
   aigo hosted deploy --slug aischool-business-future
   ```

4. 看這次部署的建置日誌：`aigo hosted logs --app aischool-business-future`。
5. 看執行期記錄：登入 https://mogroup.ai-go.app →「App 建造器」→「我的 Apps」→ 點這個 App，看「記錄」分頁。

推到 GitHub 不會自動部署到 AI GO。改完一定要跑 `aigo hosted deploy`。
