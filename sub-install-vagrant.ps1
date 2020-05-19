$installdir = "C:\opt\Vagrant"
if (-not (Test-Path $installdir)) {
  ./dist/msi/vagrant_2.2.9_x86_64.msi
}