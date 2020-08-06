$meniu = @"

| ---  Meniu --- |
|================|
|   Press Key    |
| ------ 1 ----- |
| ------ 2 ----- |
| ------ 3 ----- |
| ------ 4 ----- |
|================|
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