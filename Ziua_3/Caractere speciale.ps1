$lista = (Get-ADComputer -Filter * ).name   #PS3 



"$lista" 
'$lista'

write-host "gicuta merge la munte $lista "
write-host 'gicuta merge la munte $lista '

$pass = "Pa$$ord{>"
$pass = 'Pa$$w0rd'

$pass = "Pa`$`$ord"

write-host "`$lista"


$Html = "<h1>Test `" - Ceva </h1>"


$html = @"

<h1>Test   " - Ceva $lista </h1>

<form>
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value="$lista">
</form>
{tralalala}

"@
