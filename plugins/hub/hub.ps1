try {
    Get-Command -Name "hub" -ErrorAction Stop >$null
    New-Alias -Name "git" -Value "hub"
}
catch {
    Write-Debug "Hub was not found."
}