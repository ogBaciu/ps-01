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

get-help about_*for*
get-help about_Foreach  -ShowWindow

# ctrl + J Snippets

Start-Transcript ./transcript.txt

#pipeline
Get-Service XblGameSave
Get-Service -Name XblGameSave

help Get-Service -ShowWindow


Get-Command *-Service


Get-Service -Name XblGameSave | Start-Service 
Get-Service -Name XblGameSave | Stop-Service 

Get-Command *-process

#filtrare simpla 
Get-Service | where status -like "Running" | where name -like "a*" | export-csv C:\Alin\PS-01\Ziua_2\export.csv -NoTypeInformation

#filtrare avansata
get-service | where { $_.Status -like  "Running"  -and  $_.name -like "a*" } | export-csv C:\Alin\PS-01\Ziua_2\export.csv -NoTypeInformation
 

Get-Process | ? Handles -eq 153
Get-Process | ? Handles -gt 153


#Sort
get-service  | select Name,Status | sort status -Descending

$lista = "gicuta","gita","gicuta"
$lista | sort -Unique


get-process | export-clixml –path ref.xml
$reference = Import-Clixml ./ref.xml

Compare-Object -ReferenceObject $reference -DifferenceObject (Get-Process) -Property name

#outputuri
Get-Service > ./file.txt
notepad .\file.txt

Get-Service >> ./file_append.txt
notepad  .\file_append.txt


Get-Service | Out-File  ./file.txt
Get-Service | out-file -Append ./file_append.txt


Get-Service | Out-GridView
Get-Service | Out-GridView -OutputMode Multiple 

$meniu = Get-Service | Out-GridView -OutputMode Multiple 
$meniu1 = $meniu | Out-GridView -OutputMode Single
$meniu1


Get-Service  

Find-Module *word*

install-module PSWordModule 
Get-Command -Module PSWordModule 
New-WordDocument -WordDocName test.docx

Stop-Transcript


$cred = get-credential 
Invoke-Command -ComputerName lon-dc1, lon-cl1 -ScriptBlock {

Get-Service

}




Doar cele Running 
Sa inceapa cu B* si D*

export nume si status in csv


Get-Service | ? status -like "runn*"  

Get-Service | ? {($_.status -like "runn*" -and $_.name -like "b*") -or ($_.status -like "runn*" -and $_.name -like "d*")} | export-csv ./serv.csv -NoTypeInformation


#Module

Get-PSRepository

Find-module *html* -Repository  PSGallery
Install-Module pshtmltable -Repository PSGallery -Scope AllUsers -Force 

$env:PSModulePath -split ";"

Find-Script *word*

install-script Get-WlanPasswords  -Scope CurrentUser 

Get-PSSnapin

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force
Get-ExecutionPolicy


ls C:\Users\Administrator\Downloads -Recurse | Unblock-File 

#daca nu exista 
$env:PSModulePath -split ";"
mkdir C:\Users\Administrator\Documents\WindowsPowerShell\Modules


Get-Module


Import-Module ActiveDirectory 
get-alias gcm

Get-Command -Module server*

Get-WindowsFeature 
Add-WindowsFeature telnet-client

