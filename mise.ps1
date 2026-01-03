$shim = "$env:LOCALAPPDATA\mise\shims"
if (-not ($env:PATH -split ';' | Where-Object { $_ -eq $shim })) {
  setx PATH "$env:PATH;$shim"
}
