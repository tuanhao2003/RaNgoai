@echo off
chcp 65001
color a
title Danh sách chủ đề
set dir=%~dp0
cd %dir%
cls
setlocal enabledelayedexpansion

echo Đang đọc file "%~1"
set "inputFile=%~1"
set "insideSection=0"

echo.
echo Các danh mục đang có trong file:

for /f "usebackq delims=" %%A in ("%inputFile%") do ( if  "%%A"=="#####" echo %%A )

endlocal
pause
exit
