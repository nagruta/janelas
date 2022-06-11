if ($args.Count -lt 1) {
  exit
}
$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
$path = $args[0]
iex "$scriptdir/sub-establish-path.ps1 $path"
cd $path