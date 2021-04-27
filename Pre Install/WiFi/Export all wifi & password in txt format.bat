@echo off & setlocal enabledelayedexpansion
Title  Export WiFi Password
Mode con cols=70 lines=20
cls & color 0A & echo.
ECHO                  **************************************
echo                         WiFi Password Recovery
ECHO                  **************************************
echo.
if _%1_==_payload_  goto :payload

:getadmin
    echo                    %~nx0: elevating self
    set vbs=%temp%\getadmin.vbs
    echo Set UAC = CreateObject^("Shell.Application"^)                >> "%vbs%"
    echo UAC.ShellExecute "%~s0", "payload %~sdp0 %*", "", "runas", 1 >> "%vbs%"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
goto :eof

:payload
echo                        "SSID" ====^> "Password"
echo "SSID" ====^> "Password" > "%~dp0PassWifi.txt"
for /f "delims=: tokens=1,2" %%a in ('netsh wlan show profiles') do (
    if not "%%b"=="" (
        set ssid=%%b
        set ssid=!ssid:~1!
        call :getpass "!ssid!"
    )
)
del %temp%\tmp.txt
echo.
echo.
echo Done
If Exist "%~dp0PassWifi.txt" start "" "%~dp0PassWifi.txt"
pause>nul
exit /b

:getpass %1
set name=%1
set name=!name:"=!
netsh wlan show profiles %1 key=clear |find "Key Content" > %temp%\tmp.txt
for /f "delims=: tokens=1,2" %%a in (%temp%\tmp.txt) do set passwd=%%b
set passwd=!passwd:~1!
echo                 "!name!" ====^> "!passwd!"
echo "!name!" ====^> "!passwd!" >> "%~dp0PassWifi.txt"
exit /b


@EXIT
