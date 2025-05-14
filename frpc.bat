@echo off
rem ======================================================================
rem rem 
rem ======================================================================

set "frpcPath=C:\gj\guojam\is\handsome\2.0\Guojam-Is-Handsome-OS-V2.0-zip--4\frpc.exe"
set "configFile=C:\gj\guojam\is\handsome\2.0\Guojam-Is-Handsome-OS-V2.0-zip--4\frpc.ini"


if not exist %frpcPath% (
    echo 1：
    echo %frpcPath%
    pause
    exit /b 1
)

if not exist %configFile% (
    echo 1：
    echo %configFile%
    pause
    exit /b 1
)


echo Set WshShell = CreateObject("WScript.Shell") > "%temp%\hide_window.vbs"
echo WshShell.Run "%frpcPath% -c %configFile%", 0, False >> "%temp%\hide_window.vbs"
cscript //nologo "%temp%\hide_window.vbs" >nul 2>&1
del "%temp%\hide_window.vbs" /f /q

exit /b 0
