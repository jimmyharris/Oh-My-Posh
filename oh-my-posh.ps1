# Install modules
& "$Env:OHMYPOSH_ROOT\tools\modules.ps1"

# Handle Plugins
foreach ($plugin in $plugins) {
  Write-Verbose  "Loading from: $Env:OHMYPOSH_ROOT\plugins\$plugin"
  $files = Get-ChildItem $Env:OHMYPOSH_ROOT\plugins\$plugin -Filter *.ps1
  foreach ($file in $files) {
    Write-Verbose  "  Loading file: $($file.FullName)"
    . $file.FullName
  }
}

# Load theme
. "$Env:OHMYPOSH_ROOT\themes\$theme.ps1"
