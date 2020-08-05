#Get-ChildItem C:\Alin\PS-01\Ziua_3 | ? name -like "*.csv" | select BaseName


$path = Get-ChildItem C:\Alin\PS-01\Ziua_3 | ? name -like "*.csv" 

$path.name | % {
($_).replace(".csv","")
}