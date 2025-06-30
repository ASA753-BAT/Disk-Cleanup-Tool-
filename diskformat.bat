@echo off
:menu
cls
echo ===============================
echo     DISK TEMIZLEME ARACI
echo ===============================
echo.
echo Takili Diskler:
echo -------------------------------
wmic diskdrive get index,model,size
echo -------------------------------
echo.
set /p diskno=Islem yapilacak DISK numarasini girin (sadece rakam): 

echo.
echo UYARI: Bu islem DISK %diskno% uzerindeki tum verileri SILECEK!
set /p onay=Devam etmek istiyor musun? (E/H): 
if /i not "%onay%"=="E" (
    echo Islemi iptal ettiniz.
    pause
    goto menu
)

echo.
echo Islem baslatiliyor...
echo LUTFEN BEKLEYIN...

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
echo    ISLEM TAMAMLANDI ✅
echo ===============================
echo.
pause
goto menu

## 📄 License

This project is licensed under the MIT License. You are free to use, distribute, and modify it as needed.

---

## ✍️ Developed by

[@asa753](https://github.com/ASA753-BAT)

