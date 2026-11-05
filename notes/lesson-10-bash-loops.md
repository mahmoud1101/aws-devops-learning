# Lesson 10: Bash Loops

## What I learned

- A for loop repeats commands for each item in a list.
- do starts the repeated commands; done ends the loop.
- *.log matches filenames ending in .log.
- Quote variable expansions to protect paths containing spaces.
- continue skips an item and moves to the next iteration.
- ${1:-default} uses the first argument, or a default value if it is empty or missing.

## My script

linux-practice/scripts/check-all-logs.sh checks each .log file using check-log.sh.
It accepts a log folder as an argument and defaults to ~/logs-lab.

## Tests completed

- app.log: one fictional error line.
- clean.log: no errors.
- worker.log: two fictional error lines.
- Empty folder: No .log files found.

## Run the script

bash linux-practice/scripts/check-all-logs.sh
bash linux-practice/scripts/check-all-logs.sh ~/bash-lab/empty-logs
