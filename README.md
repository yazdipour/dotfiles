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

* dircolors_green
  * [File](dir_colors_green)

* dir_colors_lightblue
  * [File](dir_colors_lightblue)
  * https://github.com/arcticicestudio/nord-dircolors
![](https://raw.githubusercontent.com/arcticicestudio/nord-docs/develop/assets/images/ports/dircolors/installation-shell-rc.png)

* dir_colors_lightyellow
  * [File](dir_colors_lightyellow)
  * https://github.com/ivoarch/dircolors-zenburn
![](https://github.com/ivoarch/dircolors-zenburn/raw/master/img/screenshot.png)
