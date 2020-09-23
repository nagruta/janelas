$installdir = "C:\opt\Vagrant"
if (-not (Test-Path $installdir)) {
  ./dist/msi/vagrant_2.2.9_x86_64.msi
}
#$defaultbox = hashicorp/bionic64
#$defaultbox = "ubuntu/bionic64"
#$defaultbox = "ansible/tower"
#$defaultbox = "alisio/awx --box-version 1.0.0"
#$defaultbox = "darkwizard242/devopsubuntu1804"
#$defaultbox = "darkwizard242/ansibleubuntu1804"
#$defaultbox = "generic/ubuntu2004"
$defaultbox = "rdf/ubuntu2004-devops"
if (-not $(vagrant box list).Contains($defaultbox)) {
  vagrant box add $defaultbox
}
