<#
.Synopsis
   Export file
.DESCRIPTION
   Export file 
.EXAMPLE
   .\switch.ps1 -Status Stopped -html
.EXAMPLE
   .\switch.ps1 -Status Running -html
.EXAMPLE
   .\switch.ps1 -Status Stopped -csv
.EXAMPLE
   .\switch.ps1 -Status Stopped -html
.EXAMPLE
   .\switch.ps1 -Status Stopped -txt
.INPUTS
   Inputs to this cmdlet (if any)
.OUTPUTS
   Output from this cmdlet (if any)
.NOTES
   General notes
.COMPONENT
   The component this cmdlet belongs to
.ROLE
   The role this cmdlet belongs to
.FUNCTIONALITY
   The functionality that best describes this cmdlet
#>
[CmdletBinding(DefaultParameterSetName='Parameter Set 1', 
                  SupportsShouldProcess=$true, 
                  PositionalBinding=$false,
                  HelpUri = 'http://www.microsoft.com/',
                  ConfirmImpact='Medium')]
    [Alias()]
    [OutputType([String])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='Parameter Set 1')]
        [ValidateSet("Stopped", "Running")]
        [Alias("p1")] 
        $Status,


        [Parameter(ParameterSetName='Parameter Set 1')]
        [switch]
        $html,

        [Parameter(ParameterSetName='Parameter Set 1')]
        [switch]
        $csv,

        [Parameter(ParameterSetName='Parameter Set 1')]
        [switch]
        $txt
        )

Get-Service | ? status -like "$status"

if ($txt) {

Get-Service | ? status -like "$status" > serv.txt

}


if($html)
{

get-service | ConvertTo-Html | Out-File serv.html
}


if($csv) 
{
Get-Service | export-csv serv.csv -NoTypeInformation
}


