#Check existing version of PowerShell
$PSVersiontable

#Set an execution policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

#install NuGet (package provider)
Install-PackageProvider Nuget -MinimumVersion 2.8.5.201 -Force | Out-Null

#Install module
Install-Module -Name PowerShellGet -Force -AllowClobber

#make a directory to use for Poweshell exercises
mkdir c:\PowerShell