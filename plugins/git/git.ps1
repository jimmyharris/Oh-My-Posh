try {
    Get-command -Name "git" -ErrorAction Stop >$null
    if (Get-Module "posh-git" -ListAvailable) {
        $gitStatus = $true
        # We should import the module now to polulate repository settings.
        Import-Module posh-git
    } else { 
        Write-Warning "Missing posh-git support, install posh-git with 'Install-Module posh-git' and restart."
        throw
    }
} catch {
    Write-Warning "Missing git support Install git and add it to the path to make use of this capability."
    $gitStatus = $false
}

function checkGit($Path = "") {
    if (Test-Path -Path (Join-Path $Path '.git/') ) {
        Write-VcsStatus
        return
    }
    $SplitPath = split-path $path
    if ($SplitPath) {
        checkGit($SplitPath)
    }
}
