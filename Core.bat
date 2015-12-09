mode 1000
@echo off

:main
cls
echo ******************************************************
echo            Diagnostic Tool Collaborater
echo ******************************************************
echo.
echo  1. Car compatibillity checker
echo  2. Code checker
echo.
set /p selection=search:
if %selection% == 1 goto carcompatibillity
if %selection% == 2 goto codereader
goto main

:carcompatibillity
cls
echo ******************************************************
echo              Car Compatibillity Checker
echo ******************************************************
echo enter the model or series of the car you are searching
echo or type list to list all supported cars and models
echo type 0 to go back to the main menu
echo.
set /p selection=search:
cls
echo MANUFACTURER            MODEL                 YEAR            FUELTYPE      TRANSMISSION     DIAGNOSTIC    SUPPORT
echo.
if %selection% == 0 goto main
if %selection% == list findstr YES cars.dat
if not %selection% == list findstr /LI %selection% cars.dat
pause>nul
goto carcompatibillity

:codereader
cls
echo ******************************************************
echo              OBDII/CAN/EOBD Code Checker
echo ******************************************************
echo enter the OBDII code ot type "list" for a list of a simplified code table
echo type 0 to go back to the main menu
echo.
set /p selection=search:
cls
echo CODE  PROBLEM
echo.
if %selection% == 0 goto main
if %selection% == list findstr /LI 0 simplecodes.dat
if not %selection% == list findstr /LI %selection% codes.dat
pause>nul
goto codereader