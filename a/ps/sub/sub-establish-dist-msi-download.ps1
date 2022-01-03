if ($args.Count -lt 2) {
  exit
}
$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
$targetfile = $args[0]
$urlbase = $args[1]
iex "$scriptdir/sub-establish-file-download $scriptdir/../../../dist/msi $targetfile $urlbase"
