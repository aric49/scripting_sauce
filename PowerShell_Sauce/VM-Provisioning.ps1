#!/powershell
# Note:  Run as Administrator Powershell

#Set Default Execution Policy
write-host "Setting default execution policy......."
Set-ExecutionPolicy ByPass -Scope LocalMachine

# Install Chocolately
write-host "Installing Chocolately......."
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))


#Upgrade Chocolately
write-host "Upgrading chocolately......."
choco upgrade chocolatey

#Install Packages
write-host "Installing Packages........."
choco install -y keepass
choco install -y notepadplusplus
choco install -y git
choco install -y curl
choco install -y firefox


#Map TechOps Network Drive:
write-host "Mapping Network Drive..........."
net use z: \\cltnas01\TechOps /persistent:yes
