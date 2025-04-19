@echo off

rem Exit script if not Admin
openfiles > NUL 2>&1
if NOT %ERRORLEVEL% EQU 0 goto NotAdmin

rem Preparation
echo Start Installation
set current_dir=%~dp0

rem Install AutoHotKey
for %%f in (%current_dir%\config\autohotkey\*) do (
    mklink "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\%%~nxf" %current_dir%\config\autohotkey\%%~nxf
)

goto End

:NotAdmin
echo Run this script with Administer rights

:End

echo.
pause