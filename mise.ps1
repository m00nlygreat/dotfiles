# mise shims 경로 변수
$miseShims = Join-Path $Env:LOCALAPPDATA "mise\shims"

# 현재 사용자 PATH 가져오기
$path = [Environment]::GetEnvironmentVariable("Path", "User")

# 중복이 없을 때만 추가
if ($path -notmatch [regex]::Escape($miseShims)) {
  [Environment]::SetEnvironmentVariable(
    "Path",
    "$path;$miseShims",
    "User"
  )
}

