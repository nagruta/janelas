# establish file already exists or else download it
if ($args.Count -lt 2) {
  exit
}
$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
$targetpath = $args[0]
$targetfile = $args[1]
$urlbase = $args[2]
$targetspec = "$targetpath/$targetfile"
$sourceurl = "$urlbase$targetfile"
iex "$scriptdir/sub-establish-path $targetpath"
if (-not (Test-Path "${targetspec}")) {
  "downloading $targetspec from $sourceurl"
  Invoke-WebRequest -Uri $sourceurl -OutFile $targetspec -UseBasicParsing
}
