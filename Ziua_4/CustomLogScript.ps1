[datetime]$zi = "08/03/2020" 

$zi.ToShortDateString()

Get-EventLog -LogName Application | select -First 1 | select *

Get-EventLog -LogName Application | ? {$_.TimeGenerated -le $zi.AddDays(1) -and $_.TimeGenerated -ge $zi  }

