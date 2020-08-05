[datetime]$ZiNastere = read-host "Adauga ziua de Nastere  luna/zi/ann !!"
$Azi = Get-date
<#
$Azi.Year
$ZiNastere.Year
#>
$difY =  $Azi.Year - $ZiNastere.Year

$difM = ($difY * 12) - (12 - $Azi.Month)

$Diferenta = $Azi - $ZiNastere

$dif = $Diferenta.Days.ToString()

write-host "Au trecut $dif  zile de cat te-ai nascut ! "  -ForegroundColor Green

write-host "Au trecut $difM  luni de cat te-ai nascut ! "  -ForegroundColor Green


if ($difM -gt 350 ){
Write-Host "Concluzie esti Batran !!"}
else {
Write-Host "Mai ai o sansa ! Traieste bine pana nu imbatranesti !!"
}
