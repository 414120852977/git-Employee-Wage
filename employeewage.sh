#! /bin/bash -x
echo "Welcome Emplyees Wage Computation"

is_present=1
is_abscent=0
emphr=20
fulldayhr=8
parthr=8
monthday=20

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
