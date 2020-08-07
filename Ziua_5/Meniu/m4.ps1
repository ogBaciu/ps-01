$meniu = @"
| ---  Meniu ---------- |
|=======================|
|   Press Key           |
| ------ 1 IpConfig-----|
| ------ 2 ping --------|
| ------ 3 computername |
| ------ 4 profile      |
|=======================|
"@

$meniu

do
{
$x = read-host "Meniu / X to close"
switch ($x)
{
   '1' {
   cls
   $meniu
   ipconfig /all
   }
   '2' { 
    cls
   $meniu
   ping localhost}
   '3' { 
    cls
   $meniu
   $env:COMPUTERNAME}
   '4' { 
    cls
   $meniu
   $env:ALLUSERSPROFILE }
   Default {
   cls
   "Nu este setat nimic !"
   $meniu
   }
}

}
until ($x -like "x")