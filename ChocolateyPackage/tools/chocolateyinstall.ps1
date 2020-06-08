$ErrorActionPreference = 'Stop';
$packageName  = 'textanalysistoolnet.portable'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://github.com/TextAnalysisTool/Releases/raw/master/TextAnalysisTool.NET.zip'
$checksum     = 'e80956bc3400220d055ba921aaa1172994a2fb187fdbe749fc5f76a18e7b323d'
$shortcutName = 'TextAnalysisTool.NET.lnk'
$portableEXE  = "$toolsDir\TextAnalysisTool.NET.exe"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  fileType       = 'ZIP' 
  url            = $url
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyShortcut -shortcutFilePath "$env:Public\Desktop\$shortcutName" -targetPath $portableEXE -WorkingDirectory $toolsDir
Install-ChocolateyShortcut -shortcutFilePath "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$shortcutName" -targetPath $portableEXE -WorkingDirectory $toolsDir

$WhoAmI=whoami
icacls.exe $toolsDir /grant $WhoAmI":"'(OI)(CI)'F /T | out-null