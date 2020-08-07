
function Eventuri ($LogName , $Newest)
{
    Get-EventLog -LogName $LogName -Newest $Newest | select MachineName ,Index  , EntryType ,Message  ,TimeGenerated 
    Get-EventLog -LogName $LogName -Newest $Newest | select MachineName ,Index  , EntryType ,Message  ,TimeGenerated   | Export-csv ./exportsample.csv -NoTypeInformation
    Get-EventLog -LogName $LogName -Newest $Newest | select MachineName ,Index  , EntryType ,Message  ,TimeGenerated   | ConvertTo-Html | OUT-FILE ./export-sample.html
    


}

Eventuri -LogName system -Newest 5 | ft 