<#
.Synopsis
   get-ping
.DESCRIPTION
   get-ping
.EXAMPLE
   get-ping -ComputerName localhost -Count 2
.EXAMPLE
   get-ping -ComputerName localhost -Count 2 -txt
   Export to txt
#>
function get-ping
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
        $ComputerName,

        # Param2 help description
        [int]
        $Count=1,

        [switch]
        $txt

    )


        Begin
    {
    }
    Process
    {
     Test-Connection -ComputerName $ComputerName -Count $Count

    }
    End
    {

     if($txt) {   Test-Connection -ComputerName $ComputerName -Count $Count > get-ping.txt }
    }
    

   

}


<#
.Synopsis
   get-pc
.DESCRIPTION
   get-pc from AD
.EXAMPLE
   get-ping -ComputerName localhost -Count 2
.EXAMPLE
   get-ping -ComputerName localhost -Count 2 -txt
   Export to txt
#>
function get-PC
{
    [CmdletBinding()]
    [Alias()]
    [OutputType([int])]
    Param
    (


    )


Get-ADComputer -Filter * | select @{n="ComputerName";e={$_.Name}}

}