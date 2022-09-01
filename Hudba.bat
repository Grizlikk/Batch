@echo off
color b
title Hudba
setlocal enabledelayedexpansion

rem Začátek programu
set /p slozka=Zadejte cislo posledni slozky: 

rem Úprava formátu dat
if %slozka:~0,1% == 0 (set /a cislo=%slozka:~1,2%) else (set /a cislo=%slozka%)
if %cislo% lss 100 if 0%cislo% neq %slozka% echo Error %cislo% & pause & exit

rem Pokud neexistuje soubor Hudba.txt, program ho vytvoří
if not exist temp (
    dir /b %slozka%* > temp
    set /p nazev=< temp
    del temp
) else (echo Temp Error & pause & exit)

if not exist "%nazev%\%slozka%Hudba.txt" (
    cd "%nazev%"
    echo ---%nazev%--- > %slozka%Hudba.txt
    echo. >> %slozka%Hudba.txt
    cd..
)

rem Ukládání názvů souborů
for /l %%i in (0, 1, 5) do (call :f %%i)

rem Spouštění souborů
for /l %%i in (5, -1, 0) do (forfiles /m !c%%i!Hudba.txt /s /c "cmd /c start @file @file")
exit

:f
set /a p=%cislo%-%~1
set c%~1=0%p%
goto :eof