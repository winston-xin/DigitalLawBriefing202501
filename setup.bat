@echo off
chcp 65001 >nul

REM 数字简报 - Windows 一键部署脚本
REM 使用方法: setup.bat

echo 🚀 数字简报 - GitHub 一键部署
echo ==========================================
echo 📊 辽宁省律师协会数字法治与数字经济专业委员会
echo.

REM 检查 Git 是否已安装
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git 未安装，请先安装 Git
    echo 📥 下载地址: https://git-scm.com/download/win
    pause
    exit /b 1
)

REM 检查是否在 Git 仓库中
if not exist ".git" (
    echo 📦 初始化 Git 仓库...
    git init
    echo ✅ Git 仓库初始化完成
) else (
    echo ℹ️  Git 仓库已存在
)

REM 检查远程仓库
git remote get-url origin >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo 🔗 请手动添加你的 GitHub 仓库：
    echo    git remote add origin https://github.com/YOUR-USERNAME/digital-briefing.git
    echo    （请将 YOUR-USERNAME 替换为你的 GitHub 用户名）
    echo.
)

REM 添加所有文件
echo 📁 添加文件到暂存区...
git add .

REM 提交文件
echo 💾 提交文件...
git commit -m "🚀 Initial commit: 数字简报 v2.0

✨ 新功能:
- 醒目的渐变动画标题设计
- 玻璃态现代UI设计
- 11篇最新数字经济政策法规
- 5大智能分类系统
- 完美响应式布局

🎨 设计特色:
- 紫蓝渐变背景
- 闪光动画文字效果
- 半透明玻璃态卡片
- 丰富的交互动画

📱 技术特性:
- 纯静态HTML5网站
- GitHub Pages自动部署
- 移动端完美适配
- SEO优化结构

📚 包含文档:
- 数据基础制度 (3篇)
- 数据安全治理 (2篇) 
- 行业发展 (3篇)
- 监管管理 (2篇)
- 标准规范 (1篇)"

echo.
echo ✅ 准备完成！
echo.
echo 📋 下一步操作：
echo 1. 🌐 在 GitHub 上创建新仓库:
echo    https://github.com/new
echo.
echo 2. 🏷️ 仓库名称: digital-briefing
echo.
echo 3. 🔗 添加远程仓库:
echo    git remote add origin https://github.com/YOUR-USERNAME/digital-briefing.git
echo.
echo 4. 🚀 推送到 GitHub:
echo    git branch -M main
echo    git push -u origin main
echo.
echo 5. ⚙️  启用 GitHub Pages:
echo    仓库设置 → Pages → Source → GitHub Actions
echo.
echo 🌐 部署后访问地址:
echo    https://YOUR-USERNAME.github.io/digital-briefing
echo.
echo 📖 更多信息请查看 README.md
echo 🎉 祝你使用愉快！
echo.
pause