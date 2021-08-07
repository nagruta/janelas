$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
iex "$scriptdir/login.ps1 desktop"
