#Assign a name to a variable

$Rubbish = 1, 2, "a", "££" 
$Rubbish 

#clear contents of a variable

clear-variable -Name Rubbish 
$Rubbish 

#remove a variable

Remove-Variable -Name Rubbish

$Rubbish = 1, 2, "a", "££" 
#Gets the type of the variable (e.g. arrays, integers, strings)
$Rubbish.GetType()

#Cast a variable to a fixed type
[int]$Rubbish = 1 
$Rubbish.GetType()

#pass a string to a variable and convert it
[int]$Rubbish = 1 
$Rubbish = "123456789" 

#powershell cannot convert a string of letters to an integer
$Rubbish
[int]$Rubbish = 1 
$Rubbish = "This will give you an error!" 
$Rubbish

#A sinple tax calcualtion using variables
$amount = 111 
$VAT = 0.23 
$result = $amount * $VAT 
$result 
$text = "Total €$result is the sum of €$amount with $VAT% VAT" 
$text

#shows the date (US)
[datetime]$OGGI = "11/13/2022" 

#shows date above in ddmmyyy
$OGGI.ToString('dd-MM-yyyy')
$OGGI 
Get-Date -format dd/MM/yyyy
Get-Date | Format-List

#storing the output of a command
$dir_listing = Get-ChildItem c:\ 
$dir_listing
#test if path exists
test-path variable:\dir_listing

#create & protect a variable as read only
New-Variable KarensVariable -value 3.142 -description "PI with write-protection" -option ReadOnly 
Get-Variable KarensVariable