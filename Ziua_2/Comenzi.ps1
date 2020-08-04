# Obiect
Test-Connection 

ping localhost -t

Test-Connection  localhost -Count 1 | select *  # select * iti arata toate propietatile cu valoare
Test-Connection "." | gm # Get-member

Test-Connection  localhost -Count 1 

Get-Service | gm

#apelare metoda
(Get-Service XblGameSave).Start()
(Get-Service XblGameSave).Stop()

$service = Get-Service XblGameSave
$service.Start()
$service.stop()

Get-Service XblGameSave 




help Test-Connection -ShowWindow  
help Test-Connection -example

Get-Command *update*

help Get-WindowsUpdateLog -ShowWindow
Get-Command -Module WindowsUpdate

Get-Command *fix*

help Get-HotFix  -ShowWindow

Get-HotFix | select *
Get-HotFix | gm

Get-Module -ListAvailable

