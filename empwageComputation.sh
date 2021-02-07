#!/bin/bash -x

echo "Welcome to Employee Wage  Computation Program."

isFullTime=1;
isPartTime=2;
maxHrsInMonth=100;
maxWorkingDays=20;
empRatePerHr=20;

totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $maxHrsInMonth &&
			$totalWorkingDays -lt $maxWorkingDays ]]
do
		((totalWorkingDays++))
		empCheck=$((RANDOM%3));
			case $empCheck in
				$isFullTime)
					empHrs=8
						;;
				$isPartTime)
					empHrs=4
						;;
				*)
					empHrs=2
						;;
			esac
			totalEmpHrs=$(($totalEmpHrs*$empHrs))
done
		totalSalary=$(($totalEmpHrs*empRatePerHr))
