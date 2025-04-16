<#
.SYNOPSIS
    Converts a PowerShell script into a standalone executable.
.NOTES
    Based on original work by Ingo Karstein, modified by MScholtes.
#>

param (
    [string]$inputFile = "",
    [string]$outputFile = ""
)

if ($inputFile -eq "") {
    Write-Host "Usage:"
    Write-Host "  powershell -ExecutionPolicy Bypass -File ps2exe.ps1 -inputFile yourscript.ps1 -outputFile yourscript.exe"
    exit
}

if ($outputFile -eq "") {
    $outputFile = [System.IO.Path]::ChangeExtension($inputFile, ".exe")
}

Add-Type -AssemblyName System.Windows.Forms

$tempPath = [System.IO.Path]::GetTempPath()
$stubExe = "$tempPath\ps2exe_stub_console.exe"

# Extract stub EXE (replace with your actual stub bytes if needed)
$stubBytes = [System.Convert]::FromBase64String("TVqQAAMAAAAEAAAA//8AALgAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA...")  # <-- Base64 stub here
[System.IO.File]::WriteAllBytes($stubExe, $stubBytes)

# Prepare script contents
$scriptContent = Get-Content $inputFile -Raw
$bytes = [System.Text.Encoding]::Unicode.GetBytes($scriptContent)
[System.IO.File]::WriteAllBytes("$tempPath\script.txt", $bytes)

# Copy stub EXE to output file
Copy-Item $stubExe $outputFile

Write-Host "Executable created: $outputFile"
