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

Get-Module -ListAvailable 

#Custom Properties

Get-Service | ? status -like "run*"|  select name, @{n="CustomName";e={$_.name}} | gm
Get-Process  | select Handles, NPM, @{n="Suma";e={ [int]$_.Handles + [int]$_.NPM }}

Get-WmiObject win32_logicaldisk -filter "deviceid='c:'" | select __server, FreeSpace ,Size  , @{n="GB_FreeSpace";e={$_.Freespace /1gb -as [int]}}, @{n="GB_Size";e={$_.Size /1gb -as [int]}} 

get-volume  -DriveLetter c |select  @{n="MB_SizeRemaining";e={$_.SizeRemaining /1mb -as [int]}}, @{n="MB_Size";e={$_.Size /1mb -as [int]}} 


##########################################################

#filtrari SImple 
SursaDeDate | where capdetabel -like "cevreisacauti"

ping | ? { $_  -like "*-4*"}

$sursadedate = Get-EventLog -LogName Application  

$sursadedate | ? EntryType -like "error" 

#filtrari avansate 
SursaDeDate | where { $_.capdetabel -like "cevreisacauti"}

$sursadedate | ? { $_.EntryType -like "error" }

$sursadedate2 = ipconfig /all
$sursadedate2  | ? { $_ -like "*ipv4*"}




get-process 
<#
10 cei mai mari consumatori de resurse unici

NUmele , cpu 
#>
Get-Process | select processname ,cpu | sort cpu -Descending | select -first 10
Get-Process | select processname ,cpu | sort cpu | select -last 10

<#
get-service

#toate serviciile oprite cu si incep cu litera x
#porniti serviciile - whatif
# output 

#opriti serviciile
2- metode 
#>
Start-Sleep -Seconds 2


#Staus 
$servicestatus  = get-service | ? {$_.name -like "x*"}
$servicestatus

##########  v1
get-service | ? {$_.status -like "stop*" -and $_.name -like "x*"}
get-service | ? {$_.status -like "stop*" -and $_.name -like "x*"} | Start-Service -WhatIf
get-service | ? {$_.status -like "stop*" -and $_.name -like "x*"} | Start-Service 

get-service | ? {$_.name -like "x*"} | select name,status | export-csv ./status.csv -NoTypeInformation

get-service | ? {$_.status -like "run*" -and $_.name -like "x*"}
get-service | ? {$_.status -like "run*" -and $_.name -like "x*"} | Stop-Service -Force


######### v2

$serviceStart = get-service | ? {$_.status -like "stop*" -and $_.name -like "x*"}
$serviceStop =  get-service | ? {$_.status -like "runn*" -and $_.name -like "x*"}

$service.start()
$serviceStop.stop()

######### v3

$collection = get-service | ? {$_.status -like "stop*" -and $_.name -like "x*"}

foreach ($i in $collection)
{
    #Start-Service $i.name -WhatIf
    Start-Service $i.name 
}

$collection = get-service | ? {$_.status -like "run*" -and $_.name -like "x*"}

foreach ($i in $collection)
{
    #Start-Service $i.name -WhatIf
    Stop-Service $i.name -Force
}

######### v4

$collection = get-service | ? {$_.status -like "stop*" -and $_.name -like "x*"}

$collection | % {

Start-Service $_.name 
}

$collection = get-service | ? {$_.status -like "run*" -and $_.name -like "x*"}

$collection | % {

Stop-Service $_.name  -Force
}


write-host "prima comanda"
Start-Process ping localhost -Wait
write-host "a 2a comanda"

# kill notepad 

Get-Process | gm


#### Pipline Advance

## ByValue
help Get-Service -ShowWindow

"alg","sdasd","XblGameSave" | Get-Service 

Get-Content .\value.txt | Get-Service 


Get-Service | select name
help Start-Service -ShowWindow

## ByPropertyName

Get-ADComputer -Filter * | Test-Connection -count 1

Get-ADComputer -Filter *  |select name | gm 
Get-ADComputer -Filter * | gm

help Test-Connection  -ShowWindow

Get-ADComputer -Filter * | select @{n="computername";e={$_.name}} | Test-Connection -Count 1 -ErrorAction SilentlyContinue 



$lista = Get-Content E:\listapc.txt
$lista | select @{n="computername";e={$_}} | gm
$lista | select @{n="computername";e={$_}} | Test-Connection -count 1

$lista | % {Test-Connection $_ -count 1 } 

Test-Connection (Get-Content E:\listapc.txt) -count 1

########## Remote
Enable-PSRemoting -Force


$cred = Get-Credential
Enter-PSSession lon-dc1 -Credential $cred 
Enter-PSSession lon-dc1 

New-PSSession -ComputerName lon-dc1 


#one to many
$all = New-PSSession -ComputerName lon-cl1, lon-dc1

Invoke-Command $all  -ScriptBlock {
""
$env:COMPUTERNAME;$env:PROCESSOR_ARCHITECTURE
"---------------------------------------------------"
ipconfig /all

}


Invoke-Command -ComputerName lon-cl1,lon-dc1  -ScriptBlock {

hostname
}



$aplicatii = Get-WmiObject -Class Win32_Product | select Name, Version | Out-GridView -Title "Aplicatii instalate " -OutputMode Multiple
$aplicatii |foreach {
$appName = $_.Name
$MyApp = Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -eq $appName }
#$MyApp
$MyApp.Uninstall()
}



$aplicatii |foreach {
$appName = $_.Name
$check = $null 
$Check =Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -like $appName}


if ($Check -eq $null ) {write-host "APlicatia a fost stearsa !!"}
else {
write-host "Aplicatia nu a fost stearsa !!!" -ForegroundColor Yellow
$Check
}


}



