
$dateangajati = import-csv .\hr-angajati.csv

$prelucrat = $dateangajati | select @{n="SamAccountName";e={"$($_.nume).$($_.prenume)"}}, @{n="UserPrincipalName";e={"$($_.nume).$($_.prenume)"}},`
@{n="Name";e={"$($_.nume)"}}, @{n="DisplayName";e={"$($_.nume) $($_.prenume)"}},@{n="GivenName";e={"$($_.nume)"}}, @{n="SurName";e={"$($_.prenume)"}}, `
@{n="Department";e={"$($_.Departament)"}},@{n="City";e={"$($_.Locatie)"}}

$prelucrat 

$prelucrat | foreach {

New-ADUser -SamAccountName $_.SamAccountName -UserPrincipalName $_.UserPrincipalName -Name $_.name -DisplayName $_.Displayname -GivenName $_.GivenName -SurName $_.SurName -Department $_.Department  -city $_.city  -AccountPassword (ConvertTo-SecureString "Pa55w.rd" -AsPlainText -force) -Enabled $True -PasswordNeverExpires $True -PassThru -whatif


}



533026213
Pa55w.rd
