# Chocolatey Package for TextAnalysisTool

Folder contains the nuspec to generate the [chocolatey](https://chocolatey.org/) package for TextAnalysisTool

## What does Chocolatey Package do?
This will expand the zip file and create desktop shortcuts.

## Commands to test the package in local

Ps. Requires one-time [installation of Chocolatey Package manager](https://chocolatey.org/install) on local machine

Here are the commands to test the package generation in local:

```powershell
# to generate the nuget package
choco pack

# to test choco package from local machine
cinst textanalysistoolnet.portable -source C:\git\Releases\ChocolateyPackage

# to test uninstall
cuninst textanalysistoolnet.portable
```