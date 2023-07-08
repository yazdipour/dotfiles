# SETUP ENV
#Set-ExecutionPolicy -ExecutionPolicy Unrestricted
#New-Item $profile -Type File -Force
#notepad $profile

Set-Alias x exit
Set-Alias l ls
Set-Alias e explorer
Set-Alias v nvim
Set-Alias cat bat -Option AllScope
Set-Alias grep rg
Set-Alias find fd
Set-Alias bget Start-BitsTransfer
Set-Alias rmbin Clear-RecycleBin
Set-Alias about winfetch
function q{Invoke-command -ScriptBlock {exit}}
function pt{procs --tree}
function pw{procs --watch}
function su{Start-Process powershell -Verb runas}
function openbin{start shell:RecycleBinFolder}
function rmbuildfolders{Get-ChildItem .\ -include bin,obj,target -Recurse | ForEach-Object ($_) { remove-item $_.fullname -Force -Recurse }}
function smi{Watch-Command -Cont -ClearScreen {nvidia-smi.exe}} #while (1){cls;nvidia-smi;sleep 1}
function wifi{netsh wlan show networks mode=Bssid}
function wport{netstat -a -n -o}
# ENV
$repo= Join-Path $env:USERPROFILE -ChildPath \Source
$dl= Join-Path $env:USERPROFILE -ChildPath \Downloads
$docs= Join-Path $env:USERPROFILE -ChildPath \Documents

#WSL
function wsls{wsl --shutdown}
function wsll{wsl -l -v}

# ANDROID
function adblog($_) {ADB logcat $_}
function adbloge($_) {ADB logcat *:E}
function adbconnect($_) {ADB connect $_}
function adbemulator($_) {cd $env:android_home/tools/ ; emulator.exe -avd $_}

# PING
function p1 {ping 1.1.1.1 -t}
function p192 {ping 192.168.1.1 -t}

# profile
function updatep {. $PROFILE}
function editp {v $PROFILE}

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
function gitl(){git log --graph --oneline --decorate}
function update-fork($_){git remote add upstream $_ ; git fetch upstream ; git pull upstream master}

# VSCODE
Set-Alias c code
function cr($_){code $_ -r}

# BEEP
function beep(){[console]::beep(500,300)}
function beeep(){[console]::beep(2000,500)}

## UTILS
function weather($_){(curl "http://wttr.in/${_}").Content}
function mp4tomp3(){ffmpeg -i}
function compressmp4($_){ffmpeg -i $_ -vcodec h264 -acodec mp2 output.mp4}
function cht($_){(curl "https://cht.sh/${_}?Q&style=bw").Content}
function penv(){python -m venv .venv} 

# Modules

Import-Module PSReadLine
Import-Module -Name Terminal-Icons
Set-PSReadLineOption -PredictionSource History

Invoke-Expression (&starship init powershell)
