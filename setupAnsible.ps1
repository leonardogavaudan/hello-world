Set-ExecutionPolicy Bypass -Force

powershell.exe -ExecutionPolicy ByPass -File ConfigureRemotingForAnsible.ps1

[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
chocolatey install python3 -y
Enable-WSManCredSSP -Role Server -Force

Set-ExecutionPolicy Bypass -Force

