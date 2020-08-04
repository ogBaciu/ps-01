Get-Command *-help

Update-Help -Force

mkdir c:\alin\save
save-help -DestinationPath c:\alin\save
Update-Help -SourcePath c:\alin\save -Force