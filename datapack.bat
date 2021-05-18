@echo off
set /p "DOT_MINECRAFT=Enter the path of the .minecraft folder (%APPDATA%\.minecraft): " || set DOT_MINECRAFT=%APPDATA%\.minecraft
set /p "WORLD_NAME=Enter the name of the minecraft world: "

if not exist "%DOT_MINECRAFT%\saves\%WORLD_NAME%" goto ERROR

xcopy /s /i /q standard_weapon_datapack "%DOT_MINECRAFT%\saves\%WORLD_NAME%\datapacks\standard_weapon_datapack"
pause
exit /b

:ERROR
echo World could not be found
pause