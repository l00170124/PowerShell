#Script to find the number of modules in the PS gallery

$PGSM = Find-Module -Name *
"There are {0:N0} Modules in the PS Gallary" -f $PGSM.Count