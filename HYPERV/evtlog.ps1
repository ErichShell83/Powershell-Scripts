#Variables
$Logname = Read-host "What type of log do you want to see?"
$number = Read-host "How many entries do you want to see?"
$Type = Read-host "What type of entries do you want to see?"

#CMDLETS
Get-eventlog `
-LogName $Logname `
-Newest $number `
-EntryType $type `
 | format-list timegenerated, source, message 