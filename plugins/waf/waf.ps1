function waf {
    Get-ChildItem -name waf -ErrorAction Stop > $null
    .\waf $args
}

function ibwaf {
    Get-ChildItem ibwaf-and-exit.bat -ErrorAction Stop > $null
    .\ibwaf-and-exit.bat $args
}
