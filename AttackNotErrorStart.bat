@echo off
if not exist c:\users\%username%\desktop\attack exit
color 21
echo Zadejte pocet spusteni viru
set /p a=   Pocet: 
cls
timeout /t 1 > nul
set /a b=0
cd c:\users\public
echo Probiha priprava...
:a
if %a%==%b% goto next
echo @echo off > start%b%.bat
echo if exist c:\users\%username%\desktop\attack\%b%.exe start c:\users\%username%\desktop\attack\%b%.exe >> start%b%.bat
echo exit >> start%b%.bat
set /a b=%b%+1
goto a

:next
cls
echo Priprava dokoncena, zmacknete jakoukoliv klavesu pro start
pause
cls
set /a b=0
color 64
:b
if %a%==%b% goto clean
start start%b%.bat
set /a b=%b%+1
goto b

:clean
set /a b=0
color 21
cls
echo Stisknete jakoukoliv klavesu pro konec programu
pause
:c
if %a%==%b% exit
del start%b%.bat
set /a b=%b%+1
goto c