# Lesson 8: Pipes and Output Redirection

## Symbols

- | sends one command output to another command.
- > saves output to a file and overwrites existing contents.
- >> appends output without replacing existing contents.
- < supplies a file as input to a command.

## Commands practised

- grep ERROR ~/logs-lab/app.log | wc -l counted matching error lines.
- grep -E "WARNING|ERROR" ~/logs-lab/app.log > ~/output-lab/report.txt saved the warning and error.
- echo "Review complete: these are fictional practice messages." >> ~/output-lab/report.txt appended a review message.
- cat ~/output-lab/report.txt displayed the report.
- wc -l < ~/output-lab/report.txt counted the report lines.

## Results

The practice log contained one error. The saved report contained three lines after appending the review message.

## Safety

Use > carefully because it replaces existing file contents. These exercises used only practice files.
