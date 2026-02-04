@echo off
REM 部署批处理文件 - 用于将网站上传到GitHub Pages

REM 检查是否已安装git
git --version >nul 2>&1
if errorlevel 1 (
    echo 错误: 未找到git，请先安装git
    exit /b 1
)

REM 获取当前时间戳
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
set "timestamp=%YYYY%-%MM%-%DD% %HH%:%Min%:%Sec%"

REM 提交更改
echo 正在提交本地更改...
git add .
git commit -m "feat: 优化网站样式和功能 %timestamp%"

REM 推送到GitHub
echo 正在推送到GitHub...
git push origin main

REM 如果这是第一次推送，可能需要设置上游分支
if %errorlevel% neq 0 (
    git push --set-upstream origin main
)

echo 部署完成！
pause