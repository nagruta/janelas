# launch vagrant
Push-Location
$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
cd "$scriptdir/../env"
vagrant ssh
Pop-Location