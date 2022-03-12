@echo off
:y
cls
color e
title Videa alpha 1.0
echo Zadejte "S" pro vytvareni slozek, zadejte "P" pro presun souboru...
set /p vyber=
cls
if %vyber% == p goto p
if %vyber% == P goto p
if %vyber% == s goto s
if %vyber% == S goto s
echo error & pause & exit

:s
set /p cesta=Zadejte absolutni cestu k hlavni slozce: 
if not exist %cesta% echo error & pause & exit

set /p cil=Zadejte absolutni cestu k cilove slozce : 
if not exist %cil% echo error & pause & exit

echo Probiha zpracovani...
forfiles /p "%cesta%" /c "cmd /c if @isdir==TRUE md %cil%\@file"

echo.
color 2
echo Hotovo
pause
exit


:p
set /p cil=Zadejte absolutni cestu k cilove slozce se soubory: 
if not exist %cil% echo error & pause & exit

set /p cesta=Zadejte absolutni cestu k originalni slozce: 
if not exist %cesta% echo error & pause & exit

set /p nazev=Zadejte nazev samotne slozky bez mezer: 
if not exist %cil%\%nazev% echo error & pause & exit

set /p disk=Zadejte nazev disku s originalni slozkou: 
if not exist %disk%: echo error & pause & exit

cd %cesta%
%disk%:
echo.
echo Probiha zpracovani...
forfiles /m *.mpg /c "cmd /c move %cil%\@fname.mp4 %cil%\%nazev%\@fname.mp4" > nul

echo.
color 2
echo Hotovo
set /p otazka=Chcete pokracovat? (Y/N): 
if %otazka% == y goto y
if %otazka% == Y goto y
pause
exit