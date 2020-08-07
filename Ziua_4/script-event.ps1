<#
.Synopsis
   Primul meu script
.DESCRIPTION
   Eventlog test
.EXAMPLE
   .\script-event.ps1 -LogName System -Newest 10
.EXAMPLE
   .\script-event.ps1 System -Newest 10 -verbose
#>

    [CmdletBinding()]
    [Alias()]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [string]
        $LogName,

        # Param2 help description
        [int]
        $Newest
    )




    Get-EventLog -LogName $LogName -Newest $Newest | select MachineName ,Index  , EntryType ,Message  ,TimeGenerated   | ft
    Get-EventLog -LogName $LogName -Newest $Newest | select MachineName ,Index  , EntryType ,Message  ,TimeGenerated   | Export-csv ./exportsample.csv -NoTypeInformation
    Write-Verbose "CSV exported to ./exportsample.csv "
    Get-EventLog -LogName $LogName -Newest $Newest | select MachineName ,Index  , EntryType ,Message  ,TimeGenerated   | ConvertTo-Html | OUT-FILE ./export-sample.html
    Write-Verbose "html exported to ./export-sample.html"

