@echo off
:: This batch file launches WinOptimizer.ps1 with the correct ExecutionPolicy
:: This prevents the file from opening in Notepad and runs it in PowerShell.
cd /d "%~dp0"
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "WinOptimizer.ps1"
pause
