#! /bin/bash -x
echo "Welcome Emplyees Wage Computation"

is_present=1
is_abscent=0
emphr=20
fulldayhr=8
parthr=8
monthday=20
emp=1

for(( i=0; i<5; i++ ))
do
	e=$(( RANDOM%2 ))

	if [ $(( e )) -eq $i ]
	then
		echo "Employee is present"
	else
		echo "Emplyee not present"
	fi
done

#daily employee wage
daily=$(( emphr*fulldayhr ))
echo " daily employee wage :$daily"

#part time employee and wage
dailypart=$(( emphr*parthr ))
echo "part time employee wage is : $dailypart"
#solving usig switch case statements

case $e in
	$fulldayhr)
		empfullhr=8
		;;
	$parthr)
		emphr=4
		;;
	*)
	emphrs=0
		;;
esac
salary=$(( $empfullhr*$emphr ))
echo $salary


#calculating wages for a month

wage_month=$(( $fulldayhr*$monthday*$emphr ))
echo "wage of a month is : $wage_month"

# calculate wages till a condition of total working hours or days is reached for a month
  while [ $emp -le $monthday ]
	do
		salary=$(( $emphr*$fulldayhr*$monthday ))
	(( emp++ ))
	done


#write a function to get work hours

function empfullhr(){

empfullhr=8
}

work_hour=8
echo $work_hour


#storing daily wage and total wage

daily_wage=$(( $emphr*$fulldayhr ))
echo $daily_wage

total_wage=$(( $emphr*$fulldayhr*$monthday ))
echo $total_wage

echo "${daily_wage[@]} ${total_wage[@]}"


#store the day and the daily wage along with the total wage

echo "monday"
echo " daily wage : ${daily_wage[@]}  total wage : ${total_wage[@]}"


