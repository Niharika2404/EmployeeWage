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
salary=0;
workingHrsLimit=100;
workedHrs=0;

for((day=1; day<=$workingDay; day++))
do
	checkRandom=$((RANDOM%2))
	case $checkRandom in
			$isPresent)
					echo "Employee is Prrsent."
					jobtype=$((RANDOM%2))
					case $jobType in
								$isFullTime)
										workedHrs=$(($workedHrs + $fullDay))
										dailyPayment=$(($wagesPerHr * $fullDay))
										;;
								$isPartTime)
										workedHrs=$(($workedHrs + $partTimeHr))
										dailyPayment=$(($wagesPerHr * $partTimeHr))
										;;
								*)
										echo "Invalid job type"
					esac
					;;
			$isAbsent)
					echo "Employee is absent."
					;;
			*)
					echo "Invalid inputs."
					;;
			esac
			salary=$(($dailyPayment+$salary))
			if [ $workedHrs -ge $workingHrsLimit ]
			then
				break
			fi
done

echo "Salary = $salary"
