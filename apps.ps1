#Requires -runasadministrator

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

winget install -e --id Google.Chrome
winget install -e Vivaldi.Vivaldi
winget install -e Mozilla.Firefox
winget install -e Discord.Discord
winget install -e Kakao.KakaoTalk
winget install -e Valve.Steam
# winget install "Flow Launcher"
winget install -e --id Microsoft.VisualStudioCode
winget install -e Obsidian.Obsidian
winget install -e Figma.Figma
