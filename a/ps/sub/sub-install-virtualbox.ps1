# install VirtualBox
# [helpful link https://silent-install.net/software/oracle/vm_virtualbox/5.2.12]
# [helpful link https://chocolatey.org/packages/virtualbox]
$installdir = "C:\opt\VirtualBox"
if (-not (Test-Path $installdir)) {
  ## TODO: ### --silent DOES NOTHING SO YOU WILL HAVE TO CLICK THROUGH GUI INSTALLATION
  ##../../dist/VirtualBox-6.1.6-137129-Win.exe --silent --msiparams INSTALLDIR=$installdir VBOX_INSTALLDESKTOPSHORTCUT=0 VBOX_INSTALLQUICKLAUNCHSHORTCUT=0 VBOX_REGISTERFILEEXTENSIONS=0 VBOX_START=0
  ../../dist/msi/VirtualBox-6.1.6-137129-Win.exe --msiparams INSTALLDIR=$installdir VBOX_INSTALLDESKTOPSHORTCUT=0 VBOX_INSTALLQUICKLAUNCHSHORTCUT=0 VBOX_REGISTERFILEEXTENSIONS=0 VBOX_START=0
  # ^ possible installation return codes: 0, 3010
}
#
# howto silent uninstall:
# MsiExec.exe /norestart /qn /x{4DA0F4B1-61B2-4BAD-8DAD-3461F7BD1369}
#   ^ possible uninstallation return codes: 0, 1605, 3010
#
# howto disable update check:
# You need following VBoxManage command. Note this setting is per User not per System.
# "%ProgramFiles%\Oracle\VirtualBox\VBoxManage.exe" setextradata global GUI/UpdateDate never
#
#./sub-establish-dist-download "vagrant_2.2.9_x86_64.msi" "https://releases.hashicorp.com/vagrant/2.2.9/"