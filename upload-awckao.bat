@echo off
chcp 65001 >nul
cd /d "%~dp0"
title Huaxia Civilization Upload (awckao)

REM Auto-detect Git location
set "GIT_CMD=git"
git --version >nul 2>&1
if errorlevel 1 (
    if exist "C:\Program Files\Git\bin\git.exe" (
        set "GIT_CMD=C:\Program Files\Git\bin\git.exe"
    ) else if exist "C:\Program Files (x86)\Git\bin\git.exe" (
        set "GIT_CMD=C:\Program Files (x86)\Git\bin\git.exe"
    ) else if exist "%LOCALAPPDATA%\Programs\Git\bin\git.exe" (
        set "GIT_CMD=%LOCALAPPDATA%\Programs\Git\bin\git.exe"
    )
)

echo.
echo ========================================
echo   Huaxia Civilization Rise
echo   Upload to GitHub - awckao
echo ========================================
echo.
echo Working directory: %cd%
echo.

REM Check Git
echo [1/6] Checking Git...
"%GIT_CMD%" --version >nul 2>&1
if errorlevel 1 (
    echo.
    echo [ERROR] Git not found!
    echo.
    echo Please install Git first:
    echo   https://git-scm.com/download/win
    echo.
    echo After installation, restart and try again.
    echo.
    pause
    exit /b 1
)
for /f "tokens=3" %%v in ('"%GIT_CMD%" --version') do set gitver=%%v
echo [OK] Git version: %gitver%
echo.

REM Check project files
echo [2/6] Checking project files...
if not exist "index.html" (
    echo [ERROR] index.html not found!
    echo.
    echo Make sure you run this from the project folder.
    echo.
    pause
    exit /b 1
)
echo [OK] Project files found
echo.

REM Check if repo exists
if exist ".git" (
    echo [INFO] Repository already initialized
    echo.
    goto update
) else (
    echo [INFO] First time setup
    echo.
    goto firstrun
)

:firstrun
echo ========================================
echo   First Time Upload
echo ========================================
echo.
echo GitHub Username : awckao
echo Repository Name : huaxia-civilization
echo.

set "email="
set /p email=Enter GitHub email (optional, press Enter to skip): 

if not "%email%"=="" (
    echo.
    echo Configuring git user...
    "%GIT_CMD%" config user.name "awckao"
    "%GIT_CMD%" config user.email "%email%"
    if errorlevel 1 (
        echo [ERROR] Failed to configure git user!
        pause
        exit /b 1
    )
    echo [OK] Git user configured
)

echo.
echo [Step 1/5] Initializing Git repository...
"%GIT_CMD%" init
if errorlevel 1 (
    echo [ERROR] git init failed!
    pause
    exit /b 1
)
"%GIT_CMD%" branch -M main >nul 2>&1
echo [OK] Repository initialized (main branch)

echo.
echo [Step 2/5] Adding files...
"%GIT_CMD%" add .
echo [OK] Files staged

echo.
echo [Step 3/5] Committing...
"%GIT_CMD%" commit -m "Initial commit: Huaxia Civilization Rise v0.4.0"
if errorlevel 1 (
    echo [ERROR] git commit failed!
    echo.
    echo Possible causes:
    echo   - No files to commit
    echo   - Git user not configured
    echo.
    pause
    exit /b 1
)
echo [OK] Committed

echo.
echo [Step 4/5] Adding remote origin...
"%GIT_CMD%" remote add origin https://github.com/awckao/huaxia-civilization.git
if errorlevel 1 (
    echo [WARNING] Remote may already exist, updating...
    "%GIT_CMD%" remote set-url origin https://github.com/awckao/huaxia-civilization.git
)
echo [OK] Remote set: https://github.com/awckao/huaxia-civilization.git

echo.
echo [Step 5/5] Pushing to GitHub...
echo.
echo IMPORTANT: You will be prompted for GitHub credentials.
echo   - Username: awckao
echo   - Password: use a Personal Access Token (NOT your password!)
echo.
echo   Create token: https://github.com/settings/tokens
echo   Select scopes: repo, workflow
echo.
pause

"%GIT_CMD%" push -u origin main
if errorlevel 1 (
    echo.
    echo [ERROR] Push failed!
    echo.
    echo Common solutions:
    echo   1. Create the repo on GitHub first:
    echo      https://github.com/new
    echo      Name: huaxia-civilization (do NOT add README)
    echo.
    echo   2. Use a Personal Access Token as password
    echo      https://github.com/settings/tokens
    echo.
    echo   3. Check your internet connection
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo   Upload Complete!
echo ========================================
echo.
echo Repo URL:   https://github.com/awckao/huaxia-civilization
echo Live Demo:  https://awckao.github.io/huaxia-civilization/
echo.
echo Next step: Enable GitHub Pages
echo   1. Go to repo Settings - Pages
echo   2. Source: Deploy from a branch
echo   3. Branch: main / root
echo   4. Save
echo.
pause
exit /b 0

:update
echo ========================================
echo   Update Repository
echo ========================================
echo.

set "msg="
set /p msg=Enter commit message (default: update): 

if "%msg%"=="" set msg=update

echo.
echo [Step 1/3] Adding files...
"%GIT_CMD%" add .
echo [OK] Files staged

echo.
echo [Step 2/3] Committing...
"%GIT_CMD%" commit -m "%msg%"
if errorlevel 1 (
    echo [INFO] Nothing to commit (no changes)
    echo.
    pause
    exit /b 0
)
echo [OK] Committed

echo.
echo [Step 3/3] Pushing...
"%GIT_CMD%" push
if errorlevel 1 (
    echo.
    echo [ERROR] Push failed!
    echo.
    echo Check internet connection and credentials.
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo   Push Complete!
echo ========================================
echo.
echo Repo: https://github.com/awckao/huaxia-civilization
echo.
pause
exit /b 0