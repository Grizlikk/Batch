@echo off
color 6
echo Tento program slouzi k prejmenovani polozek s automatickym nazvem na nazvy 1, 2, 3, ...
echo Prejmenujte prosim vsechny polozky, ktere chcete seradit na nazev "a" (napr. a (1).txt, a (2).txt, (3).txt)
echo Tento program pote prejmenuje tyto polozky na nazvy podle cisel (napr. 1.txt, 2.txt, 3.txt)
echo.
pause
cls

if not exist "a (1).*" (echo ERROR! Pozadovane soubory nebyly nalezeny
    echo.
    pause
    exit)

::Potvrzeni o startu programu
echo Chcete zacit soubory prejmenovavat? (Y/N)
set /p start=
if %start% == Y goto next
if %start% == y goto next
exit
:next

set /a i = 1
set /a vypis = 2
set /a vypis_pocet = 1
:a
if not exist "a (%i%).*" goto end
::Soubor "a (%i%).přípona" to přejmenuje na "%i%.přípona"
forfiles /m "a (%i%).*" /c "cmd /c move @file %i%.@ext" > nul
set /a i = %i%+1

::Výpis textu "Probíhá prejmenovani..."
if %i% == %vypis% (cls
    if %vypis_pocet% == 1 cls & echo Probiha prejmenovani      & set /a vypis_pocet = 2
    if %vypis_pocet% == 2 cls & echo Probiha prejmenovani.     & set /a vypis_pocet = 3
    if %vypis_pocet% == 3 cls & echo Probiha prejmenovani..    & set /a vypis_pocet = 4
    if %vypis_pocet% == 4 cls & echo Probiha prejmenovani...   & set /a vypis_pocet = 1
    set /a vypis = %vypis%+50
)
goto a

:end
::Po dokončení programu to zkontroluje ještě 5 následujících položek
set /a i = %i%+1
if exist "a (%i%).*" set /a vypis = %vypis%+1 & goto a
set /a i = %i%+1
if exist "a (%i%).*" set /a vypis = %vypis%+1 & goto a
set /a i = %i%+1
if exist "a (%i%).*" set /a vypis = %vypis%+1 & goto a
set /a i = %i%+1
if exist "a (%i%).*" set /a vypis = %vypis%+1 & goto a
set /a i = %i%+1
if exist "a (%i%).*" set /a vypis = %vypis%+1 & goto a

cls
echo Prejmenovani bylo dokonceno, nyni muzete program ukoncit
echo.
pause
exit