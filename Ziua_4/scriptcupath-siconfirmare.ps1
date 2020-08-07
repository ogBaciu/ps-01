<#
.Synopsis
   Short description
.DESCRIPTION
   Long description
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
#>

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
        $Path,

        [Parameter(Mandatory=$false,
                   ValueFromPipelineByPropertyName=$true,
                   Position=1)]
        [Switch]
        $switch
       

    )

    Get-Content $path

    $switch

if ($switch) {

    $dateangajati = import-csv $path 

$prelucrat = $dateangajati | select @{n="SamAccountName";e={"$($_.nume).$($_.prenume)"}}, @{n="UserPrincipalName";e={"$($_.nume).$($_.prenume)"}},`
@{n="Name";e={"$($_.nume)"}}, @{n="DisplayName";e={"$($_.nume) $($_.prenume)"}},@{n="GivenName";e={"$($_.nume)"}}, @{n="SurName";e={"$($_.prenume)"}}, `
@{n="Department";e={"$($_.Departament)"}},@{n="City";e={"$($_.Locatie)"}}

$prelucrat 

$prelucrat | foreach {

New-ADUser -SamAccountName $_.SamAccountName -UserPrincipalName $_.UserPrincipalName -Name $_.name -DisplayName $_.Displayname -GivenName $_.GivenName -SurName $_.SurName -Department $_.Department  -city $_.city  -AccountPassword (ConvertTo-SecureString "Pa55w.rd" -AsPlainText -force) -Enabled $True -PasswordNeverExpires $True -PassThru -whatif


}

}





