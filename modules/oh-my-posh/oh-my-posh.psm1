# Check if profile exists

If ( Test-Path ("$Env:USERPROFILE\.oh-my-posh.config.ps1") ) {
    Write-Output "Detected a Oh-My-Posh Profile"
} else {
    cp $Env:USERPROFILE"\.oh-my-posh\template\oh-my-posh.config.ps1" $Env:USERPROFILE"\.oh-my-posh.config.ps1"
}

[ScriptBlock]$PostStartup = {}

# Load Profile var
. $Env:USERPROFILE"\.oh-my-posh.config.ps1"

# Check for updates
. $Env:USERPROFILE"\.oh-my-posh\tools\check_for_updates.ps1"

# Execute Oh-My-Powershell
. $Env:USERPROFILE"\.oh-my-posh\oh-my-posh.ps1"

# Run any post loading configuraiton. Some configuration variables
# aren't available before their associated modules are loaded.
Set-Item -Path function:\Initialize-OMP  -Value $PostStartup

Initialize-OMP

# Remove the initializer and its script block so that they are not called again.
Remove-Variable PostStartup
Remove-Item -Path function:\Initialize-OMP