# establish installation and setup, idempotently
$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
cd $scriptdir
./sub-establish-dist-all
# TODO: @@@ chocolately is too complicated to deal with for now
#./sub-install-chocolatey
./sub-install-virtualbox
./sub-install-vagrant
./sub-setup-vagrant