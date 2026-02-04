# 实用工具与技巧分享网站

这个网站已经过优化，具有改进的样式、响应式设计和内容结构。

## 部署到GitHub Pages

要将此网站部署到GitHub Pages，请按照以下步骤操作：

1. 在GitHub上创建一个新的仓库，名称为 `practical-tools-tips`
2. 将您的GitHub用户名设置为环境变量
3. 运行部署脚本：

```bash
./deploy_to_github.sh <your-github-username>
```

或者直接运行：

```bash
chmod +x deploy_to_github.sh
./deploy_to_github.sh <your-github-username>
```

4. 访问 `https://<your-github-username>.github.io/practical-tools-tips` 查看您的网站

## 本地查看

您可以使用Python内置服务器在本地预览网站：

```bash
python -m http.server 8000
```

然后在浏览器中访问 `http://localhost:8000`