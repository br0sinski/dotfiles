#!/bin/bash


# Get the day of the week, day of the month, month, and year
day_of_week=$(date +"%a")
day_of_month=$(date +"%d")
month=$(date +"%b")
year=$(date +"%Y")

# Remove leading zero from the day of the month
day_of_month=$(echo $day_of_month | sed 's/^0*//')

# Determine the ordinal suffix
if [[ $day_of_month -ge 11 && $day_of_month -le 13 ]]; then
    suffix="th"
else
    case $((day_of_month % 10)) in
        1) suffix="st" ;;
        2) suffix="nd" ;;
        3) suffix="rd" ;;
        *) suffix="th" ;;
    esac
fi

# Output the formatted date
echo "${day_of_month}${suffix} $month $year"
