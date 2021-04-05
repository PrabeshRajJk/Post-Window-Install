REM this exports all the saved wifi pasword to the folder
Rem folder location must be already present 

@break off
@title Create folder with batch but only if it doesn't already exist
@color 0a


setlocal EnableDelayedExpansion

if not exist "%~dp0\Wifi_Profile\" (
  mkdir "%~dp0\Wifi_Profile\"
  if "!errorlevel!" EQU "0" (
    echo Folder created successfully
  ) else (
    echo Error while creating folder
  )
) else (
  echo Folder already exists
)

netsh wlan export profile folder=%~dp0\Wifi_Profile\ key=clear

cmd /k

REM cmd /k is to prevent self close
