# Trick 

$Lista = "Get-date","ping localhost","Ipconfig"
& $Lista[2] 


$date = "Get-Date"
& $date

A tick is used to construct several characters that can be used in strings:
Description        String      ASCII character code
Null                `0          0
Bell sound          `a          7
Backspace           `b          8
New page form feed  `f          12
Line feed           `n          10
Carriage return     `r          13
Horizontal tab      `t          9
Vertical tab        `v          11
The tab character, for example, may be included in a string:

Write-Host "First`nSecond"

Write-Host "First`vSecond"

#Doar PS fara PS ISE 
1..10 | % {
Start-Sleep -Seconds 1
$_
Write-Host "`a" 

}


 $Error | Out-GridView

 $Error[0] # The last error

 $object = [PSCustomObject]@{
Array = @(1, 2, 3, 4, 5)
}


 $object


$object # Shows 1, 2, 3, and 4
$formatenumerationlimit = 3
$object # Shows 1


$arr = 1, 2, 3, 4
“Joined based on OFS: $arr”
$ofs = ‘, ‘
“Joined based on OFS: $arr”

# send to clipboard
history | clip
ls | clip 


start iexplore # start new process 
start iexplore -verb RunAs  #Runs a process

Get-Random -Minimum 1000 -Maximum 9999

#test ports
$tcpClient = New-Object System.Net.Sockets.TcpClient
$tcpClient.Connect("127.0.0.1", 135)
$tcpClient.Connected
$tcpClient.Close()

$File = New-Item NewFile.txt -Force
$File | Get-Member -MemberType Property

$File = New-Item NewFile.txt
$File.CreationTime = Get-Date -Day 1 -Month 2 -Year 1692



$arrayOfArrays = @(
@(1, 2, 3),
@(4, 5, 6),
@(7, 8, 9)
)

$arrayOfArrays[0][0]

$arrayOfArrays[1][0]

