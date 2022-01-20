@echo off
if exist C:\FFWork echo Error!! Slozka jiz existuje! & pause & exit
if exist 1 goto a
if exist 2 goto a
if exist 3 goto a
echo =========================================
echo Error!! Nebyly nalezeny spravne slozky!
echo =========================================
pause
exit
:a
echo Napiste 1 pro start programu
set /p start=
if %start%==1 goto s
pause & exit
:s
mkdir C:\FFWork
cd 1
echo Probiha kopirovani...
forfiles /s /c "cmd /c copy @file C:\FFWork"
cd..
cd 2
echo Probiha porovnavani...
forfiles /s /c "cmd /c if exist C:\FFWork\@file del C:\FFWork\@file"
::FFWork obsahuje to, co je v 1 a není v 2
cd..
cd 3
echo Probiha presouvani...
move C:\FFWork\*
rmdir C:\FFWork
cls
echo ===============================================================================
echo Ve slozce 3 naleznete soubory, ktere jsou ve slozce 1, ale nejsou ve slozce 2
echo ===============================================================================
pause
exit
