

Get-Command | ? name -like get*
get-help


Get-Alias 

$sesiune = "Orice info 123"
$sesiune

Get-Command *Variable

get-help  New-Variable  -Examples
New-Variable -Name gicu -Value 124 
Set-Variable -Name gicu -Value "alta valoare"
Get-Variable

$gicu

#
$gicu = $null 
Clear-Variable
#
$a = ""

$b = $null
$a -eq $b

$a.GetType()

#string
[string]$a = 1
[string]$b = 2222

$a + $b 

#int
$a = 1
$b = 2222

[int]$a + [int]$b 
[string]$a + [string]$b 

$int = 2
$string = "2"
$int.GetType()
$string.GetType()

$int = $string
$int = $int * 4

notepad .\script.ps1
ise .\script.ps1
code .\script.ps1

ii C:\Alin
ii .\script.ps1


Get-Alias -Definition Set-Location
Get-Alias cd

Get-Alias -Definition Get-Service 

get-help Get-Variable 
get-help Get-Variable -Examples 
get-help Get-Variable -online
get-help Get-Variable -full
get-help Get-Variable -ShowWindow

man Get-Variable -ShowWindow
help Get-Variable -ShowWindow

Show-Command 
Get-Command

get-help Test-Connection | select *  
get-help | select *  

get-help * | ? Synopsis -like "*ICMP*"

Get-Command test*

Show-Command 

Start-Transcript -Path c:\alin\transcript.txt

help Test-Connection -ShowWindow

Get-Command -Module Microsoft.PowerShell.Manage*

help Test-ComputerSecureChannel -ShowWindow

help Test-Path -ShowWindow

Test-Path C:\Alin

Stop-Transcript 

Get-Command te*-*e

$test= "tralalal"

get-help about_*
get-help about_If  -ShowWindow
get-help about_Comparison_Operators -ShowWindow
get-help about_Aliases -ShowWindow

Get-Command -Verb get
Get-Command -Noun *conn*

Get-Command get-*
Get-Command *-*conn*

get-help about_If  -ShowWindow
get-help about_*switch*  -ShowWindow



get-help Get-Service -ShowWindow
get-help Get-EventLog -ShowWindow

Get-EventLog -LogName Application -Index  13482,  13481, 13477


Get-EventLog -LogName Application | Out-GridView

Get-EventLog -LogName Application -EntryType Error, Warning

Get-EventLog -LogName Application -EntryType Error, Warning -Newest 20 | Out-GridView

Get-EventLog -LogName Application -EntryType Error, Warning -Newest 20 | fl

Get-EventLog -LogName Application -EntryType Error, Warning -Newest 20 | ft -AutoSize -Wrap


et-ADComputer -Filter * -Properties *
Get-ADuser -Filter * | select * -First 1
Get-ADuser -Filter *  -Properties * | select *  -First 1 
Get-ADuser -Filter *  -Properties * | select name,PasswordLastSet |  gm
Get-ADuser -Filter *  -Properties * |  gm
Get-ADuser -Filter *  -Properties PasswordLastSet | select * -first 1 | export-csv c:\aduser.csv -NoTypeInformation 

get-command get-ad*

Get-ADGroup  -Filter * -Properties *

Get-ADGroup  -Filter * | select name

Get-ADGroupMember Sales

help get-aduser -ShowWindow

Get-ADGroup  -Filter * | Get-ADGroupMember | select name

Get-ADGroup  -Filter * | ? name -like "sales" |  Get-ADGroupMember 

Get-ADGroup  -Filter * | foreach {


""
$_.name
"-------------------------------------------------------"

Get-ADGroupMember  $_.name | select name

} > c:\listaGrup.txt

Get-Service | select * -first 1
Get-Service | gm

Get-Service | select *  |ft -AutoSize -Wrap

Get-Service | select * 

$lista = "item1","item2","item3"
$lista

$listaColoane = Get-Service

$lista | foreach {
"Asta este linia " + $_
}

$listaColoane | % {
$_.DisplayName + " |  " + $_.Status

}



#Pipeline


get-service | ? name -like "a*" | gm

Get-Service | select name  



