$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
iex "$scriptdir/launch.ps1"
iex "$scriptdir/login.ps1"