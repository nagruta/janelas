# launch vagrant
$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
cd $scriptdir
./sub-establish-path-and-cd.ps1 run/vagrant
vagrant up