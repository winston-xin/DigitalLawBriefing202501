@echo off
chcp 65001 >nul
cls
echo 🌐 数字简报 - 快速启动
echo =========================
echo.
echo 💡 解决"只能看到代码"问题
echo.
echo 🚀 立即可用的方案：
echo.
echo 1️⃣ 本地服务器预览（推荐）
echo    运行: python -m http.server 8080
echo    访问: http://localhost:8080
echo.
echo 2️⃣ 直接打开文件
echo    双击 index.html 文件
echo.
echo 3️⃣ 获取公共网站（最佳体验）
echo    访问: https://netlify.com
echo    连接Gitee仓库，一键部署
echo.
echo 📱 项目特色：
echo    ✨ 渐变视觉设计
echo    📱 完美移动端适配
echo    📚 11篇政策法规
echo    🔍 智能分类系统
echo.
echo ⚡ 选择操作：
echo [1] 启动本地服务器
echo [2] 直接打开index.html
echo [3] 打开Netlify部署网站
echo [4] 查看部署指南
echo [0] 退出
echo.
set /p choice=请选择操作 (0-4): 

if "%choice%"=="1" (
    echo.
    echo 🚀 正在启动本地服务器...
    echo 访问地址: http://localhost:8080
    echo 按 Ctrl+C 停止服务器
    echo.
    python -m http.server 8080
)

if "%choice%"=="2" (
    echo 📂 正在打开index.html...
    start "" "index.html"
)

if "%choice%"=="3" (
    echo 🌍 正在打开Netlify...
    start "" "https://netlify.com"
)

if "%choice%"=="4" (
    echo 📋 正在打开部署指南...
    start "" "DEPLOY_GUIDE.md"
)

if "%choice%"=="0" (
    echo 👋 再见！
    exit
)

echo.
pause