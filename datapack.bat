@echo off
set /p "DOT_MINECRAFT=Enter the path of the .minecraft folder (%APPDATA%\.minecraft): " || set WORLD_NAME=%APPDATA%\.minecraft
set /p "WORLD_NAME=Enter the name of the minecraft world: " || set DOT_MINECRAFT=%APPDATA%\.minecraft

if not exist "%DOT_MINECRAFT%\saves\%WORLD_NAME%" goto ERROR

xcopy /s /i /q standard_weapons_datapack "%DOT_MINECRAFT%\saves\%WORLD_NAME%\datapacks\standard_weapons_datapack"
exit /b

:ERROR
echo World could not be found
