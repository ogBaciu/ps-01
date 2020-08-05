$string = "           Ana are mere ! .Gigel are pere !                    "

$string.GetType()

$string | gm

$String.Length

$string.ToUpper()
$string.ToLower()

$string.Split(".")
$string.Split(".")[1]

$string.Substring(0,3)

$string.Replace("Ana","Mircea")

$string.Replace("Ana","Mircea").Replace("Gigel","Ionel")

$string.Trim()

$string

[datetime]$timp = "12/2/2006"
$timp | gm

$timp.DayOfWeek
$timp.DayOfYear
$timp.DateTime


$timpReal = get-date
$timpReal.DateTime

$timpReal.AddDays(30)
$timpReal.AddMonths(3)

$timpReal.ToShortDateString()

$string2 = $timpReal.ToShortDateString().ToString()
$string2 | gm


    Get-Date -UFormat "%D - %d / %Y  # %y  -- %T %Z"
    $Time = Get-Date
    $Time.ToUniversalTime()

[datetime]$datanasterii = "07/15/1979"
$azi = Get-Date

$azi - [datetime]$datanasterii  



