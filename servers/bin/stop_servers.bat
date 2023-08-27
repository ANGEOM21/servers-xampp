@echo off
cd /D %~dp0

echo Mengecek status layanan...

tasklist /FI "IMAGENAME eq httpd.exe" 2>NUL | find /I /N "httpd.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo Menghentikan Apache...
    taskkill /F /IM httpd.exe
) else (
    echo Apache belum berjalan atau jalankankan terlebih dahulu dengan start_servers
)

tasklist /FI "IMAGENAME eq mysqld.exe" 2>NUL | find /I /N "mysqld.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo Menghentikan MySQL...
    taskkill /F /IM mysqld.exe
) else (
    echo MySQL belum berjalan atau jalankankan terlebih dahulu dengan start_servers
)

@REM author: Angeom21
