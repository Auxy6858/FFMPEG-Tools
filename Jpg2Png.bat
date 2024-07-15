@echo off
if "%~1" == "" (
	echo Please drop a file onto this batch script.
	pause
	exit /b
)

set "file=%~1"
set "ext=%~x1"

if /I "%ext%" == ".jpg"  (
	ffmpeg -i "%file%" "%~n1.png"
) else if /I "%ext%" == ".jpeg"  (
	ffmpeg -i "%file%" "%~n1.png"
) else (
	echo The file is not an Jpg or Jpeg file
)

pause