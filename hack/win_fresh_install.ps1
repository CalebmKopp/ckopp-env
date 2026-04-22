#!/usr/bin/env pwsh

# Windows fresh install script
# Installs VSCode extensions from the PowerShell install list.
# NOTE: Chocolatey/winget package automation is not yet implemented.
#       For now, install system packages manually via winget or chocolatey.

# --- Prerequisite checks ---
if (-not (Get-Command "code" -ErrorAction SilentlyContinue)) {
    Write-Host "Error: 'code' (Visual Studio Code CLI) not found." -ForegroundColor Red
    Write-Host "  Install VSCode via: winget install -e --id Microsoft.VisualStudioCode" -ForegroundColor Yellow
    exit 1
}

# --- Install VSCode extensions ---
Write-Host "Installing VSCode extensions..."
pwsh -File ./lists/vsc_install_list.ps1

Write-Host ""
Write-Host "Done. VSCode extensions installed." -ForegroundColor Green
Write-Host ""
Write-Host "NOTE: Chocolatey/winget package list automation is not yet implemented." -ForegroundColor Yellow
Write-Host "      Install system packages manually for now." -ForegroundColor Yellow
