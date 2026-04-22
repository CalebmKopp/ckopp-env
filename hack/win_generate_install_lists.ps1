#!/usr/bin/env pwsh

# Windows sync script
# Regenerates the VSCode extension install lists from the current machine state.
# NOTE: Chocolatey/winget package list automation is not yet implemented.
#       For now, the Brewfile is only updated via the macOS `make sync` target.

# --- Prerequisite checks ---
if (-not (Get-Command "code" -ErrorAction SilentlyContinue)) {
    Write-Host "Error: 'code' (Visual Studio Code CLI) not found." -ForegroundColor Red
    Write-Host "  Install VSCode via: winget install -e --id Microsoft.VisualStudioCode" -ForegroundColor Yellow
    exit 1
}

# --- Regenerate VSCode extension lists ---

# Regenerate the bash version (vsc_install_list.sh)
if (Test-Path "./lists/vsc_install_list.sh") {
    Remove-Item "./lists/vsc_install_list.sh"
}
$extensions = code --list-extensions
$shContent = "#!/bin/bash`n"
foreach ($ext in $extensions) {
    $shContent += "code --install-extension $ext`n"
}
Set-Content -Path "./lists/vsc_install_list.sh" -Value $shContent -NoNewline

# Regenerate the PowerShell version (vsc_install_list.ps1)
if (Test-Path "./lists/vsc_install_list.ps1") {
    Remove-Item "./lists/vsc_install_list.ps1"
}
$ps1Content = "#!/usr/bin/env pwsh`n`n# Install all VSCode extensions from the list`n"
foreach ($ext in $extensions) {
    $ps1Content += "code --install-extension $ext`n"
}
Set-Content -Path "./lists/vsc_install_list.ps1" -Value $ps1Content -NoNewline

Write-Host "Done. Regenerated:" -ForegroundColor Green
Write-Host "  - lists/vsc_install_list.sh"
Write-Host "  - lists/vsc_install_list.ps1"
Write-Host ""
Write-Host "NOTE: Chocolatey/winget package list automation is not yet implemented." -ForegroundColor Yellow
Write-Host "      The Brewfile is only updated via macOS 'make sync'." -ForegroundColor Yellow
