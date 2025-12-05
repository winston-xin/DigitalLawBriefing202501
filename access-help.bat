@echo off
echo 🔍 数字简报访问帮助
echo ======================
echo.
echo ❌ "页面不存在" 问题解决方案
echo.
echo 💡 正确的访问方式：
echo.
echo 1️⃣ 本地访问（推荐）：
echo    在当前目录运行以下命令：
echo    python -m http.server 8080
echo    然后在浏览器访问：http://localhost:8080
echo.
echo 2️⃣ 直接打开文件：
echo    双击 index.html 文件
echo    路径：%~dp0index.html
echo.
echo 3️⃣ 检查文件是否完整：
echo    index.html  ✓ 存在
echo    styles.css  ✓ 存在  
echo.
echo 4️⃣ 在线部署（推荐）：
echo    访问：https://netlify.com
echo    连接Gitee仓库，一键部署
echo.
echo 📱 移动端访问：
echo    使用Netlify部署后获得手机可访问的链接
echo.
echo ⚡ 立即体验：
echo    按任意键启动本地服务器...
pause > nul
python -m http.server 8080