#/!/bin/sh
 
echo "What is your name?"
read myName

while  [ ${#myName} -lt 3 ] || [ ${#myName} -gt 20 ]
	do
	echo "Name must be between 3 and 20 characters long."
	echo "What is your name?"
		while  [[ $myName =~ [^a-zA-Z]+ ]]
			do 
			echo "Invalid character(s)."
			echo "What is your name?"
			read myName
		done 
	read myName
done
 
echo "Hello $myName"
 
echo "Please input an integer between 3 and 100:"
read myNum

while [ "$myNum" == "" ]
	do
	echo "Please input an integer between 3 and 100:"
	read myNum
done

while ! [[ "$myNum" =~ ^[0-9]+$ ]]
	do
	echo "Please input an integer between 3 and 100:"
	read myNum
done

while [ "$myNum" -lt 3 ] || [ "$myNum" -gt 100 ]
	do
	echo "Please input an integer between 3 and 100:"
	read myNum
done

echo "You entered $myNum"

let counter=0

if ! [ $(($myNum%2)) == 0 ]
	then
	let counter=1
fi


while [[ $counter -le $myNum ]]
	do
	echo $counter
	let counter=$counter+2
	sleep 0.3
done

echo "There you go!"
