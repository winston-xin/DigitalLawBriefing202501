# 部署指南

## GitHub Pages 一键部署

本项目已配置 GitHub Pages 自动部署，支持一键发布到 GitHub Pages。

### 部署步骤

#### 1. 创建 GitHub 仓库

1. 登录 [GitHub](https://github.com)
2. 点击右上角的 "+" 按钮，选择 "New repository"
3. 仓库名称建议：`lnla-digital-policy-docs`
4. 选择 "Public"（公开仓库才能免费使用 GitHub Pages）
5. 点击 "Create repository"

#### 2. 推送代码到 GitHub

```bash
# 初始化 Git 仓库（如果还没有）
git init

# 添加远程仓库（替换为你的用户名）
git remote add origin https://github.com/YOUR-USERNAME/lnla-digital-policy-docs.git

# 添加所有文件
git add .

# 提交代码
git commit -m "Initial commit: 辽宁律协数字委政策文档库"

# 推送到 GitHub
git branch -M main
git push -u origin main
```

#### 3. 启用 GitHub Pages

1. 进入仓库页面
2. 点击 "Settings" 标签
3. 在左侧菜单中找到 "Pages"
4. 在 "Source" 部分选择 "GitHub Actions"
5. 系统会自动检测到 `.github/workflows/deploy.yml` 文件

#### 4. 自动部署

推送代码后，GitHub Actions 会自动运行：

1. 进入 "Actions" 标签页查看部署进度
2. 部署完成后，网站会自动发布到：
   `https://YOUR-USERNAME.github.io/lnla-digital-policy-docs`

#### 5. 自定义域名（可选）

如果需要使用自定义域名：

1. 在仓库的 "Settings" → "Pages" 中
2. 在 "Custom domain" 中输入你的域名
3. 在域名提供商处添加 CNAME 记录：
   - 主机记录：`www`
   - 记录值：`YOUR-USERNAME.github.io`
4. 在项目根目录创建 `CNAME` 文件，内容为你的域名

## 本地部署

### 使用 Python

```bash
# Python 3
python -m http.server 8080

# Python 2
python -SimpleHTTPServer 8080
```

### 使用 Node.js

```bash
# 安装 http-server
npm install -g http-server

# 启动服务器
http-server -p 8080
```

### 使用 PHP

```bash
php -S localhost:8080
```

### 使用其他静态网站服务

本项目是纯静态网站，可以部署到任何静态网站托管服务：

- **Netlify**: 拖拽文件夹即可部署
- **Vercel**: 连接 GitHub 仓库自动部署
- **Firebase Hosting**: 使用 Firebase CLI 部署
- **阿里云OSS**: 配置静态网站托管
- **腾讯云COS**: 开启静态网站功能

## 更新网站

更新内容后，只需要：

```bash
git add .
git commit -m "更新文档内容"
git push origin main
```

GitHub Actions 会自动重新部署网站。

## 故障排除

### 部署失败

1. 检查 Actions 页面的错误日志
2. 确认仓库是公开的
3. 检查 `.github/workflows/deploy.yml` 文件语法

### 样式异常

1. 确认 `styles.css` 文件存在
2. 检查文件路径是否正确
3. 清除浏览器缓存

### 页面无法访问

1. 等待几分钟让 GitHub Pages 完成初始化
2. 检查仓库名称和设置
3. 确认分支名称为 `main`

---

如有问题，请查看 [GitHub Pages 官方文档](https://docs.github.com/en/pages)。