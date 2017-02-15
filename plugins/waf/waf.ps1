function waf {
    try {
        Get-ChildItem -name waf > $null
        .\waf $args
    }
    catch {
        Write-Error "waf not present in current directory"
    }
}

function ibwaf {
    try {
        Get-ChildItem ibwaf > $null
        .\ibwaf $args
    }
    catch {
        Write-Error "ibwaf not present in current directory"
    }
}
