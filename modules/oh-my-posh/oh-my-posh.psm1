# Check for $Env:OHMYPOSH_ROOT and use default directory if not available.

if( -Not(Test-Path Env:\OHMYPOSH_ROOT) ) {
    $Env:OHMYPOSH_ROOT = "$Env:USERPROFILE\.oh-my-posh"
    Write-Host "Using default OHMYPOSH_ROOT = $Env:OHMYPOSH_ROOT"
} else {
    Write-Host "Found OHMYPOSH_ROOT = $Env:OHMYPOSH_ROOT"
}

# Check if profile is specified via an environment variable.
if ( -Not( Test-Path Env:\OHMYPOSH_CONFIG ) ) {
    $Env:OHMYPOSH_CONFIG = "$Env:USERPROFILE\.oh-my-posh.config.ps1"
}

# Check if that profile exists, If not, copy a template to that location.
If ( Test-Path ("$Env:OHMYPOSH_CONFIG") ) {
    Write-Host "Detected a local configuration at $Env:OHMYPOSH_CONFIG"
} else {
    Copy-Item $Env:OHMYPOSH_ROOT"\.oh-my-posh\template\oh-my-posh.config.ps1" $Env:OHMYPOSH_CONFIG
}

[ScriptBlock]$PostStartup = {}

# Load Profile var
. $Env:OHMYPOSH_CONFIG

# Check for updates
. $Env:OHMYPOSH_ROOT"\tools\check_for_updates.ps1"

# Execute Oh-My-Powershell
. $Env:OHMYPOSH_ROOT"\oh-my-posh.ps1"

# Run any post loading configuraiton. Some configuration variables
# aren't available before their associated modules are loaded.
Set-Item -Path function:\Initialize-OMP  -Value $PostStartup

Initialize-OMP

# Remove the initializer and its script block so that they are not called again.
Remove-Variable PostStartup
Remove-Item -Path function:\Initialize-OMP