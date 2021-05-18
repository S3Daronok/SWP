@echo off
set /p "DOT_MINECRAFT=Enter the path of the .minecraft folder (%APPDATA%\.minecraft): " || set DOT_MINECRAFT=%APPDATA%\.minecraft

xcopy /s /i /q standard_weapon_datapack "%DOT_MINECRAFT%\resourcepacks\standard_weapon_ressourcepack"
pause
