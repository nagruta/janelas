./sub-establish-path-and-cd.ps1 run/vagrant
if (-not (Test-Path "Vagrantfile")) {
    vagrant init hashicorp/bionic64
}