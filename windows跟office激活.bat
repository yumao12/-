@echo off
setlocal

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo 请求管理员权限...
    powershell -Command "Start-Process cmd -ArgumentList '/c cd /d ""%~dp0"" && ""%~nx0""' -Verb RunAs"
    exit /b
)

echo 正在执行命令...
powershell -Command "irm https://get.activated.win | iex"

echo 命令执行完成，窗口即将关闭...
timeout /t 2 >nul
exit
