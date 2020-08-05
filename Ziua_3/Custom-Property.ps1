Import-Csv .\users.csv | foreach-object {
$userprinicpalname = $_.SamAccountName + "@EXAMPLE.com"

-city 

New-ADUser -SamAccountName $_.SamAccountName -UserPrincipalName $userprinicpalname -Name $_.name -DisplayName $_.name -GivenName $_.cn -SurName $_.sn -Department $_.Department  -city $_.city  -AccountPassword (ConvertTo-SecureString "Pa55w.rd" -AsPlainText -force) -Enabled $True -PasswordNeverExpires $True -PassThru }

$dateangajati = import-csv .\hr-angajati.csv

$dateangajati | select @{n="SamAccountName";e={"$($_.nume).$($_.prenume)"}}, @{n="UserPrincipalName";e={"$($_.nume).$($_.prenume)"}},`
@{n="Name";e={"$($_.nume)"}}

533026213
Pa55w.rd
