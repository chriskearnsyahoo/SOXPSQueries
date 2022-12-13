$startTime = Get-Date
Write-Host "The script was started " + $startTime.ToString("u") 

$groups = "Domain Admins", "Enterprise Admins", "Schema Admins"

$results = foreach ($group in $groups) {
    Get-ADGroupMember $group | select name, @{n='GroupName';e={$group}}
}

$results


$results | Export-csv C:\Audit_Results\AD_Admins_$((Get-Date).ToString('MM-dd-yyyy_hh-mm-ss')).csv
