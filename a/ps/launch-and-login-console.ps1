$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
iex "$scriptdir/launch-console.ps1"
iex "$scriptdir/login-console.ps1"
