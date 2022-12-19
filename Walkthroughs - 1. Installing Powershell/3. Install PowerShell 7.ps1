#Script to instal PowerShell 7
#Set a variable using $

$MYPARMS = @{
  UseMSI = $true
  Quiet = $true
  AddExplorerContextMenu = $true
  EnablePSRemoting = $true
  }
C:\PowerShell\Install-PowerShell.ps1 @MYPARMS