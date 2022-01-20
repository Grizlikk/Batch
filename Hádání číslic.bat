@echo off
color e
echo ===============================================
echo             Hra o hadani cislic
echo ===============================================
echo.
echo.
echo Zmacknete jakoukoliv klavesu pro start
echo.
echo.
pause
:r
cls
set /a r=%random%/100
set /a r=%random%
set /a r=%random%/100
set /a r=%random%/1000
set /a r=%random%/10
set /a r=%random%/100
set /a r=%random%/100
set /a r=%random%/10
set /a r=%random%/9
set /a r=%random%/100
echo Nahodne cislo bylo vygererovano, zadejte svuj tip
set /a i=1
:e
set /p t= Vas tip: 
cls 
if %t% lss %r% echo Vice
if %t% gtr %r% echo Mene
if %t% == %r% goto win
set /a i=%i%+1
echo Zadejte dalsi cislo
goto e
:win
cls
color c
echo.
echo Gratuluji, tve cislo %t% je spravne!!!
echo Podarilo se ti jej uhadnout na %i% pokusu
echo.
echo.
echo.
echo Chcete spustit novou hru?
set /p reset= (A/N) 
if %reset% == a color e && goto r
if %reset% == A color e && goto r
exit