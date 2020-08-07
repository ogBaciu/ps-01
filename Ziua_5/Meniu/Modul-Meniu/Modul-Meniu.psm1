<#
.Synopsis
   Meniu
.DESCRIPTION
   Meniu
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
#>
function Get-Meniu
{
    [CmdletBinding()]
    [Alias()]
    [OutputType([int])]
    Param
    (

        # Param2 help description
        [string]
        $test="1"
    )


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
 
 $x = read-host "Type value"
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