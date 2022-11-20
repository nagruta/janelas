# establish installation, idempotently
Push-Location
$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
cd $scriptdir
./sub/sub-establish-dist-all
# TODO: @@@ chocolately is too complicated to deal with for now
#./sub-install-chocolatey
# TODO: @@@ DEPRECATED Vagrant and Virtualbox
#./sub/sub-install-virtualbox
#./sub/sub-install-vagrant
./sub/sub-install-qemu
Pop-Location
