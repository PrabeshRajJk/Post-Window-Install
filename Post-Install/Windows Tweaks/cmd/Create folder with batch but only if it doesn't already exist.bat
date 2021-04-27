@break off
@title Create folder with batch but only if it doesn't already exist
@color 0a


setlocal EnableDelayedExpansion

if not exist "%~dp0\FOLDERNAME\" (
  mkdir "%~dp0\FOLDERNAME\"
  if "!errorlevel!" EQU "0" (
    echo Folder created successfully
  ) else (
    echo Error while creating folder
  )
) else (
  echo Folder already exists
)

