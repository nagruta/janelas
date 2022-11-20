# establish required software distributions
$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
# TODO: @@@ chocolately is too complicated to deal with for now
#./sub-establish-dist-nupkg-download "chocolatey.0.10.15.nupkg" "https://packages.chocolatey.org/"
# TODO: @@@ DEPRECATED Vagrant and Virtualbox
#iex "$scriptdir/sub-establish-dist-msi-download vagrant_2.2.9_x86_64.msi https://releases.hashicorp.com/vagrant/2.2.9/"
#iex "$scriptdir/sub-establish-dist-msi-download VirtualBox-6.1.6-137129-Win.exe https://download.virtualbox.org/virtualbox/6.1.6/"
#iex "$scriptdir/sub-establish-dist-msi-download VirtualBox-6.1.6-137129-Win.exe https://download.virtualbox.org/virtualbox/6.1.6/"
iex "$scriptdir/sub-establish-dist-msi-download qemu-w64-setup-20220831.exe https://qemu.weilnetz.de/w64/2022/"
iex "$scriptdir/sub-establish-dist-msi-download qemu-w64-setup-20220831.sha512 https://qemu.weilnetz.de/w64/2022/"
