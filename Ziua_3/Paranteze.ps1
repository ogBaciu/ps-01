$error[0] # Ultima eroare

$lista = "1","2","3"
$lista[0] # Primul item din lista
$lista[-1] # Ultimul item

$testv 
${testv v}="test"

$lista | foreach {  $_ }


help Test-Connection  -ShowWindow 

$listatxt = Get-Content C:\Alin\PS-01\Ziua_3\lista.txt

Test-Connection -ComputerName $listatxt -Count 1
Test-Connection -ComputerName (Get-Content C:\Alin\PS-01\Ziua_3\lista.txt) -Count 1

Test-Connection -ComputerName "::1","localhost" -Count 1



$lista = (Get-ADComputer -Filter * ).name   #PS3 
$lista = Get-ADComputer -Filter * | select name -ExpandProperty  name  #PS2


Test-Connection -ComputerName $lista -Count 1

(Get-Service ).Name
(Get-Service ).DisplayName
(Get-Service ).Status


help Stop-Service -ShowWindow
Stop-Service -name (Get-Service  | ? name -like "l*").Name -WhatIf

Stop-Service -name (Get-Service  `
| ? name -like "l*").Name `
 -WhatIf

Get-Service | 
? name -like "l*" | 
export-csv ./testpipeline.csv -NoTypeInformation


"$lista" 
'$lista'

write-host "gicuta merge la munte $lista "
write-host 'gicuta merge la munte $lista '

$pass = "Pa$$ord{>"
$pass = 'Pa$$w0rd'




