# Powershell Profile

```powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
New-Item $profile -Type File -Force
notepad $profile
# To Update
. $profile
```

