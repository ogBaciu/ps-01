$meniu = @"

|        ---  Meniu ---       |
|=============================|
|         Press Key           |
| ------ 1 -  ipconfig  ----- |
| ------ 2 -  ping      ----- |
| ------ 3 -  Comp Name ----- |
| ------ 4 -  Profile   ----- |
|=============================|
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
   ipconfig /all}
   '2' { ping localhost}
   '3' { $env:COMPUTERNAME}
   '4' { $env:ALLUSERSPROFILE }
   Default {
   cls
   "Nu ai apasat nimic !"
   $meniu
   }
}

}
until ($x -like "x")