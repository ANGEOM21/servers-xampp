@echo off
cd /D %~dp0

echo Mengecek status layanan...

tasklist /FI "IMAGENAME eq httpd.exe" 2>NUL | find /I /N "httpd.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo Apache2 Sudah Berjalan Sebelumnya
) else (
    echo Apache 2 starting ...
    start /B httpd
)

tasklist /FI "IMAGENAME eq mysqld.exe" 2>NUL | find /I /N "mysqld.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo Mysql Sudah berjalan Sebelumnya
) else (
    start /B "" mysql\bin\mysqld.exe --defaults-file=mysql\bin\my.ini --standalone > NUL 2>&1
    echo MySQL is starting with mysql\bin\my.ini (background)
)

echo NB: Kill terminal hanya menghentikan apache tidak dengan mysql


@REM author: Angeom21
