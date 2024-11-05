@echo off
cls

rem This repo source path
set SOURCE_PATH=C:\Source\WHO-UMC-IDMP-Service
rem FHIR IDMP API destination path 
set DESTINATION_PATH=C:\Source\FHIR-IDMP\Umc.Fhir.Idmp
rem Dotnet path 
set DOTNET_EXE=C:\Program Files\dotnet\dotnet.exe  

rem Run sushi build
echo ---------------------------------------
echo BUILDING SUSHI PROFILE FILES
echo ---------------------------------------
cmd /c sushi build -l debug -s "%SOURCE_PATH%"

rem Copy FHIR profiles from IG source repo to FHIR IDMP API profiles folder
echo ---------------------------------------
echo COPYING PROFILE FILES
echo ---------------------------------------
copy /y %SOURCE_PATH%\fsh-generated\resources\*.* %DESTINATION_PATH%\src\Application\Common\FhirValidation\Profiles\UmcCustom

rem Copy example files from IG source repo to FHIR IDMP API examples folder
echo ---------------------------------------
echo COPYING EXAMPLE FILES
echo ---------------------------------------
echo Copying task phpid examples 
rem unit tests
copy /y %SOURCE_PATH%\input\examples\task-Template-phpid.json %DESTINATION_PATH%\tests\Application.UnitTests\TestFiles
copy /y %SOURCE_PATH%\input\examples\task-DataPharm.json %DESTINATION_PATH%\tests\Application.UnitTests\TestFiles
copy /y %SOURCE_PATH%\input\examples\task-Felleskatalogen.json %DESTINATION_PATH%\tests\Application.UnitTests\TestFiles
rem systemtests
copy /y %SOURCE_PATH%\input\examples\task-Template-phpid.json %DESTINATION_PATH%\tests\SystemTests\TestFiles

rem Run a "valid" task dotnet test
echo ---------------------------------------
echo DOTNET TEST
echo ---------------------------------------
"%DOTNET_EXE%" test "%DESTINATION_PATH%" -v m --filter "FullyQualifiedName~Umc.Fhir.Idmp.Application.UnitTests.Common.FhirValidation."