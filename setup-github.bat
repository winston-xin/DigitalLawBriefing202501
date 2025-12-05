@echo off
chcp 65001 >nul
cls
echo 🌟 GitHub Pages 快速设置助手
echo ===============================
echo.
echo 🔍 问题分析：
echo ❌ GitHub仓库为空且已归档
echo ❌ 无法推送代码或启用Pages
echo.
echo 🚀 推荐解决方案：
echo.
echo 1️⃣ Netlify部署（最推荐）
echo    ✅ 3分钟完成部署
echo    ✅ 支持Gitee直接连接
echo    ✅ 全球CDN加速
echo    ✅ 自定义域名免费
echo.
echo 2️⃣ 创建新GitHub仓库
echo    ✅ 完全免费使用
echo    ✅ 与GitHub生态集成
echo    ❌ 需要重新配置
echo.
echo 3️⃣ 继续使用Gitee
echo    ✅ 国内访问速度快
echo    ✅ 代码托管稳定
echo    ❌ Pages功能受限
echo.
echo 💡 立即可用方案：
echo.
echo 🌐 本地预览：
echo    双击 QUICK_START.bat
echo    或运行: python -m http.server 8080
echo.
echo 🌍 Netlify部署：
echo    访问: https://netlify.com
echo    连接Gitee仓库，一键部署
echo.
echo 📱 Gitee预览：
echo    使用 gitee-viewer.html
echo    在Gitee内直接预览
echo.
echo ⚡ 选择操作：
echo [1] 打开Netlify部署网站
echo [2] 打开Gitee仓库查看
echo [3] 启动本地服务器
echo [4] 查看GitHub解决方案
echo [5] 查看部署指南
echo [0] 退出
echo.
set /p choice=请选择操作 (0-5): 

if "%choice%"=="1" (
    echo 🚀 正在打开Netlify...
    start "" "https://netlify.com"
)

if "%choice%"=="2" (
    echo 📂 正在打开Gitee仓库...
    start "" "https://gitee.com/winston_xin/DigitalLawBriefing202501"
)

if "%choice%"=="3" (
    echo 🌐 正在启动本地服务器...
    echo 访问地址: http://localhost:8080
    echo 按 Ctrl+C 停止服务器
    echo.
    python -m http.server 8080
)

if "%choice%"=="4" (
    echo 📋 正在打开GitHub解决方案...
    start "" "GITHUB_SOLUTION.md"
)

if "%choice%"=="5" (
    echo 📖 正在打开部署指南...
    start "" "DEPLOY_GUIDE.md"
)

if "%choice%"=="0" (
    echo 👋 再见！
    exit
)

echo.
echo 💎 提示：推荐使用Netlify，3分钟获得专业网站！
pause