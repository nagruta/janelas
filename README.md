# janelas
configurator for Windows installations

# The target machine must be prepared for Ansible
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
