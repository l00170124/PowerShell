#Script to Verify the installation of PowerShell was sucessful
$I = 0
$env:PSModulePath -split ';' |
ForEach-Object {"[{0:N0}] {1}" -f $I++, $_}