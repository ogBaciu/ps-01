
#tabel1

#gather 20 events from the system log and pick out a few properties
    $events = Get-EventLog -LogName System -Newest 50 | select TimeGenerated, Index, EntryType, UserName, Message

#Create the HTML table without alternating rows, colorize Warning and Error messages, highlighting the whole row.
    $eventTable = $events | New-HTMLTable -setAlternating $false |
        Add-HTMLTableColor -Argument "Warning" -Column "EntryType" -AttrValue "background-color:#FFCC66;" -WholeRow |
        Add-HTMLTableColor -Argument "Error" -Column "EntryType" -AttrValue "background-color:#FFCC99;" -WholeRow

#Build the HTML head, add an h3 header, add the event table, and close out the HTML
    $HTML = New-HTMLHead
    $HTML += "<h3>Last 50 System Events</h3>"
    $HTML += $eventTable 

 
 #tabel2

#gather 20 events from the system log and pick out a few properties
    $events2 =    Get-Service | select Status,Name,DisplayName 

#Create the HTML table without alternating rows, colorize Warning and Error messages, highlighting the whole row.
    $eventTable2 = $events2 | New-HTMLTable -setAlternating $false |
        Add-HTMLTableColor -Argument "Stopped" -Column "Status" -AttrValue "background-color:#C3FF87;" -WholeRow |
        Add-HTMLTableColor -Argument "Running" -Column "Status" -AttrValue "background-color:#87EEFF;" -WholeRow

#Build the HTML head, add an h3 header, add the event table, and close out the HTML
  
    $HTML += "<h3>Services</h3>"
    $HTML += $eventTable2 | Close-HTML


#test it out
    set-content C:\test.htm $HTML
    & 'C:\Program Files\Internet Explorer\iexplore.exe' C:\test.htm

