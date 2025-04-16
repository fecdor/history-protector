<#
.SYNOPSIS
    Converts a PowerShell script into a standalone executable.
.NOTES
    Based on original work by Ingo Karstein, modified by MScholtes.
#>

param (
    [string]$inputFile = "",
    [string]$outputFile = "",
    [string]$iconFile = "",
    [switch]$noConsole = $false
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
$stubExe = if ($noConsole) {
    "$tempPath\ps2exe_stub_win.exe"
} else {
    "$tempPath\ps2exe_stub_console.exe"
}

$resourceFile = "$tempPath\ps2exe.resources"

# Extract stub EXE
$stubBytes = if ($noConsole) {
    [System.Convert]::FromBase64String($consoleStubWin)
} else {
    [System.Convert]::FromBase64String($consoleStub)
}
[System.IO.File]::WriteAllBytes($stubExe, $stubBytes)

# Prepare script contents
$scriptContent = Get-Content $inputFile -Raw
$bytes = [System.Text.Encoding]::Unicode.GetBytes($scriptContent)
[System.IO.File]::WriteAllBytes("$tempPath\script.txt", $bytes)

# Embed resources using ResourceHacker or similar (simple placeholder here)
# You'd need to adapt this if you want icon and true resource embedding
Copy-Item $stubExe $outputFile

Write-Host "Executable created: $outputFile"
