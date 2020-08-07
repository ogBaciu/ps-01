#FUnctie sa ne arate doar running sau stopped si ultimele  intrari sa le poti alege / ca nr
#get-service

function servicii ($status, $last)
{
Get-Service | ? status -like "*$status*" | select -Last $last
    
}

servicii -status st -last 8

