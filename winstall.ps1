winget install --id=Microsoft.VisualStudioCode ; winget install --id=OBSProject.OBSStudio ; winget install --id=OpenJS.Nodejs
winget install --id=7zip.7zip ; winget install --id=GitHub.cli ; winget install --id=Telerik.Fiddler ; winget install --id=Git.Git
winget install --id=Graphviz.Graphviz ; winget install --id=SourceFoundry.HackFonts ; winget install --id=Insecure.Nmap ; winget install --id=Microsoft.PowerToys 
winget install --id=Postman.Postman ; winget install --id=Telegram.TelegramDesktop ; winget install --id=Microsoft.VisualStudio.Community 
winget install --id=Microsoft.WindowsTerminal ; winget install --id=WiresharkFoundation.Wireshark ; winget install --id=TranslucentTB.TranslucentTB
winget install TechPowerUp.GPU-Z  ; winget install CPUID.HWMonitor  ; winget install CPUID.CPU-Z 
winget install Discord.Discord  ; winget install SlackTechnologies.Slack  ; winget install Microsoft.Teams 
winget install Microsoft.AzureCLI  ; winget install dbeaver.dbeaver  ; winget install DBBrowserForSQLite.DBBrowserForSQLite
winget install SweetScape.010Editor  ; winget install LutzRoeder.Netron 
winget install "Auto Dark Mode"; winget install quicklook; winget install clsid2.mpc-hc
winget install lens; winget install mqttx

Install-Module oh-my-posh -Scope CurrentUser
PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
Install-Module -Name Terminal-Icons -Repository PSGallery
Install-Module Watch -Scope CurrentUser

choco install -y nano
