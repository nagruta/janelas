# launch vagrant
param ([string]$vmedir = 'console')
Push-Location
$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
cd "$scriptdir/../../vme/$vmedir"
vagrant up
Pop-Location
