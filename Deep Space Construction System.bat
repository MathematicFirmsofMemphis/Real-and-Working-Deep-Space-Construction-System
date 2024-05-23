@echo off
:menu
cls
echo Deep Space Construction System:
echo 1. Compare Measurements
echo 2. Analyze Calculation Discrepancies
echo 3. Detect Measurements
echo 4. Human Operated Robot
echo 5. Exit

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    call :compare_measurements
) else if "%choice%"=="2" (
    call :analyze_discrepancies
) else if "%choice%"=="3" (
    call :detect_measurements
) else if "%choice%"=="4" (
    call :operate_human_robot
) else if "%choice%"=="5" (
    exit
) else (
    echo Invalid choice. Please try again.
    pause
    goto :menu
)

exit /b

:compare_measurements
cls
echo Enter the first measurement:
set /p measurement1=Measurement 1: 
echo Enter the second measurement:
set /p measurement2=Measurement 2: 

echo Comparing measurements...
if %measurement1% equ %measurement2% (
    echo The measurements are identical.
) else (
    echo The measurements are different.
    echo Difference: %measurement1% - %measurement2% = %measurement1% units
)
echo %measurement1% >> measurements.txt
echo %measurement2% >> measurements.txt
pause
goto :menu

:analyze_discrepancies
cls
echo Enter the expected result:
set /p expected_result=Expected Result: 
echo Enter the calculated result:
set /p calculated_result=Calculated Result: 

echo Analyzing discrepancies...
set /a discrepancy=%expected_result% - %calculated_result%
echo Discrepancy: %expected_result% - %calculated_result% = %discrepancy%
echo %expected_result% >> results.txt
echo %calculated_result% >> results.txt
pause
goto :menu

:detect_measurements
cls
echo Detecting measurements...
REM Add your code here to detect measurements
pause
goto :menu

:operate_human_robot
cls
echo You are now Operating robot...
REM Add your code here to operate the human robot
pause
goto :menu
