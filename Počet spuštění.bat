@echo off
rem Pokud soubor.soubor neexistuje, tak se program spouští poprvé
if not exist soubor.soubor echo 0 > soubor.soubor
rem Načtení počtu spuštění ze souboru
set /p pocet=<soubor.soubor
rem Přidání jednoho spuštění
set /a plusjedna = %pocet%+1
echo %plusjedna% > soubor.soubor
rem Výpis počtu spuštění
echo Soubor byl spusten po %plusjedna%.
pause