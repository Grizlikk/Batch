@echo off
color 6
title Zjisteni hesla na Wifi :D

set /p nazev=Zadejte nazev site: 
cls
echo.
netsh wlan show profile name = "%nazev%" key=clear | find "not found"
netsh wlan show profile name = "%nazev%" key=clear | find "Key Content"
echo.
pause > nul