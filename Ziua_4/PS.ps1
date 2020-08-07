

do
{
   $x =  read-host "Add data / For close type x"


   if ($x -like "1")
        {
        
        ping localhost

        }
            else
            {
    
            write-host "Nu exista definit nimic pt comanda asta"
            }


}
until ($x -like "x")

#for
for ($i = 1; $i -lt 100; $i++)
{ 
    $i
    
}


1..99 | % {

$_

}


$countfilter =  Get-Service | ? name -like "a*" | ? status -like "run*"

0..$countfilter.Count | % {
Test-Connection "." -Count 1
Start-Sleep -Seconds 5
}


# 
$x = "x"
while ($x -like "x")
{
    

    $x =  read-host "Add data / For close type x"
}


help Test-Connection -ShowWindow

Test-Connection -ComputerName ff

while (Test-Connection -ComputerName localhost -Quiet) {

write-host "totul e ok !"

}


while ($true) {

Start-Sleep -Seconds 1
if (Test-Connection -ComputerName lon-cl1 -Quiet) {"Test Ok !"}
else {"Testul nu e ok"}


}


$x = "3"
switch ($x)
{
    '1' {"X este 1"}
    '2' {"X este 2"}
    '3' {"X este 3"}
    Default {"X nu este definit !"}
}




