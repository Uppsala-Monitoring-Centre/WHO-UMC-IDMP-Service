@echo off
cls

rem This repo source path
set SOURCE_PATH=C:\Source\WHO-UMC-IDMP-Service

rem Run sushi build
echo ---------------------------------------
echo BUILDING SUSHI PROFILE FILES
echo ---------------------------------------
cmd /c sushi build -l debug -s "%SOURCE_PATH%"