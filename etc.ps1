#Requires -runasadministrator

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

komorebic quickstart

Copy-Item -Path "$PSScriptRoot\*" -Destination $env:USERPROFILE -Recurse -Force
