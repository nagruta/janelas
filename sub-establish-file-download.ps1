# establish file already exists or else download it
$targetpath = $args[0]
$targetfile = $args[1]
$urlbase = $args[2]
$targetspec = "$targetpath/$targetfile"
$sourceurl = "$urlbase$targetfile"
./sub-establish-path $args[0]
if (-not (Test-Path "${targetspec}")) {
  "downloading $targetspec from $sourceurl"
  Invoke-WebRequest -Uri $sourceurl -OutFile $targetspec -UseBasicParsing
}