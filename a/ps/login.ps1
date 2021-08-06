# launch vagrant
Push-Location
$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
cd "$scriptdir/../../vme/console"
vagrant ssh
Pop-Location
