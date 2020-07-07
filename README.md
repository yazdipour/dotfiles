# Shell Profile

## Powershell Profile

[▶ My Powershell Profile](profile.ps1)

To initiate powershell profile

```powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
New-Item $profile -Type File -Force
notepad $profile
# To Update
. $profile
```

## dir_colors

To set the dir_colors: `eval $( dircolors -b $HOME/.dir_colors )`

* [dir_colors_lightyellow File](dir_colors_lightyellow)
* https://github.com/ivoarch/dircolors-zenburn

![](https://github.com/ivoarch/dircolors-zenburn/raw/master/img/screenshot.png)

#### Help

https://github.com/BrodieRobertson/dotfiles
