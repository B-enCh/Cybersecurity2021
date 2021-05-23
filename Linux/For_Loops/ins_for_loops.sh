# list variables
months=(
    'january'
    'february'
    'march'
    'april'
    'may'
    'june'
    'july'
    'august'
    'september'
    'october'
    'november'
    'december'
)
days=('mon' 'tues' 'wed' 'thur' 'fri' 'sat' 'sun')
numbers=('1' '2' '3' '4' '5' '6' '7' '8' '9')
#print out months

for months in ${months[@]}
do
	echo  $months
done

#Checking status of days

for day in ${days[@]}
do
    if [ $day = 'sun' ] || [ $day = 'sat' ]
    then
        echo "It is the weekend! Take it easy!"
    else
        echo "It is a weekday! Get to work!"
    fi
done

for num in ${numbers[@]}
do
	if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
	then
		echo $num
	fi
done
