#! /bin/bash -x
echo "Welcome Emplyees Wage Computation"

is_present=1
is_abscent=0
emphr=20
fulldayhr=8

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