@echo off
cls

REM Base de Dados

set AutoMoniVer=1.0.2.0
mkdir C:\MonitorRC\logs
mkdir C:\MonitorRC\logs\SalesForce
mkdir C:\MonitorRC\logs\Five9
mkdir C:\MonitorRC\Config

set SiteMonitor=app.five9.com
set SiteNome=Five9
set DATAHOJE=%DATE:~0,2%%DATE:~3,2%%DATE:~6,4%

cls
:MONITOR
cls
color 0a
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo.
echo      :::     :::    ::: :::::::::::  ::::::::      ::::    ::::   ::::::::  ::::    ::: :::::::::::
echo    :+: :+:   :+:    :+:     :+:     :+:    :+:     +:+:+: :+:+:+ :+:    :+: :+:+:   :+:     :+:    
echo   +:+   +:+  +:+    +:+     +:+     +:+    +:+     +:+ +:+:+ +:+ +:+    +:+ :+:+:+  +:+     +:+   
echo  +#++:++#++: +#+    +:+     +#+     +#+    +:+     +#+  +:+  +#+ +#+    +:+ +#+ +:+ +#+     +#+    
echo  +#+     +#+ +#+    +#+     +#+     +#+    +#+     +#+       +#+ +#+    +#+ +#+  +#+#+#     +#+   
echo  #+#     #+# #+#    #+#     #+#     #+#    #+#     #+#       #+# #+#    #+# #+#   #+#+#     #+#    
echo  ###     ###  ########      ###      ########      ###       ###  ########  ###    #### ########### 
echo.
echo.
echo       Site Monitorado: %SiteNome%
echo       URL: %SiteMonitor%
echo.
echo       Versao %AutoMoniVer%
echo.
echo       Caso queira cancelar, utilize "Ctrl + C"
echo.
echo       Desenvolvido por PEDRO AUGUSTO    
echo.   
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

:MONITOR-Loop
ping %SiteMonitor% -n 1 | find "TTL=" >nul
if errorlevel 1 (
    GOTO MONITORERRO
) else (
    GOTO :MONITOR-Loop
)
GOTO :MONITOR-Loop

:MONITORERRO
cls
color CF
echo.
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo.
echo  :::::::::: :::::::::  :::::::::   ::::::::  
echo  :+:        :+:    :+: :+:    :+: :+:    :+: 
echo  +:+        +:+    +:+ +:+    +:+ +:+    +:+ 
echo  +#++:++#   +#++:++#:  +#++:++#:  +#+    +:+ 
echo  +#+        +#+    +#+ +#+    +#+ +#+    +#+ 
echo  #+#        #+#    #+# #+#    #+# #+#    #+# 
echo  ########## ###    ### ###    ###  ########  
echo.
Echo  X - Ocorreu uma perda de comunicacao - X
echo.
echo  Site Monitorado: %SiteNome%
echo  URL Monitorada: %SiteMonitor%
echo  Momento do Erro: %date% %time:~0,2%:%time:~3,2%:%time:~6,2%
echo.
echo  Foi Feito Registro Nos Logs
echo.
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo.
echo REGISTRO DE ERRO: VERSÃO DO AUTOMONIRC:%AutoMoniVer%  SITE: %SiteNome% - URL: Monitorada %SiteMonitor% - DATA E HORA DO ERRO: %date% %time:~0,2%:%time:~3,2%:%time:~6,2% >> C:\MonitorRC\logs\%SiteNome%\%DATAHOJE%_%SiteNome%.txt
timeout 10 && GOTO :MONITOR
GOTO :MONITOR