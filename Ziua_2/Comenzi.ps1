# Obiect
Test-Connection 

ping localhost -t

Test-Connection  localhost -Count 1 | select *  # select * iti arata toate propietatile cu valoare
Test-Connection "." | gm

Get-Service | gm

(Get-Service XblGameSave).Start()
(Get-Service XblGameSave).Stop()

$service = Get-Service XblGameSave
$service.Start()
$service.stop()

Get-Service XblGameSave 




help Test-Connection -ShowWindow  
help Test-Connection -example
