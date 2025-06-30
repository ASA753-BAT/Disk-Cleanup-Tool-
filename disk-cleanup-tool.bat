@echo off
:menu
cls
echo ===============================
echo     DISK CLEANUP TOOL
echo ===============================
echo.
echo Connected Disks:
echo -------------------------------
wmic diskdrive get index,model,size
echo -------------------------------
echo.
set /p diskno=Enter the DISK number to operate on (numbers only): 

echo.
echo WARNING: This will ERASE ALL DATA on DISK %diskno%!
set /p confirm=Do you want to continue? (Y/N): 
if /i not "%confirm%"=="Y" (
    echo Operation cancelled.
    pause
    goto menu
)

echo.
echo Starting operation...
echo PLEASE WAIT...

(
echo select disk %diskno%
echo clean
echo create partition primary
echo format fs=ntfs quick
echo assign
echo exit
) | diskpart >nul

echo.
echo ===============================
echo    OPERATION COMPLETED ✅
echo ===============================
echo.
pause
goto menu
