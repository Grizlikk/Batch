@echo off
title Timer

set /p po=Zadejte velikost intervalu: 
set /p mezi=Zadejte velikost mezery: 
set /p pocet=Zadejte pocet opakovani: 
set /p startin=Zadejte prodlevu pred spustenim: 

cls
color b0
for /l %%i in (%startin%, -1, 1) do (
    echo Start za: %%i
    timeout /t 1 /nobreak > nul
    cls
)

cls

for /l %%i in (1, 1, %pocet%) do (
    color 40

    for /l %%j in (%po%, -1, 1) do (
        echo %%j
        timeout /t 1 /nobreak > nul
        cls
    )

    color a0
    for /l %%j in (%mezi%, -1, 1) do (
        echo %%j
        timeout /t 1 /nobreak > nul
        cls
    )

)

exit