
Import-Module posh-git
Import-Module Terminal-Icons
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

##
# PSReadLine, see https://github.com/PowerShell/PSReadLine
##
## behaviour of Tab key autocomplete
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
## From docs:
## With these bindings, up arrow/down arrow will work like PowerShell/cmd if the
## current command line is blank. If you've entered some text though, it will
## search the history for commands that start with the currently entered text.
##
## Like zsh completion.
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
# Set-PSReadLineOption -EditMode Vi


function pifour { ssh pi@192.168.0.14 }

function pizero { ssh pi@192.168.0.10 }

function time { $Command = "$args"; Measure-Command { Invoke-Expression $Command 2>&1 | out-default} }


# Source every file in autocompletions folder 
$UserAutoCompletions = "C:\Users\werbu\.local\autocompletions"
Get-ChildItem -Path $UserAutoCompletions -Filter *.ps1 | ForEach-Object {
    . $_.FullName
}

$ENV:FZF_DEFAULT_OPTS=@"
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8
"@

$ENV:BAT_THEME="Catppuccin-mocha"

function quick { Set-Location 'C:\Users\werbu\OneDrive\quicknotes' }

function cleanScala {
	Remove-Item -Recurse -Path .\.bsp
	Remove-Item -Recurse -Path .\.metals
	Remove-Item -Recurse -Path .\.scala-build
	Remove-Item -Recurse -Path .\null
}
Set-Alias -Name k -Value kubectl

oh-my-posh init pwsh --config 'C:\Users\werbu\AppData\Local\Programs\oh-my-posh\themes\powerlevel10k_my.omp.json' | Invoke-Expression
