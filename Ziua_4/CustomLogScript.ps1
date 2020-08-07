
do
{
   
   
   [datetime]$zi = read-host "LL/ZZ/An" 
   
   function Eventuri ($Log)
   {
       
       Get-EventLog -LogName $log| ? {$_.TimeGenerated -le $zi.AddDays(1) -and $_.TimeGenerated -ge $zi  } | ? { $_.EntryType -like "er*" -or  $_.EntryType -like "wa*"}


   }

   $App = Eventuri -log Application 
   $Sec = Eventuri -log Security
   $sys = Eventuri -log System 

  $CoutErrApp =  ($App | ? EntryType -Like "Error" | measure).Count
  $CoutWarApp =  ($App | ? EntryType -Like "wa*" | measure).Count

  $CoutErrSec =  ($Sec | ? EntryType -Like "Error" | measure).Count
  $CoutWarSec =  ($Sec | ? EntryType -Like "wa*" | measure).Count

  $CoutErrSys =  ($Sys | ? EntryType -Like "Error" | measure).Count
  $CoutWarSys =  ($Sys | ? EntryType -Like "wa*" | measure).Count
 
  
  $data= "_" + $zi.Day.ToString() + "_"+   $zi.Month.ToString()
  $zi > Raport_$data.txt
  "Application" >> Raport_$data.txt
  "---------------------------------------------------------------------------------" >> Raport_$data.txt

  $App >> Raport_$data.txt
  "Total erori in Application sunt  $CoutErrApp " >> Raport_$data.txt
  "Total warning in Application sunt  $CoutWarApp " >> Raport_$data.txt
  "" >> Raport_$data.txt

  "Security" >> Raport_$data.txt
  "---------------------------------------------------------------------------------" >> Raport_$data.txt

  $Sec >> Raport_$data.txt
  "Total erori in Security sunt  $CoutErrSec "   >> Raport_$data.txt
  "Total warning in Security sunt  $CoutWarSec " >> Raport_$data.txt
    "" >> Raport_$data.txt

  "System" >> Raport_$data.txt
  "---------------------------------------------------------------------------------" >> Raport_$data.txt
  $Sys >> Raport_$data.txt
  "Total erori in System sunt  $CoutErrSys "   >> Raport_$data.txt
  "Total warning in System sunt  $CoutWarSys " >> Raport_$data.txt
    "" >> Raport_$data.txt

  $x= read-host "Continuam ? y/n "
}
until ($x -Like "n")



