@echo off
title Random Alpha 1.1
color 6
echo Tento program otestuje, jestli prikaz random dovede opravdu vygenerovat vsechny cisla od 0 az do 32 768
echo.
pause

cls
set /p i=Zvolte hodnotu, od ktere ma zacit testovani: 
if %i% lss 0 echo Neplatna hodnota! & pause & exit
if %i% gtr 32769 echo Neplatna hodnota! & pause & exit
cls

:a
if %random% == %i% (echo %i%
    set /a i = %i% + 1)
if %i% == 32769 goto end
goto a

:end
echo.
echo.
echo Program dosel az k cislu 32 768, takze prikaz random funguje spravne
echo.
pause
exit