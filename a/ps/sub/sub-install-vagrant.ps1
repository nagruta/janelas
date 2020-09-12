$installdir = "C:\opt\Vagrant"
if (-not (Test-Path $installdir)) {
  ./dist/msi/vagrant_2.2.9_x86_64.msi
}
#$defaultbox = hashicorp/bionic64
#$defaultbox = alisio/awx --box-version 1.0.0
#$defaultbox = "darkwizard242/devopsubuntu1804"
$defaultbox = "darkwizard242/ansibleubuntu1804"
#$defaultbox = "ubuntu/bionic64"
#$defaultbox = "ansible/tower"
if (-not $(vagrant box list).Contains($defaultbox)) {
  vagrant box add $defaultbox
}
