#!/bin/bash

# 部署脚本 - 将网站部署到GitHub

echo "正在准备部署网站..."
echo

# 检查是否已安装git
if ! command -v git &> /dev/null; then
    echo "错误: 未找到git。请先安装git。"
    exit 1
fi

# 检查当前目录是否为git仓库
if [ ! -d ".git" ]; then
    echo "初始化git仓库..."
    git init
    git add .
    git commit -m "Initial commit: Optimized practical tips website"
fi

echo
echo "请按照以下步骤完成部署："
echo "1. 创建一个新的GitHub仓库 (例如：my-practical-tips)"
echo "2. 将下面的命令复制到终端中执行："
echo
echo "   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPOSITORY_NAME.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo
echo "3. 在GitHub上启用Pages功能"
echo
echo "更多详情请参阅 DEPLOY.md 文件"
echo