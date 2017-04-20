function waf {
    Get-ChildItem -name waf -ErrorAction Stop > $null
    .\waf $args
}

function ibwaf {
    Get-ChildItem ibwaf -ErrorAction Stop > $null
    .\ibwaf $args
}
