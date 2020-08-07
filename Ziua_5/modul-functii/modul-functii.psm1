function Test-Function
{
 param($Parameter1=’Default Value1’, $Parameter2=’Default Value2’)
 “You entered $Parameter1 and $Parameter2”
} 

function Test-Me {
 param
 (
 [Parameter(Mandatory=$true, HelpMessage=’Enter your name please’)]
 $name
 )
 “You entered $name.”
}

