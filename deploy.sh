#!/bin/bash
# 部署脚本 - 用于将网站上传到GitHub Pages

# 检查是否已安装git
if ! [ -x "$(command -v git)" ]; then
  echo '错误: git 未安装.' >&2
  exit 1
fi

# 获取当前时间戳
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

# 提交更改
echo "正在提交本地更改..."
git add .
git commit -m " feat: 优化网站样式和功能 $TIMESTAMP"

# 推送到GitHub
echo "正在推送到GitHub..."
git push origin main

# 如果这是第一次推送，可能需要设置上游分支
if [ $? -ne 0 ]; then
    git push --set-upstream origin main
fi

echo "部署完成！"