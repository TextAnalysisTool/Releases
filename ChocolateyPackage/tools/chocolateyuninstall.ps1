$ErrorActionPreference = 'SilentlyContinue';

$shortcutName = 'TextAnalysisTool.NET.lnk'

Remove-Item "$env:Public\Desktop\$shortcutName" -Force
Remove-Item "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$shortcutName" -Force