$ErrorActionPreference = 'Stop'
$InstallDir = Join-Path $env:LOCALAPPDATA 'Programs\AudioDownloader'
$StartMenuDir = Join-Path $env:APPDATA 'Microsoft\Windows\Start Menu\Programs'
$ShortcutPath = Join-Path $StartMenuDir 'Audio Downloader.lnk'
$SourceExe = Join-Path $PSScriptRoot 'AudioDownloader.exe'

if (-not (Test-Path -LiteralPath $SourceExe)) {
    throw "AudioDownloader.exe was not found next to this installer. Extract the full ZIP before installing."
}
New-Item -ItemType Directory -Force -Path $InstallDir | Out-Null
Copy-Item -LiteralPath $SourceExe -Destination (Join-Path $InstallDir 'AudioDownloader.exe') -Force
$Shell = New-Object -ComObject WScript.Shell
$Shortcut = $Shell.CreateShortcut($ShortcutPath)
$Shortcut.TargetPath = Join-Path $InstallDir 'AudioDownloader.exe'
$Shortcut.WorkingDirectory = $InstallDir
$Shortcut.Description = 'Download audio to MP3 from public links.'
$Shortcut.Save()
Write-Host "Installed Audio Downloader to $InstallDir"
