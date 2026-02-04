@echo off
REM 用于本地预览网站的批处理脚本

echo 启动本地服务器以预览网站...
echo 请在浏览器中打开 http://localhost:8000

REM 检查是否有Python
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo 使用Python启动服务器...
    python -m http.server 8000
) else (
    echo 未找到Python。请安装Python以使用此功能。
    echo 或者您可以直接在浏览器中打开index.html文件。
    pause
)