Write-Host "Initializing WinOptimizer Loader..." -ForegroundColor Cyan

$tempDir = Join-Path $env:TEMP "WinOptimizer_Loader"
if (Test-Path $tempDir) { Remove-Item $tempDir -Recurse -Force | Out-Null }
New-Item -ItemType Directory -Path $tempDir -Force | Out-Null

$baseUrl = "https://raw.githubusercontent.com/NishantJLU/Windows-Optimizer/main"

Write-Host "Fetching latest components from GitHub..." -ForegroundColor Cyan
try {
    Invoke-WebRequest -Uri "$baseUrl/WinOptimizer.ps1" -OutFile "$tempDir\WinOptimizer.ps1" -UseBasicParsing
    Invoke-WebRequest -Uri "$baseUrl/config.json" -OutFile "$tempDir\config.json" -UseBasicParsing
    Write-Host "Download complete." -ForegroundColor Green
} catch {
    Write-Error "Failed to download scripts. Please check your internet connection or the repository URL."
    return
}

Write-Host "Starting WinOptimizer..." -ForegroundColor Green
# Start in a new process to ensure Admin check and ExecutionPolicy work correctly
Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$tempDir\WinOptimizer.ps1`"" -Wait

Write-Host "`nWinOptimizer session closed." -ForegroundColor Cyan
