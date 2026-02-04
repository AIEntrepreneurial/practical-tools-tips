#!/bin/bash
# 部署静态网站到GitHub Pages的脚本

# 检查是否提供了GitHub用户名
if [ -z "$1" ]; then
    echo "用法: $0 <your-github-username>"
    exit 1
fi

USERNAME=$1
REPO_NAME="practical-tools-tips"

# 检查是否已经配置了git
if [ ! -d .git ]; then
    echo "初始化Git仓库..."
    git init
    git add .
    git config --global user.email "openhack@example.com"
    git config --global user.name "openhack"
    git commit -m "Initial commit: Optimized website with improved styling and responsiveness"
fi

echo "配置远程仓库..."
git remote add origin https://github.com/$USERNAME/$REPO_NAME.git

echo "推送到GitHub..."
git branch -M main
git push -u origin main

echo "部署完成！"
echo "您的网站将在 https://$USERNAME.github.io/$REPO_NAME 访问"