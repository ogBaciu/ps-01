$api = "&apikey=f48c56c8"
$request = "Rogue One: A Star Wars Story"
$restApi = Invoke-WebRequest -Uri "http://www.omdbapi.com/?t=$request&plot=full$api"
$restApi.Content

$json = $restApi | ConvertFrom-Json

$json.Ratings | sort value
$json.Plot
start $json.Poster

$search = "star"

$restApi = Invoke-WebRequest -Uri "http://www.omdbapi.com/?s=$search&plot=full$api"

$json = $restApi | ConvertFrom-Json
$json.Search

$json.Search