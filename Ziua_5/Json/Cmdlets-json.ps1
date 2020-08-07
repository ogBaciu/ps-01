Get-Service | ConvertTo-Json -Depth 2 | out-file ./file.txt 

notepad .\file.txt

$date = Get-Content ./file.txt  | ConvertFrom-Json

$date | select ServicesDependedOn 

$date.ServicesDependedOn.DependentServices 





