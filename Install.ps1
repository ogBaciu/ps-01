Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install git -y

mkdir c:\Powershell
cd c:\Powershell
git init

git pull https://github.com/Fredy-SSA/ps-01


#Test