#Loops - An example of using Loops

#Syntax for Loops
#for (<Init>; <Condition>; <Repeat>)
#{
#   <Statement list>
#}

#executes every time the loop runs
for ($counter = 0; $counter -lt 10; $counter++) 
{ 
    $counter 
}

#We can iterate through an array using foreach
$MyArray = "K", "a", "r", "e", "n" 
foreach ($Letter in $MyArray) 
{ 
    $Letter 
}

#While loops Syntax
#while($val -ne 3) 
#{ 
#    $val++ Write-Host $val
#}

#A while loop that asks the user to enter a command

while(($inp = Read-Host -Prompt "Select a command") -ne "Q")
{
     switch($inp){ 
        L {"File will be deleted"} 
        A {"File will be displayed"} 
        R {"File will be write protected"} 
        Q {"End"} 
        default {"Invalid entry"} 
        }
    }

#Do/Until
$a = 0 
do 
{ 
    “Starting Loop $a” 
    $a 
    $a++ 
    “Now `$a is $a” 
} until ($a -ge 5)