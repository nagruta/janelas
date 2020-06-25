# janelas
configurator for Windows deployments

# ./a/
Main admin scripts for configuring, once the VM is up and running, but first...

# ./a/ps/
Windows admin scripts to establish, launch, and login the Ubuntu VM, using Vagrant and VirtualBox
At the very first time, execute in sequence:
* `by-hand-set-executionpolicy.ps1` (actually enter by-hand):
~~~
set-executionpolicy bypass -scope currentuser
~~~
* `establish.ps1`
After that, or after a subsequent shutdown of the VM, execute:
* `launch.ps1` or `launch-and-login.ps1`
When the VM is already up simply execute:
* `login.ps1`

# ./conf/ansible/
Ansible configuration files (playbooks, etc.).

# ./dist/
Intermediate directory created for downloaded installation distributions.

# ./vme/
VM environment with Vagrantfile and generated .vagrant directory. This path is mounted to /vagrant inside the VM.

# Target host Windows machines must be prepared for Ansible
* create user "ansible" with password matching your inventory
* add user "ansible" to group "Administrators"
* copy-and-paste the following into PowerShell as Administrator:
~~~
$url = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
$file = "$env:temp\ConfigureRemotingForAnsible.ps1"

(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)

powershell.exe -ExecutionPolicy ByPass -File $file
~~~
(copied from [https://docs.ansible.com/ansible/latest/user_guide/windows_setup.html#winrm-setup])
