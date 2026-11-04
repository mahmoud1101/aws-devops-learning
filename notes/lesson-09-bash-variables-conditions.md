# Lesson 9: Bash Variables and Conditions

## What I learned

- Variables store values. Do not put spaces around the assignment = sign.
- Quote variable expansions to protect paths containing spaces.
- $(command) captures command output.
- $1 is the first argument supplied to a script.
- if, then, else, and fi let a script choose what to do.
- -gt compares numbers: greater than.
- $? contains the exit status of the previous command.
- grep returns 0 for matches, 1 for no matches, and greater than 1 for errors.

## My script

linux-practice/scripts/check-log.sh checks a readable file for lines containing ERROR.

## Tests completed

- app.log: found one fictional error line.
- clean.log: reported no errors.

## Run the script

bash linux-practice/scripts/check-log.sh ~/logs-lab/app.log
