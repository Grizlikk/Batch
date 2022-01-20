@echo off
if not exist c:\users\%username%\desktop\attack exit
color 64
echo Zadejte pocet spusteni viru
set /p a=   Pocet: 
cls
timeout /t 1 > nul
set /a b=0
:b
if %a%==%b% exit
start c:\users\%username%\desktop\attack\%b%.exe
set /a b=%b%+1
goto b