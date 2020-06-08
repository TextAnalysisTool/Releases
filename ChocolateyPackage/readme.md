# Chocolatey Package for TextAnalysisTool

Folder contains the nuspec to generate the [chocolatey](https://chocolatey.org/) package for TextAnalysisTool

## What does Chocolatey Package do?

This will expand the zip file and create desktop shortcuts.

## Commands to test the package in local

Ps. Requires one-time [installation of Chocolatey Package manager](https://chocolatey.org/install) on local machine

Run the following commands in an Admin `PowerShell` window to generate the package and test installation/uninstallation using chocolatey:

```powershell
#ensure you are running this from the ChocolateyPackage folder
cd ChocolateyPackage

# to generate the nuget package
choco pack

# to test choco package from local machine
cinst textanalysistoolnet.portable -source .

# to test uninstall
cuninst textanalysistoolnet.portable
```