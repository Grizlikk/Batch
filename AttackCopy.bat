@echo off
mkdir c:\users\%username%\desktop\attack
color 4f
cls
echo Zadejte Zkopirovani viru
set /a a=0
set /p soubory=   Pocet: 
color
cls
:e
if %a% == %soubory% goto end
copy c:\000.exe c:\users\%username%\desktop\attack\%a%.exe
set /a a=%a%+1
color 2
if %a% == %soubory% goto end
copy c:\mrsmajor.exe c:\users\%username%\desktop\attack\%a%.exe
set /a a=%a%+1
color 6
if %a% == %soubory% goto end
copy c:\noescape.exe c:\users\%username%\desktop\attack\%a%.exe
set /a a=%a%+1
color 4
goto e
:end
exit