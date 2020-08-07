<#
.Synopsis
   Copy Module
.DESCRIPTION
   Copy 1 module
.EXAMPLE
   copy-module modulepath
.EXAMPLE
   copy-module -Path modulepath
#>
function Copy-Module
{
    [CmdletBinding()]
    [Alias()]
    [OutputType([int])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [string]
        $Path
    )

    Begin
    {

    }
    Process
    {

     $Spath = ($path).split("\")[-1]
     "C:\Program Files\WindowsPowerShell\Modules\$path"
     Robocopy $path "C:\Program Files\WindowsPowerShell\Modules\$spath" /mir

    }
    End
    {
    }
}