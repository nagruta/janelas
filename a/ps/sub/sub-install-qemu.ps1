# install QEMU
# [helpful link https://silent-install.net/software/oracle/vm_virtualbox/5.2.12]
# [helpful link https://chocolatey.org/packages/virtualbox]
$installdir = "C:\opt\qemu"
if (-not (Test-Path $installdir)) {
  ../../dist/msi/qemu-w64-setup-20220831.exe
}
