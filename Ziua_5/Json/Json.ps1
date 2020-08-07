$api = "&apikey=f48c56c8"
$request = "Rogue One: A Star Wars Story"
$restApi = Invoke-WebRequest -Uri "http://www.omdbapi.com/?t=$request&plot=full$api"
$restApi.Content

$json = $restApi | ConvertFrom-Json

$json.Ratings | sort value
$json.Plot
start $json.Poster

$search = "once"

$restApi = Invoke-WebRequest -Uri "http://www.omdbapi.com/?s=$search&plot=full$api"

$json = $restApi | ConvertFrom-Json
$json.Search

$json.Search.poster | % {

start $_
}


$web = Invoke-WebRequest -Uri "google.ro"
$web.links 
$web.InputFields
$web.Content



$test = Invoke-RestMethod -Uri https://dog.ceo/api/breeds/image/random
start $test.message

