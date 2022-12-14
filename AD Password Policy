# Set Domain to your AD Domain Name
$Domain = "YourInternalDomainHere"
Get-ADDefaultDomainPasswordPolicy -Identity $Domain | out-file "c:\Audit_Results\AD_PWD_Policy_$((Get-Date).ToString('MM-dd-yyyy_hh-mm-ss')).csv"
