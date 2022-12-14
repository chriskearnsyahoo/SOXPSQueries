# Put FQDN of Servers in Computer Name Variable, if you need multiple servers seperate them with a ,
$parameters = @{
  ComputerName      = 'Server01', 'Server02', 'TST-0143', 'localhost'
  ScriptBlock       = {Get-HotFix}
}
Invoke-Command @parameters | out-file "c:\Audit_Results\DC_Patches_$((Get-Date).ToString('MM-dd-yyyy_hh-mm-ss')).csv"
