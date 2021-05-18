@echo off
set /p "DOT_MINECRAFT=Enter the path of the .minecraft folder (%APPDATA%\.minecraft): " || set WORLD_NAME=%APPDATA%\.minecraft

xcopy /s /i /q standard_weapons_datapack "%DOT_MINECRAFT%\resourcepacks\daronok_weapon_pack"
