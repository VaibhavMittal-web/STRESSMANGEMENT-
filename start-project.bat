@echo off
title Launching CalmConverse EmpowerMind (Auto Start)
echo ========================================
echo   CalmConverse EmpowerMind Auto Starter
echo ========================================
echo.

REM Navigate to the project directory
cd /d "%~dp0calmconverse-empowermind-main"

REM Use npm.cmd to bypass PowerShell execution restrictions
echo Installing dependencies...
call npm.cmd install

REM Start the Vite dev server in a new terminal
echo Starting the development server...
start cmd /k "call npm.cmd run dev"

REM Wait for server to start and open browser
timeout /t 5 > nul
start http://localhost:5173/

pause
