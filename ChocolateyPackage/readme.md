# Chocolatey Package for TextAnalysisTool

Folder contains the nuspec to generate the [chocolatey](https://chocolatey.org/) package for TextAnalysisTool

## What does Chocolatey Package do?

This will expand the zip file and create desktop shortcuts.

## Commands to test the package in local

Ps. Requires one-time [installation of Chocolatey Package manager](https://chocolatey.org/install) on local machine

Run the following commands in an Admin `PowerShell` window to generate the package and test installation/uninstallation using chocolatey:

```powershell
# Ensure you are running this from the ChocolateyPackage folder
cd ChocolateyPackage

# Generate the nuget package
choco pack

# Verify installation of local choco package in local machine
cinst textanalysistoolnet.portable -source .

# Verify uninstall of local package
cuninst textanalysistoolnet.portable

# To publish to Chocolatey, first get the API Key from https://chocolatey.org/account and set it in local
choco apikey --key <key> --source https://push.chocolatey.org/

# Now publish to Chocolatey! Don't forget to update the version number!
choco push textanalysistoolnet.portable.2018.11.20.0.nupkg --source https://push.chocolatey.org/
```

## Troubleshooting package upload errors

If you see any package upload errors, check the logs at C:\ProgramData\chocolatey\logs