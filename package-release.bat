@echo off
title Package Script
echo Packaging release package...

if not exist release mkdir release

xcopy /E /I /Y src release\src >nul
xcopy /E /I /Y docs release\docs >nul
xcopy /E /I /Y assets release\assets >nul
copy index.html release\index.html >nul
copy README.md release\README.md >nul
copy LICENSE release\LICENSE >nul
copy .gitignore release\.gitignore >nul
copy upload-to-github.bat release\upload-to-github.bat >nul

echo.
echo Package complete!
echo Output: release\
pause
