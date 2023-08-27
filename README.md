# servers-xampp
## servers apache dan mysql

## Feature

- SERVER APACHE DAN MYSQL TANPA CONTROL PANEL

## Tech

* [POWERSHELL](https://learn.microsoft.com/id-id/powershell/) - PowerShell is a cross-platform task automation solution made up of a command-line shell, a scripting language, and a configuration management framework. PowerShell runs on Windows, Linux, and macOS.

* [PHP](https://www.php.net/) - popular general-purpose scripting language that is especially suited to web development.

* [XAMPP](https://www.apachefriends.org/download.html) - XAMPP is an easy to install Apache distribution containing MariaDB, PHP, and Perl. Just download and start the installer. It's that easy.

* [VSCODE](https://code.visualstudio.com/) - Code editing. Redefined.Free. Built on open source. Runs everywhere.

* [GOOGLE CHROME](https://www.google.com.sg/?hl=id) - The Browser built by Google.

## Requirement

* XAMPP v3.30
* PHP 8.2.0
* VSCODE 1.8.0
* Powershell 5.1.2

## Structure

```
📦servers
 ┣ 📂bin
 ┃ ┣ 📜start_servers.bat
 ┃ ┗ 📜stop_servers.bat
 ┣ 📜install.txt
 ┗ 📜configure.ps1
```
## installation

Pindahkan semua folder ke dalam 
C:\

masuk ke directory servers lalu jalankan .\configure.ps1 di powershell sebagai admin
jika tetap tidak bisa coba jalankan dengan cmd sebagai administrator
lalu pastekan kode berikut
```
powershell -NoProfile -ExecutionPolicy Bypass -File .\configure.ps1
```
* harap catat menjalankan dimana file configure itu berada

jika sudah jalankan start_servers
untuk stopnya stop_servers

Akses Pada Browser 
sesuai biasanya anda membuka localhost xampp
localhost:/


* CREDITS

* [An_Geom](https://www.instagram.com/an_geom21/) - My INSTAGRAM****
