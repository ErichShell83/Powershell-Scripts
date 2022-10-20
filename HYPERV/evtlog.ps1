#Variables
$Logname = Read-host "What type of log do you want to see? System, Application, Security"
$number = Read-host "How many entries do you want to see?"
$Type = Read-host "What type of entries do you want to see? Valid Types are Error, Information, FailureAudit, SuccessAudit, Warning" 

#CMDLETS
Get-eventlog `
-LogName $Logname `
-Newest $number `
-EntryType $type `
 | format-list timegenerated, source, message 