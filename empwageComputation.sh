#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program."

isPresent=1;
isAbsent=0;
isPartTime=2;
wagePerHr=20;
fullDay=8;
dailyPayment=0;
checkRandom=$((RANDOM%2))

case $checkRandom in
			$isPresent)
					dailyPayment=$(($wagePerHr*$fullDay))
					echo "Daily Payment is: $dailyPayment"
						;;
				$isPartTime)
					dailyPayment=$(($wagePerHr*$fullDay*$isPartTime))
					echo "Daily PAyment is: $dailyPayment"
						;;
				$isAbsent)
					echo "Daily Payment is: $dailyPayment"
						;;
esac
