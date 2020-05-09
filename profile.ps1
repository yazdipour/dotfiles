# SETUP ENV
#Set-ExecutionPolicy -ExecutionPolicy Unrestricted
#New-Item $profile -Type File -Force
#notepad $profile

# INIT
#Start-Transcript 

# THEME
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Agnoster

# ENV
$repo= Join-Path $env:USERPROFILE -ChildPath \source\repos
$dl= Join-Path $env:USERPROFILE -ChildPath \Downloads
$docs= Join-Path $env:USERPROFILE -ChildPath \Documents
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) { Import-Module "$ChocolateyProfile" }

# SUDO
Set-Alias su run-as-admin
function run-as-admin{Start-Process powershell -Verb runas}
function AsAdminOrNot {
	$wid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
	$prp = New-Object System.Security.Principal.WindowsPrincipal($wid)
	$adm = [System.Security.Principal.WindowsBuiltInRole]::Administrator
	$prp.IsInRole($adm)
}

# WIFI-SHARE
function turn-on-hotspot { netsh wla start ho}
function turn-off-hotspot { netsh wla stop ho}
Set-Alias w turn-on-hotspot
Set-Alias w! turn-off-hotspot
function wifi{netsh wlan show networks mode=Bssid}

# ANDROID
function adblog($_) {ADB logcat $_}
function adbloge($_) {ADB logcat *:E}
function adbconnect($_) {ADB connect $_}
function adbemulator($_) {cd $env:android_home/tools/ ; emulator.exe -avd $_}

# PING
function p1 {ping 1.1.1.1 -t}
function p192 {ping 192.168.1.1 -t}

# profile
function updatep {. $profile}
function editp {notepad $profile}

# GIT
Set-Alias g git
function gitm($_){git commit -m $_}
function gitc($_){git clone $_}
function gita($_){git add $_}
function gitp($_){git push $_}
function gitd($_){git diff $_}
function git-noupdate($_){git update-index --assume-unchanged $_}
function gitrm($_){git rm --cached $_}
function gits(){git status}
function update-fork($_){git remote add upstream $_ ; git fetch upstream ; git pull upstream master}

# ALIAS
Set-Alias c code
function cr($_){code $_ -r}
Set-Alias l ls
Set-Alias e explorer
Set-Alias w3m elinks
function wslstop{wsl --shutdown}
function wslls{wsl -l -v}
function beep(){[console]::beep(500,300)}
function beeep(){[console]::beep(2000,500)}
function clean-bin{Get-ChildItem .\ -include bin,obj -Recurse | ForEach-Object ($_) { remove-item $_.fullname -Force -Recurse }}
Set-Alias bget Start-BitsTransfer
Set-Alias bget Start-BitsTransfer
function find($file, $txt){Get-ChildItem -Recurse -Include $file | select-string $txt} # Search in files
function weather($_){(curl "http://wttr.in/${_}").Content}
