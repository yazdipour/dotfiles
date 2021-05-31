# SETUP ENV
#Set-ExecutionPolicy -ExecutionPolicy Unrestricted
#New-Item $profile -Type File -Force
#notepad $profile

# INIT
#Start-Transcript 

# THEME
Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons
Set-PoshPrompt Paradox

# ENV
$repo= Join-Path $env:USERPROFILE -ChildPath \Source
$dl= Join-Path $env:USERPROFILE -ChildPath \Downloads
$docs= Join-Path $env:USERPROFILE -ChildPath \Documents

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

# VSCODE
Set-Alias c code
function cr($_){code $_ -r}

# BEEP
function beep(){[console]::beep(500,300)}
function beeep(){[console]::beep(2000,500)}

# WINDOWS
Set-Alias l ls
Set-Alias e explorer
Set-Alias w3m elinks
function wsls{wsl --shutdown}
function wsll{wsl -l -v}
function find($file, $txt){Get-ChildItem -Recurse -Include $file | select-string $txt} # Search in files
function openbin{start shell:RecycleBinFolder}
Set-Alias rmbin Clear-RecycleBin
function rmbuildfolders{Get-ChildItem .\ -include bin,obj,target -Recurse | ForEach-Object ($_) { remove-item $_.fullname -Force -Recurse }}
function smi{Watch-Command -Cont -ClearScreen {nvidia-smi.exe}} #while (1){cls;nvidia-smi;sleep 1}

## UTILS
Set-Alias bget Start-BitsTransfer
function weather($_){(curl "http://wttr.in/${_}").Content}
function mp4tomp3(){ffmpeg -i}
function compressmp4($_){ffmpeg -i $_ -vcodec h264 -acodec mp2 output.mp4}
