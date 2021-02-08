#!/bin/bash -x

echo "Welcome to Employee Wage  Computation Program."

isPresent=1;
isAbsent=0;
isFullTime=1;
isPartTime=0;
wagesPerHr=20;
fullDay=8;
partTimeHr=4;
dailyPayment=0;
workingDay=20;
workingHrsLimit=100;


workedHrs=0;
salary=0;
workedDays=0;
dailyPayment=0;

function getWorkHrs(){
		case $1 in
				$isfullTime)
						workingHrs=$fullDay
							;;
				$isPartTime)
						workingHrs=$partTimeHrs
							;;
				*)
						workingHrs=0
							;;
		esac
		echo $workingHrs
}

while [[ $workedDays -lt $workingDay && $workedHrs -lt $workingHrsLimit ]]
do
		checkRandom=$((RANDOM%2))
			case $checkRandom in
							$isPresent)
									echo "Employee is Present."
									hrsWorked=$( getWorkHrs $((RANDOM%2)) )
									workedHrs=$(($workedHrs + $hrsWorked))
									dailyPayment=$(($wagesPerHr + $hrsWorked))
									((workedDays++))
										;;
							$isAbsent)
									echo "Employee is Absent."
									dailyPayment=0
										;;
							*)
									echo "Invalid Inputs."

										::
			esac
done

echo "Salary = $salary"
