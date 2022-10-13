@echo off
color e
title Instalator
net session
cls
if %errorlevel% neq 0 (echo Program je lepsi spustit s opravnenim spravce, pro lepsi vysledky program restartujte a nasledne spustte znovu s vyssim opravnenim... & pause > nul)
C:
cd "C:\Users\%username%\downloads"

set /p aplikace=Zadejte nazev aplikace, kterou chcete nainstalovat: 
:start

rem 7z
if "%aplikace%"=="7Z" set aplikace=7z
if "%aplikace%"=="7ZIP" set aplikace=7z
if "%aplikace%"=="7Zip" set aplikace=7z
if "%aplikace%"=="7zip" set aplikace=7z
if "%aplikace%"=="7z" call :Instalace "https://www.7-zip.org/a/7z2200-x64.exe" "7z2200-x64.exe" "1"

rem Avast
if "%aplikace%"=="avast" set aplikace=Avast
if "%aplikace%"=="avast free antivirus" set aplikace=Avast
if "%aplikace%"=="Avast free antivirus" set aplikace=Avast
if "%aplikace%"=="Avast Free Antivirus" set aplikace=Avast
if "%aplikace%"=="Avast" call :Instalace "https://bits.avcdn.net/productfamily_ANTIVIRUS/insttype_FREE/platform_WIN/installertype_ONLINE/build_RELEASE/cookie_mmm_ava_998_999_000_m" "avast_free_antivirus_setup_online.exe" "1"

rem AVG
if "%aplikace%"=="avg" set aplikace=AVG
if "%aplikace%"=="Avg" set aplikace=AVG
if "%aplikace%"=="AVG" call :Instalace "https://bits.avcdn.net/productfamily_ANTIVIRUS/insttype_FREE/platform_WIN_AVG/installertype_ONLINE/build_RELEASE/cookie_mmm_bav_998_999_000_m" "avg_antivirus_free_setup.exe" "1"

rem Avira
if "%aplikace%"=="avira" set aplikace=Avira
if "%aplikace%"=="avira antivirus" set aplikace=Avira
if "%aplikace%"=="Avira antivirus" set aplikace=Avira
if "%aplikace%"=="Avira Antivirus" set aplikace=Avira
if "%aplikace%"=="avira free antivirus" set aplikace=Avira
if "%aplikace%"=="Avira free antivirus" set aplikace=Avira
if "%aplikace%"=="Avira Free Antivirus" set aplikace=Avira
if "%aplikace%"=="Avira" call :Instalace "https://package.avira.com/download/spotlight-windows-bootstrapper/avira_en_sptl1_f4390571dde20dc8__adwb.exe" "avira_en_sptl1_f4390571dde20dc8__adwb.exe" "1"

rem Bandicam
if "%aplikace%"=="bandicam" set aplikace=Bandicam
if "%aplikace%"=="BandiCam" set aplikace=Bandicam
if "%aplikace%"=="Bandicam" call :Instalace "https://dl.bandicam.com/bdcamsetup.exe" "bdcamsetup.exe" "1"

rem BlueStacks
if "%aplikace%"=="bluestacks" set aplikace=BlueStacks
if "%aplikace%"=="Bluestacks" set aplikace=BlueStacks
if "%aplikace%"=="Bluestack" set aplikace=BlueStacks
if "%aplikace%"=="bluestack" set aplikace=BlueStacks
if "%aplikace%"=="blue stacks" set aplikace=BlueStacks
if "%aplikace%"=="Blue stacks" set aplikace=BlueStacks
if "%aplikace%"=="Blue stack" set aplikace=BlueStacks
if "%aplikace%"=="blue stack" set aplikace=BlueStacks
if "%aplikace%"=="blue Stacks" set aplikace=BlueStacks
if "%aplikace%"=="Blue Stacks" set aplikace=BlueStacks
if "%aplikace%"=="Blue Stack" set aplikace=BlueStacks
if "%aplikace%"=="blue Stack" set aplikace=BlueStacks
if "%aplikace%"=="bluestacks 5" set aplikace=BlueStacks
if "%aplikace%"=="Bluestacks 5" set aplikace=BlueStacks
if "%aplikace%"=="Bluestack 5" set aplikace=BlueStacks
if "%aplikace%"=="bluestack 5" set aplikace=BlueStacks
if "%aplikace%"=="BlueStacks" call :Instalace "https://cdn3.bluestacks.com/downloads/windows/nxt/5.8.101.1001/f1201cee9afc49d382f06f060e638691/BlueStacksMicroInstaller_5.8.101.1001_native.exe" "BlueStacksMicroInstaller_5.8.101.1001_native.exe" "1"

rem CCleaner
if "%aplikace%"=="ccleaner" set aplikace=CCleaner
if "%aplikace%"=="Ccleaner" set aplikace=CCleaner
if "%aplikace%"=="CCleaner" call :Instalace "https://www.ccleaner.com/ccleaner/download/standard" "ccsetup*" "2"

rem CoreTemp
if "%aplikace%"=="coretemp" set aplikace=CoreTemp
if "%aplikace%"=="Coretemp" set aplikace=CoreTemp
if "%aplikace%"=="core temp" set aplikace=CoreTemp
if "%aplikace%"=="Core temp" set aplikace=CoreTemp
if "%aplikace%"=="Core Temp" set aplikace=CoreTemp
if "%aplikace%"=="CoreTemp" call :Instalace "https://www.alcpu.com/CoreTemp/Core-Temp-setup.exe" "Core-Temp-setup.exe" "1"

rem CrystalDiskInfo
if "%aplikace%"=="Crystaldiskinfo" set aplikace=CrystalDiskInfo
if "%aplikace%"=="crystaldiskinfo" set aplikace=CrystalDiskInfo
if "%aplikace%"=="crystal disk info" set aplikace=CrystalDiskInfo
if "%aplikace%"=="Crystal Disk Info" set aplikace=CrystalDiskInfo
if "%aplikace%"=="Crystaldiscinfo" set aplikace=CrystalDiskInfo
if "%aplikace%"=="crystaldiscinfo" set aplikace=CrystalDiskInfo
if "%aplikace%"=="crystal disc info" set aplikace=CrystalDiskInfo
if "%aplikace%"=="Crystal Disc Info" set aplikace=CrystalDiskInfo
if "%aplikace%"=="Krystaldiskinfo" set aplikace=CrystalDiskInfo
if "%aplikace%"=="krystaldiskinfo" set aplikace=CrystalDiskInfo
if "%aplikace%"=="krystal disk info" set aplikace=CrystalDiskInfo
if "%aplikace%"=="Krystal Disk Info" set aplikace=CrystalDiskInfo
if "%aplikace%"=="Krystaldiscinfo" set aplikace=CrystalDiskInfo
if "%aplikace%"=="krystaldiscinfo" set aplikace=CrystalDiskInfo
if "%aplikace%"=="krystal disc info" set aplikace=CrystalDiskInfo
if "%aplikace%"=="Krystal Disc Info" set aplikace=CrystalDiskInfo
if "%aplikace%"=="Crystal disc info" set aplikace=CrystalDiskInfo
if "%aplikace%"=="Krystal disc info" set aplikace=CrystalDiskInfo
if "%aplikace%"=="CrystalDiskInfo" call :Instalace "https://free.nchc.org.tw/osdn//crystaldiskinfo/77497/CrystalDiskInfo8_17_3.exe" "CrystalDiskInfo8_17_3.exe" "1"

rem DosBox
if "%aplikace%"=="dosbox" set aplikace=DosBox
if "%aplikace%"=="Dosbox" set aplikace=DosBox
if "%aplikace%"=="DOSBOX" set aplikace=DosBox
if "%aplikace%"=="Dos box" set aplikace=DosBox
if "%aplikace%"=="Dos Box" set aplikace=DosBox
if "%aplikace%"=="DosBox" call :Instalace "https://altushost-swe.dl.sourceforge.net/project/dosbox/dosbox/0.74-3/DOSBox0.74-3-win32-installer.exe" "DOSBox0.74-3-win32-installer.exe" "1"

rem FileShredder
if "%aplikace%"=="Fileshredder" set aplikace=FileShredder
if "%aplikace%"=="fileshredder" set aplikace=FileShredder
if "%aplikace%"=="File shredder" set aplikace=FileShredder
if "%aplikace%"=="file shredder" set aplikace=FileShredder
if "%aplikace%"=="File Shredder" set aplikace=FileShredder
if "%aplikace%"=="file Shredder" set aplikace=FileShredder
if "%aplikace%"=="FileShredder" call :Instalace "https://www.fileshredder.org/files/file_shredder_setup.exe" "file_shredder_setup.exe" "1"

rem Frhed
if "%aplikace%"=="frhed" set aplikace=Frhed
if "%aplikace%"=="Frhed" call :Instalace "https://sourceforge.net/projects/frhed/files/latest/download" "Frhed-1.7.1-Setup.exe" "1"

rem Firefox
if "%aplikace%"=="firefox" set aplikace=Firefox
if "%aplikace%"=="Mozila" set aplikace=Firefox
if "%aplikace%"=="mozila" set aplikace=Firefox
if "%aplikace%"=="Mozila firefox" set aplikace=Firefox
if "%aplikace%"=="mozila firefox" set aplikace=Firefox
if "%aplikace%"=="Mozila Firefox" set aplikace=Firefox
if "%aplikace%"=="mozila Firefox" set aplikace=Firefox
if "%aplikace%"=="Firefox" call :Instalace "https://www.mozilla.org/cs/firefox/download/thanks/" "Firefox Installer.exe" "1"

rem HandBrake
if "%aplikace%"=="handbrake" set aplikace=HandBrake
if "%aplikace%"=="Handbrake" set aplikace=HandBrake
if "%aplikace%"=="hand brake" set aplikace=HandBrake
if "%aplikace%"=="Hand brake" set aplikace=HandBrake
if "%aplikace%"=="Hand Brake" set aplikace=HandBrake
if "%aplikace%"=="HandBrake" call :Instalace "https://handbrake.fr/rotation.php?file=HandBrake-1.5.1-x86_64-Win_GUI.exe" "HandBrake-1.5.1-x86_64-Win_GUI.exe" "1"

rem Java
if "%aplikace%"=="java" set aplikace=Java
if "%aplikace%"=="Java" call :Instalace "https://javadl.oracle.com/webapps/download/AutoDL?BundleId=246442_2dee051a5d0647d5be72a7c0abff270e" "JavaSetup8u333.exe" "1"

rem Hamachi
if "%aplikace%"=="hamachi" set aplikace=Hamachi
if "%aplikace%"=="log me in hamachi" set aplikace=Hamachi
if "%aplikace%"=="Log me in hamachi" set aplikace=Hamachi
if "%aplikace%"=="Hamachi" call :Instalace "https://secure.logmein.com/hamachi.msi" "hamachi.msi" "1"

rem Macro recorder
if "%aplikace%"=="macro recorder" set aplikace=Macro recorder
if "%aplikace%"=="Macro recorder" call :Instalace "https://www.macrorecorder.com/MacroRecorderSetup.exe" "MacroRecorderSetup.exe" "1"

rem Malwarebytes
if "%aplikace%"=="malwarebytes" set aplikace=Malwarebytes
if "%aplikace%"=="Malwarebytes" call :Instalace "https://www.malwarebytes.com/mwb-download/thankyou" "MBSetup*" "2"

rem OBS
if "%aplikace%"=="obs" set aplikace=OBS
if "%aplikace%"=="Obs" set aplikace=OBS
if "%aplikace%"=="OBS" call :Instalace "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-27.2.4-Full-Installer-x64.exe" "OBS-Studio-27.2.4-Full-Installer-x64.exe" "1"

rem Opera
if "%aplikace%"=="opera" set aplikace=Opera
if "%aplikace%"=="Opera" call :Instalace "https://www.opera.com/computer/thanks?ni=stable" "OperaSetup.exe" "1"

rem Process Hacker
if "%aplikace%"=="process hacker" set aplikace=Process Hacker
if "%aplikace%"=="process hacker 2" set aplikace=Process Hacker
if "%aplikace%"=="Process hacker" set aplikace=Process Hacker
if "%aplikace%"=="Process hacker 2" set aplikace=Process Hacker
if "%aplikace%"=="Process Hacker" call :Instalace "https://kumisystems.dl.sourceforge.net/project/processhacker/processhacker2/processhacker-2.39-setup.exe" "processhacker-2.39-setup.exe" "1"

rem Python
if "%aplikace%"=="python" set aplikace=Python
if "%aplikace%"=="Python" call :Instalace "https://www.python.org/ftp/python/3.10.5/python-3.10.5-amd64.exe" "python-3.10.5-amd64.exe" "1"

rem Recuva
if "%aplikace%"=="recuva" set aplikace=Recuva
if "%aplikace%"=="Recuva" call :Instalace "https://www.ccleaner.com/recuva/download/standard" "rcsetup*" "2"

rem Total Commander
if "%aplikace%"=="total commander" set aplikace=Total Commander
if "%aplikace%"=="Total commander" set aplikace=Total Commander
if "%aplikace%"=="totalcommander" set aplikace=Total Commander
if "%aplikace%"=="TotalCommander" set aplikace=Total Commander
if "%aplikace%"=="Totalcommander" set aplikace=Total Commander
if "%aplikace%"=="total cmd" set aplikace=Total Commander
if "%aplikace%"=="Total cmd" set aplikace=Total Commander
if "%aplikace%"=="totalcmd" set aplikace=Total Commander
if "%aplikace%"=="TotalCmd" set aplikace=Total Commander
if "%aplikace%"=="Totalcmd" set aplikace=Total Commander
if "%aplikace%"=="Total Commander" call :Instalace "https://totalcommander.ch/win/tcmd1000x64.exe" "tcmd1000x64.exe" "1"

rem Visual Studio
if "%aplikace%"=="visual studio" set aplikace=Visual Studio
if "%aplikace%"=="Visual Studio" call :Instalace "https://visualstudio.microsoft.com/cs/thank-you-downloading-visual-studio/?sku=Community" "vs_community_*" "2"

rem VirtualBox
if "%aplikace%"=="virtualbox" set aplikace=VirtualBox
if "%aplikace%"=="Virtualbox" set aplikace=VirtualBox
if "%aplikace%"=="virtual box" set aplikace=VirtualBox
if "%aplikace%"=="Virtual box" set aplikace=VirtualBox
if "%aplikace%"=="Virtual Box" set aplikace=VirtualBox
if "%aplikace%"=="VirtualBox" call :Instalace "https://download.virtualbox.org/virtualbox/6.1.36/VirtualBox-6.1.36-152435-Win.exe" "VirtualBox-6.1.36-152435-Win.exe" "1"

rem VLC
if "%aplikace%"=="vlc" set aplikace=VLC
if "%aplikace%"=="VLC Media Player" set aplikace=VLC
if "%aplikace%"=="VLC media player" set aplikace=VLC
if "%aplikace%"=="Vlc Media Player" set aplikace=VLC
if "%aplikace%"=="Vlc media player" set aplikace=VLC
if "%aplikace%"=="vlc media player" set aplikace=VLC
if "%aplikace%"=="VLC" call :Instalace "https://get.videolan.org/vlc/3.0.17.4/win32/vlc-3.0.17.4-win32.exe" "vlc-3.0.17.4-win32.exe" "1"

rem VMWare
if "%aplikace%"=="Vmware" set aplikace=VMWare
if "%aplikace%"=="VMware" set aplikace=VMWare
if "%aplikace%"=="vmware" set aplikace=VMWare
if "%aplikace%"=="VMWare Player" set aplikace=VMWare
if "%aplikace%"=="VMWare player" set aplikace=VMWare
if "%aplikace%"=="vmware Player" set aplikace=VMWare
if "%aplikace%"=="vmware player" set aplikace=VMWare
if "%aplikace%"=="VMware Player" set aplikace=VMWare
if "%aplikace%"=="VMware player" set aplikace=VMWare
if "%aplikace%"=="VMWare" call :Instalace "https://download3.vmware.com/software/WKST-PLAYER-1623-New/VMware-player-full-16.2.3-19376536.exe?ext=.exe" "VMware-player-full-16.2.3-19376536.exe" "1"

rem VSCode
if "%aplikace%"=="vscode" set aplikace=VSCode
if "%aplikace%"=="Visual Studio Code" set aplikace=VSCode
if "%aplikace%"=="visual studio code" set aplikace=VSCode
if "%aplikace%"=="VS Code" set aplikace=VSCode
if "%aplikace%"=="vs code" set aplikace=VSCode
if "%aplikace%"=="VSCode" call :Instalace "https://code.visualstudio.com/docs/?dv=win" "VSCodeUserSetup-x64-*" "2"

rem WinDirStat
if "%aplikace%"=="windirstat" set aplikace=WinDirStat
if "%aplikace%"=="Windirstat" set aplikace=WinDirStat
if "%aplikace%"=="Win Dir Stat" set aplikace=WinDirStat
if "%aplikace%"=="win dir stat" set aplikace=WinDirStat
if "%aplikace%"=="WinDirStat" call :Instalace "https://www.fosshub.com/WinDirStat.html?dwl=windirstat1_1_2_setup.exe" "windirstat1_1_2_setup.exe" "1"

rem WinRar
if "%aplikace%"=="winrar" set aplikace=WinRar
if "%aplikace%"=="Winrar" set aplikace=WinRar
if "%aplikace%"=="WinRar" call :Instalace "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-611.exe" "winrar-x64-611.exe" "1"

echo Zadana aplikace neni na seznamu, budete ji muset nainstalovat rucne
pause > nul
cls
set /p aplikace=Zadejte nazev dalsi aplikace, kterou chcete nainstalovat: 
goto start

:Instalace
echo Instaluji %aplikace%.....
start %~1
if exist "%~2" del "%~2"
:repeat
timeout /t 0 > nul
if not exist "%~2" goto repeat
if %~3 == 1 (start "%~2" "%~2") else (forfiles /m %~2 /c "cmd /c start @file @file")
cls
set /p aplikace=Zadejte nazev dalsi aplikace, kterou chcete nainstalovat: 
goto start