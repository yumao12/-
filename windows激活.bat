@echo off
setlocal

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo �������ԱȨ��...
    powershell -Command "Start-Process cmd -ArgumentList '/c cd /d ""%~dp0"" && ""%~nx0""' -Verb RunAs"
    exit /b
)

echo ����ִ������...
powershell -Command "irm https://get.activated.win | iex"

echo ����ִ����ɣ����ڼ����ر�...
timeout /t 2 >nul
exit