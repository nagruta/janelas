# janelas
configurator for Windows deployments

### [./a/](a)
Main admin scripts for configuring, once the VM is up and running, but first...

### [./a/ps/](a/ps)
Windows admin scripts to establish, launch, and login the Ubuntu VM, using Vagrant and VirtualBox
At the very first time, execute in sequence:
* [by-hand-set-executionpolicy.ps1](a/ps/by-hand-set-executionpolicy.ps1) *actually enter by-hand*:
```powershell
set-executionpolicy bypass -scope currentuser
```
* [establish.ps1](a/ps/establish.ps1) only once
* [launch.ps1](a/ps/launch.ps1) or [launch-and-login.ps1](a/ps/launch-and-login.ps1)
* [login.ps1](a/ps/login.ps1) when the VM is already up

### [./conf/ansible/](conf/ansible)
Ansible configuration files (playbooks, etc.).

### [./dist/](dist)
Intermediate directory created for downloaded installation distributions.

### [./vme/console](vme/console)
VM environment with Vagrantfile and generated .vagrant directory. This path is mounted to /vagrant inside the VM.

## Target host Windows machines must be prepared for Ansible
* Create adminstrative user "jansible" by copying-and-pasting the following into PowerShell as Administrator:
```powershell
$username = "jansible"
$userpass = ConvertTo-SecureString -AsPlainText -Force -String "ChangeThisPassword!!!"
New-LocalUser -Name $username -Password $userpass
Add-LocalGroupMember -Group "Administrators" -Member $username
```
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*Note that the first execution of any of the playbooks herein will replace the password above
with the value of **ansible_password** set in your* [ansible inventory](conf/ansible/ansible-inventory-example.yml)
<br>
* Configure WinRM for ansible by copying-and-pasting the following into PowerShell as Administrator:
```powershell
$url = "https://gitlab.com/naluar/janelas/-/raw/master/a/ps/remote/ConfigureRemotingForAnsible.ps1"
$file = "$env:temp\ConfigureRemotingForAnsible.ps1"
(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)
powershell.exe -ExecutionPolicy ByPass -File $file
```
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*copied from* [https://docs.ansible.com/ansible/latest/user_guide/windows_setup.html#winrm-setup]
