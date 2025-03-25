@echo off
set "RED=0C"
set "GREEN=0A"

where git >nul 2>&1
if errorlevel 1 (
    color %RED%
    echo Git is not available. Please install Git and try again.
    pause
    exit /b 1
)

if not exist "tools\python\python.exe" (
    color %RED%
    echo python\python.exe not found. Please ensure it exists in the current directory.
    pause
    exit /b 1
)

git config core.hooksPath .githooks-win

color %GREEN%
echo Git hooks path successfully configured to .githooks-win
pause
exit /b 0
