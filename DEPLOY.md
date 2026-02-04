# 部署说明

要将此网站部署到GitHub Pages，请按照以下步骤操作：

## 方法一：手动部署到GitHub Pages

1. 创建一个新的GitHub仓库（例如：`my-practical-tips`）
2. 在本地终端中运行以下命令：

```bash
cd my-website
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPOSITORY_NAME.git
git branch -M main
git push -u origin main
```

3. 在GitHub仓库中启用GitHub Pages：
   - 进入仓库的Settings选项卡
   - 找到Pages部分
   - 选择源为 "Deploy from a branch"
   - 选择分支 "main" 和文件夹 "/root"
   - 点击Save保存

## 方法二：使用GitHub Actions自动部署

本项目已包含GitHub Actions部署工作流文件，位于 `.github/workflows/deploy.yml`。

要使用此功能：
1. 将代码推送到GitHub仓库
2. 在仓库的Settings > Secrets and variables > Actions中添加以下变量（如果需要）：
   - `GITHUB_TOKEN` (通常已自动提供)

工作流将在每次推送到main分支时自动部署到GitHub Pages。

## 验证部署

部署完成后，您的网站将在以下地址可用：
`https://YOUR_USERNAME.github.io/YOUR_REPOSITORY_NAME/`

## 自定义域名（可选）

如果您有自己的域名，可以在仓库的Settings > Pages部分设置自定义域名。