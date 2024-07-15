@echo off
if "%~1" == "" (
	echo Please drop a file onto this batch script.
	pause
	exit /b
)

set "file=%~1"
set "ext=%~x1"

if /I "%ext%" == ".mov" (
	ffmpeg -i "%file%" "%~n1.mp4"
) else (
	echo The file is not an MOV file
)

pause