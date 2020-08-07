Get-Command *schedule*

Get-Command -Module ScheduledTasks

$trigger = New-JobTrigger –Once –At (Get-Date).AddMinutes(2)

Register-ScheduledJob –Trigger $trigger –Name DemoJob –ScriptBlock { Get-EventLog –LogName Application }

Get-ScheduledJob | Select –Expand JobTriggers 

Get-ScheduledJob 


Get-Job

Receive-Job –Name DemoJob -Keep

Get-Job –Name DemoJob | Remove-Job
