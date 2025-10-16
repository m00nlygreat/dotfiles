#Requires -runasadministrator

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# winget install --id Microsoft.PowerShell --source winget
winget install -e --id LGUG2Z.komorebi
winget install --id=AutoHotkey.AutoHotkey -e
winget install nushell

# winget install -e --id Microsoft.WindowsTerminal

# iex "& {$(irm get.scoop.sh)} -RunAsAdmin"

# scoop bucket add wez https://github.com/wez/scoop-wezterm.git
# scoop install wezterm-nightly

