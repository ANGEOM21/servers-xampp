$newPaths = ""
if (Test-Path "C:\xampp") {
    $newPaths = "C:\xampp"
} elseif (Test-Path "D:\xampp") {
    $newPaths = "D:\xampp"
} else {
    Write-Host "Direktori xampp tidak ditemukan di drive C maupun D."
    exit
}

$currentPath = [Environment]::GetEnvironmentVariable("PATH", "Machine")

Write-Host -ForegroundColor Cyan "Sedang Menjalankan File Configurasi."
Start-Sleep -Seconds 2
if ($currentPath -notlike "*$newPaths*") {
    $newPath = "$currentPath;$newPaths"
    [Environment]::SetEnvironmentVariable("PATH", $newPath, "Machine")
    Write-Host -ForegroundColor Green "Path telah berhasil ditambahkan."

} else {
    Write-Host -ForegroundColor Red "Path sudah ada dalam variabel lingkungan !!."
}
Write-Host ""
$startServersPath = Join-Path -Path $PSScriptRoot -ChildPath "bin\start_servers.bat"
$stopServersPath = Join-Path -Path $PSScriptRoot -ChildPath "bin\stop_servers.bat"

$destinationDirectory = $newPaths
Write-Host -ForegroundColor Yellow "Sedang Memindahkan file"
Start-Sleep -Seconds 2

if (Test-Path $startServersPath) {
    Move-Item -Path $startServersPath -Destination $destinationDirectory
    Write-Host "File start_servers.bat telah dipindahkan ke $destinationDirectory"
} else {
    Write-Host -ForegroundColor Red "File start_servers.bat tidak ditemukan di direktori bin."
}

if (Test-Path $stopServersPath) {
    Move-Item -Path $stopServersPath -Destination $destinationDirectory
    Write-Host "File stop_servers.bat telah dipindahkan ke $destinationDirectory"
} else {
    Write-Host -ForegroundColor Red "File stop_servers.bat tidak ditemukan di direktori bin."
}

Start-Sleep -Seconds 2
Write-Host -ForegroundColor Green "Configurasi Selesai"



#author: An_geom
