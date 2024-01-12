@echo off
cls
set AutoMoniVer=1.0.2.0
mkdir C:\MonitorRC\logs
mkdir C:\MonitorRC\logs\SalesForce
mkdir C:\MonitorRC\logs\Five9
mkdir C:\MonitorRC\Config

echo START AUTOMONIRC - DATA: %date% Hora: %time:~0,2%:%time:~3,2%:%time:~6,2% - Versão: %AutoMoniVer% >> C:\MonitorRC\LogsAberturaMonitorRC.txt

move "%~dp0AutoMonitor-Part1.bat" "C:\MonitorRC\Config\AutoMonitor-Part1.bat"
move "%~dp0AutoMonitor-Part2.bat" "C:\MonitorRC\Config\AutoMonitor-Part2.bat"

set "source=%~dp0"
set "destination=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

copy "%source%\StartMonitor.bat" "%destination%"

start /MIN C:\MonitorRC\Config\AutoMonitor-Part1.bat
start /MIN C:\MonitorRC\Config\AutoMonitor-Part2.bat
