## Powershell Profile

[▶ My Powershell Profile](profile.ps0)

To initiate powershell profile

```powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
New-Item $profile -Type File -Force
notepad $profile
# To Update
. $profile
```