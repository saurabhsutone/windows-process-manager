@echo off
title Process Management Tool
color 0A

:MENU
cls
echo ======================================
echo       PROCESS MANAGEMENT TOOL
echo ======================================
echo.
echo 1. Show Chrome Instances
echo 2. Kill All Chrome Instances
echo 3. Show Edge Instances
echo 4. Kill All Edge Instances
echo 5. Show Firefox Instances
echo 6. Kill All Firefox Instances
echo 7. Show All Running Processes
echo 8. Kill Process by Name
echo 9. Exit
echo.
set /p choice=Enter your choice:

if "%choice%"=="1" goto SHOW_CHROME
if "%choice%"=="2" goto KILL_CHROME
if "%choice%"=="3" goto SHOW_EDGE
if "%choice%"=="4" goto KILL_EDGE
if "%choice%"=="5" goto SHOW_FIREFOX
if "%choice%"=="6" goto KILL_FIREFOX
if "%choice%"=="7" goto SHOW_ALL
if "%choice%"=="8" goto KILL_CUSTOM
if "%choice%"=="9" exit

goto MENU

:SHOW_CHROME
cls
echo Chrome Instances:
tasklist /FI "IMAGENAME eq chrome.exe"
echo.
tasklist /FI "IMAGENAME eq chrome.exe" | find /I /C "chrome.exe"
pause
goto MENU

:KILL_CHROME
taskkill /F /IM chrome.exe
echo Chrome processes terminated.
pause
goto MENU

:SHOW_EDGE
cls
echo Edge Instances:
tasklist /FI "IMAGENAME eq msedge.exe"
echo.
tasklist /FI "IMAGENAME eq msedge.exe" | find /I /C "msedge.exe"
pause
goto MENU

:KILL_EDGE
taskkill /F /IM msedge.exe
echo Edge processes terminated.
pause
goto MENU

:SHOW_FIREFOX
cls
echo Firefox Instances:
tasklist /FI "IMAGENAME eq firefox.exe"
echo.
tasklist /FI "IMAGENAME eq firefox.exe" | find /I /C "firefox.exe"
pause
goto MENU

:KILL_FIREFOX
taskkill /F /IM firefox.exe
echo Firefox processes terminated.
pause
goto MENU

:SHOW_ALL
tasklist
pause
goto MENU

:KILL_CUSTOM
cls
set /p pname=Enter process name (Example: notepad.exe):
taskkill /F /IM %pname%
pause
goto MENU
