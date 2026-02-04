# 部署指南

## 部署到 GitHub Pages

### 第一步：初始化 Git 仓库

如果您还没有初始化 Git 仓库，请执行以下命令：

```bash
cd my-website
git init
git remote add origin https://github.com/[YOUR_USERNAME]/[YOUR_REPOSITORY].git
```

### 第二步：配置 GitHub Pages

1. 在 GitHub 上创建一个新的仓库
2. 将本地代码推送到该仓库
3. 在仓库设置中启用 GitHub Pages：
   - 进入 Settings > Pages
   - 选择源码分支（通常是 main 或 master）
   - 选择根目录 (/root) 作为源

### 第三步：部署代码

#### Windows 用户
双击运行 `deploy.bat` 文件

#### macOS/Linux 用户
运行以下命令：
```bash
chmod +x deploy.sh
./deploy.sh
```

### 第四步：验证部署

访问 `https://[YOUR_USERNAME].github.io/[YOUR_REPOSITORY]` 查看网站

## 自动化部署

此项目已配置为使用 GitHub Actions 自动部署：

1. 创建 `.github/workflows/deploy.yml` 文件
2. 配置自动构建和部署流程
3. 每次推送代码时会自动部署

## 手动部署

如果需要手动部署，只需运行：

```bash
npm run build  # 构建项目（如果有构建步骤）
git add .
git commit -m "Deploy updates"
git push origin main
```

## 注意事项

- 确保您的 GitHub 仓库设置为公开（如果是个人网站）
- 检查 `_config.yml` 中的设置是否正确
- 验证所有链接在部署后仍然有效
- 测试响应式设计在不同设备上的显示效果