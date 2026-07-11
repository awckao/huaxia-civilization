@echo off
chcp 65001 >nul
title Huaxia Civilization - GitHub Upload Script

echo.
echo ========================================
echo   Huaxia: Civilization Rise - GitHub Upload
echo ========================================
echo.

REM Check Git
git --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Git not found!
    echo.
    echo Please install Git first: https://git-scm.com/download/win
    echo.
    pause
    exit /b 1
)

echo [OK] Git detected
echo.

REM Check if already initialized
if exist .git (
    echo [INFO] Repository already initialized
    echo.
    set /p msg=Enter commit message: 
    git add .
    git commit -m "%msg%"
    git push
    echo.
    echo [DONE] Code pushed to GitHub!
    echo.
    pause
    exit /b 0
)

REM First time setup
echo === First Time Setup ===
echo.
set /p username=Enter your GitHub username: 
set /p repo=Enter repo name (default: huaxia-civilization): 
if "%repo%"=="" set repo=huaxia-civilization

echo.
set /p email=Enter your GitHub email (optional): 
if not "%email%"=="" (
    git config user.name "%username%"
    git config user.email "%email%"
)

echo.
echo [1/4] Initializing Git repository...
git init
git branch -M main

echo [2/4] Adding files...
git add .

echo [3/4] Committing...
git commit -m "Initial commit: Huaxia Civilization v0.4.0"

echo [4/4] Pushing to GitHub...
git remote add origin https://github.com/%username%/%repo%.git
git push -u origin main

echo.
echo ========================================
echo   Upload Complete!
echo ========================================
echo.
echo Repo URL: https://github.com/%username%/%repo%
echo Live Demo: https://%username%.github.io/%repo%/
echo.
echo Tip: Enable GitHub Pages in repo settings
echo      Settings - Pages - Source: main / root
echo.
pause
