$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
iex "$scriptdir/launch-desktop.ps1"
iex "$scriptdir/login-desktop.ps1"
