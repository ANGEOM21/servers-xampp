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

Write-Host "Sedang Menjalankan File Configurasi."
Start-Sleep -Seconds 2
if ($currentPath -notlike "*$newPaths*") {
    $newPath = "$currentPath;$newPaths"
    [Environment]::SetEnvironmentVariable("PATH", $newPath, "Machine")
    Write-Host "Path telah berhasil ditambahkan."

    Write-Host ""
    Write-Host ""
    $startServersPath = Join-Path -Path $PSScriptRoot -ChildPath "servers\bin\start_servers.bat"
    $stopServersPath = Join-Path -Path $PSScriptRoot -ChildPath "servers\bin\stop_servers.bat"
    
    $destinationDirectory = $newPaths
    
    Move-Item -Path $startServersPath -Destination $destinationDirectory
    Move-Item -Path $stopServersPath -Destination $destinationDirectory
    
    Write-Host "Configurasi Selesai"
    Write-Host ""
    Write-Host ""
} else {
    Write-Host "Path sudah ada dalam variabel lingkungan."
}



# author : Angeom21


