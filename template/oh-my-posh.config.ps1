# All commands and settings in this file will be evaluated before
# oh-my-posh loads its core files. Debugging options

$Log_Level = ""

# Autoupdate
$AutoUpdate = $true
$UpdateAfter = 30 # Update Frequency in days

# Modules
# User this section if you want to delegate module loading to Oh-My-Powershell.
# This must be a list of inidividual module names
$Modules = ""
# Download modules if missing?
$Modules_Install = $false
# Uninstall any modules not specified here
$Modules_Strict = $false

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-posh/plugins/*)
# Custom plugins may be added to ~/.oh-my-posh/custom/plugins/
# Example format: $plugins= "git", "ls", "math"
# Add wisely, as too many plugins slow down shell startup.
$plugins= "git"

# Theme
$theme = "base"

# Commands and options in this script will be run after the oh-my-posh
# modules is loaded

[ScriptBlock]$PostStartup = {
    # Code run in here will executed after any modules load. 
}