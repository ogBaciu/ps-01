Function Show-Message {
    [CmdletBinding()]
    param (
           [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   Position=0)]
            [string[]]
            $message
    )

    begin {
        Write-Output -InputObject "Inceputul functiei ! Se executa o singura data"
    }
    process {
    Write-Output -InputObject $message
    #Write-Output -InputObject $input
    #get-help about_automatic_variables
    }
    end {
        Write-Output -InputObject "Sfarsitul functiei ! Se executa o singura data"
        
    }



}

@("test1","test2") | Show-Message
"test1","test2" | Show-Message
Show-Message -message "test","test2","test3"
