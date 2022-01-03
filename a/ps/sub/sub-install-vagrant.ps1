$installdir = "C:\opt\VirtualBox"
if (-not (Test-Path $installdir)) {
  "VirtualBox is NOT yet installed. Run script again after it is."
  exit
}
$installdir = "C:\opt\Vagrant"
if (-not (Test-Path $installdir)) {
  ../../dist/msi/vagrant_2.2.9_x86_64.msi /norestart /qn INSTALLDIR=$installdir
  # until PATH is updated after restart
  $env:Path += ";$installdir\bin"
}
# TODO: ### THE INSTALLER ABOVE IS A GUI SO WE MUST WAIT FOR IT TO COMPLETE
if (-not (Test-Path $installdir)) {
  "Vagrant is NOT yet installed. Run script again after it is."
  exit
}
$scriptdir = Split-Path -Path $MyInvocation.MyCommand.Definition
iex "$scriptdir/sub-env-vagrant-home"
#$defaultbox = hashicorp/bionic64
#$defaultbox = "ubuntu/bionic64"
#$defaultbox = "ansible/tower"
#$defaultbox = "alisio/awx --box-version 1.0.0"
#$defaultbox = "darkwizard242/devopsubuntu1804"
#$defaultbox = "darkwizard242/ansibleubuntu1804"
#$defaultbox = "generic/ubuntu2004"
$defaultbox = "rdf/ubuntu2004-devops"
#cd $installdir/bin
#$env:Path += ";$installdir\bin"
if (-not $(vagrant box list).Contains($defaultbox)) {
  vagrant box add $defaultbox
}
