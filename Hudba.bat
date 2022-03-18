@echo off
color b
title Hudba

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
)
if not exist "%nazev%\%slozka%Hudba.txt" (
    cd "%nazev%"
    echo ---%nazev%--- > %slozka%Hudba.txt
    echo. >> %slozka%Hudba.txt
    cd..
)

rem Ukládání názvů souborů
for /l %%i in (0, 1, 5) do (call :f %%i)

rem Spouštění souborů
    forfiles /m %c5%Hudba.txt /s /c "cmd /c start @file @file"
    forfiles /m %c4%Hudba.txt /s /c "cmd /c start @file @file"
    forfiles /m %c3%Hudba.txt /s /c "cmd /c start @file @file"
    forfiles /m %c2%Hudba.txt /s /c "cmd /c start @file @file"
    forfiles /m %c1%Hudba.txt /s /c "cmd /c start @file @file"
    forfiles /m %c0%Hudba.txt /s /c "cmd /c start @file @file"
exit

:f
set /a p=%cislo%-%~1
set c%~1=0%p%
goto :eof