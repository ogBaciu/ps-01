<#
.Synopsis
   Al doilea script
.DESCRIPTION
   Long description
.EXAMPLE
   .\script-event_avansat.ps1 -Spatiu sun -NrView 1
.EXAMPLE
   .\script-event_avansat.ps1 -Nume alin
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
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [ValidateCount(0,5)]
        [ValidateSet("sun", "moon", "earth")]
        [Alias("p1")] 
        [string]
        $Spatiu,

        # Param2 help description
        [Parameter(ParameterSetName='Parameter Set 1')]
        [AllowNull()]
        [AllowEmptyCollection()]
        [AllowEmptyString()]
        [ValidateScript({$true})]
        [ValidateRange(0,50)]
        [int]
        $NrView,

        # Param4 help description
        [Parameter(ParameterSetName='Parameter Set 1')]
        [string]
        $Path,

        # Param3 help description
        [Parameter(Mandatory=$true,ParameterSetName='Another Parameter Set')]
        [ValidatePattern("[a-z]*")]
        [ValidateLength(0,5)]
        [String]
        $Nume
    )


    if ($Spatiu -like "sun"){ write-host  $Spatiu  -ForegroundColor Cyan}
    elseif ($Spatiu -like "moon"){ write-host  $Spatiu  -ForegroundColor Green}
    elseif ($Spatiu -like "earth"){write-host  $Spatiu  -ForegroundColor Yellow}
    else {
    "Nu este definit"
    }

     $NrView

    1.. $NrView 

    $Nume

    get-content $Path



