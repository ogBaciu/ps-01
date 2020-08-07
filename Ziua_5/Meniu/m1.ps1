$meniu = "ping","ipconfig","Test-Connection"


$alese = $meniu | Out-GridView -Title "Meniu" -OutputMode Single


if ($alese -like "ipconfig" )
{
    ipconfig /all
}
elseif ($alese -like "ping" )
{
    $ip = Read-Host "Add IP"
    ping $ip
}
elseif ($alese -like "Test-Connection" )
{
    Test-Connection ::1
}
else {"alooo alege numai o varianta !!!"}

$serv = Get-Service | Out-GridView -OutputMode Multiple 

$serv | Stop-Service -WhatIf