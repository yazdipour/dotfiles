# https://winstall.app/
winget install -e --id Microsoft.VisualStudioCode 
winget install -e --id OBSProject.OBSStudio 
winget install -e --id OpenJS.Nodejs
winget install -e --id 7zip.7zip 
winget install -e --id Git.Git
winget install -e --id GitHub.cli 
winget install -e --id Axosoft.GitKraken
winget install -e --id Telerik.Fiddler 
winget install -e --id Graphviz.Graphviz 
winget install -e --id SourceFoundry.HackFonts 
winget install -e --id Insecure.Nmap 
winget install -e --id Microsoft.PowerToys 
winget install -e --id Postman.Postman 
winget install -e --id Telegram.TelegramDesktop 
winget install -e --id Microsoft.VisualStudio.Community 
winget install -e --id Microsoft.WindowsTerminal 
winget install -e --id WiresharkFoundation.Wireshark 
winget install -e --id TechPowerUp.GPU-Z  
winget install -e --id CPUID.HWMonitor  
winget install -e --id CPUID.CPU-Z 
winget install -e --id Discord.Discord  
winget install -e --id SlackTechnologies.Slack  
winget install -e --id Microsoft.Teams 
winget install -e --id Microsoft.AzureCLI  
winget install -e --id dbeaver.dbeaver  
winget install -e --id DBBrowserForSQLite.DBBrowserForSQLite
winget install -e --id SweetScape.010Editor  
winget install -e --id LutzRoeder.Netron 
winget install -e --id Armin2208.WindowsAutoNightMode
winget install -e --id QL-Win.QuickLook
winget install -e --id clsid2.mpc-hc
winget install -e --id Mirantis.Lens
winget install -e --id emqx.mqttx
winget install -e --id Cisco.WebexTeams
winget install -e --id Docker.DockerDesktop
winget install -e --id Yarn.Yarn
winget install -e --id GoLang.Go
winget install -e --id OpenJS.NodeJS.LTS
winget install -e --id Ookla.Speedtest
winget install -e --id ShareX.ShareX
winget install -e --id FedericoTerzi.espanso
winget install -e --id voidtools.Everything
winget install -e --id Balena.Etcher
winget install --name 'WhatsApp Desktop'
winget install -e --id=Nvidia.GeForceExperience
winget install --id=Zoom.Zoom  -e
winget install --id=Python.Python.3  -e
winget install --id=JetBrains.IntelliJIDEA.Community  -e
winget install --id=Valve.Steam  -e
winget install -e --id Meltytech.Shotcut

Install-Module oh-my-posh -Scope CurrentUser
PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
Install-Module Watch -Scope CurrentUser

iwr -useb get.scoop.sh | iex
scoop bucket add extras
scoop install k9s
scoop install paint.net
scoop install terraform
scoop install nano
scoop install espanso
scoop bucket add nerd-fonts
scoop install firacode
scoop install terminal-icons

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install kubernetes-helm -y
