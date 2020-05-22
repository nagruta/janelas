if ($args.Count -lt 2) {
  exit
}
$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
iex "$scriptdir/sub-establish-file-download $scriptdir/../../dist/msi $args[0] $args[1]"