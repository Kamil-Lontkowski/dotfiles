Plik z profile znajduję się w `~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`
Do tego mam dodane do PATH `~\.local\bin`, tam są wszystkie binarki, takie jak `lazydocker` czy coś. Jest tam też folder autocompletions, w którym są uzupełnienia do niektórych binarek, np. rustup

# 1. Install Oh-My-Posh

```powershell
winget install JanDeDobbeleer.OhMyPosh -s winget
```

# 2. Install modules

```powershell
Install-Module Terminal-Icons \
Install-Module PSReadLine \
Install-module posh-git
```

# 3. Add theme to Oh-My-Posh

Copy this content into file inside `C:\Users\$USER\AppData\Local\Programs\oh-my-posh\themes\` name it for example `powerlevel10k_my.omp.json` (That's how it's named inside profile)
