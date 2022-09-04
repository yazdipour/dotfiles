# Installing Scoop
iwr -useb get.scoop.sh | iex
scoop bucket add extras
# Installing Choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# https://winstall.app/
# Hardware Monitor
winget install -e --id TechPowerUp.GPU-Z  
winget install -e --id CPUID.HWMonitor  
winget install -e --id CPUID.CPU-Z 
choco install winmtr-redux

# Sec
winget install -e --id WiresharkFoundation.Wireshark 
winget install -e --id Insecure.Nmap 
winget install icsharpcode.ILSpy
scoop install dnspy
scoop install x64dbg
scoop install dotPeek

# Communication 
winget install -e --id Telegram.TelegramDesktop 
winget install -e --id Cisco.WebexTeams
winget install -e --id Discord.Discord  
winget install -e --id SlackTechnologies.Slack  
winget install -e --id Microsoft.Teams 
winget install --name 'WhatsApp Desktop'
winget install --id=Zoom.Zoom  -e

# Windows Stuff
scoop install starship
winget install -e --id Armin2208.WindowsAutoNightMode
winget install -e --id QL-Win.QuickLook
winget install -e --id FedericoTerzi.espanso
winget install -e --id=sidneys.desktop-dimmer
winget install twinkletray
winget install RoundedTB
winget install Daum.PotPlayer
winget install --id=Valve.Steam  -e
winget install -e --id Meltytech.Shotcut
winget install -e --id Datronicsoft.SpacedeskDriver.Server
scoop install paint.net
scoop install nano
scoop bucket add nerd-fonts
scoop install terminal-icons
scoop install winfetch
choco install firacode

# DEV
winget install -e --id Microsoft.VisualStudioCode 
winget install -e --id OBSProject.OBSStudio 
winget install -e --id OpenJS.Nodejs
winget install -e --id Git.Git
winget install -e --id GitHub.cli 
winget install -e --id Axosoft.GitKraken
winget install -e --id Graphviz.Graphviz 
winget install -e --id SourceFoundry.HackFonts 
winget install -e --id Microsoft.PowerToys 
winget install -e --id Postman.Postman 
winget install -e --id Microsoft.VisualStudio.Community 
winget install -e --id Microsoft.WindowsTerminal 
winget install -e --id Microsoft.AzureCLI  
winget install -e --id dbeaver.dbeaver  
winget install -e --id DBBrowserForSQLite.DBBrowserForSQLite
winget install -e --id SweetScape.010Editor  
winget install -e --id LutzRoeder.Netron 
winget install -e --id Mirantis.Lens
winget install -e --id emqx.mqttx
winget install -e --id Docker.DockerDesktop
winget install -e --id Yarn.Yarn
winget install -e --id GoLang.Go.1.19
winget install -e --id OpenJS.NodeJS.LTS
winget install -e --id=Nvidia.GeForceExperience
winget install --id=Python.Python.3.10  -e
winget install --id=JetBrains.IntelliJIDEA.Community  -e
Install-Module Watch -Scope CurrentUser
scoop install k9s
scoop install terraform
choco install kubernetes-helm -y
