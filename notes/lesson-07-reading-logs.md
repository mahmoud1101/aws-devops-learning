# Lesson 7: Reading Logs and Finding Errors

A log records application activity and helps with troubleshooting.

## Commands practised

- cat ~/logs-lab/app.log displays the entire log.
- tail -n 2 ~/logs-lab/app.log displays the last two lines.
- grep ERROR ~/logs-lab/app.log finds error messages.
- grep -n ERROR ~/logs-lab/app.log includes matching line numbers.
- grep -nE "WARNING|ERROR" ~/logs-lab/app.log finds warnings or errors.
- grep -n -C 1 ERROR ~/logs-lab/app.log shows one line before and after each match.

## Results

I found a warning on line 3 and an error on line 4. These were fictional practice messages, not real computer problems.
With grep context output, a colon marks a matching line and a hyphen marks a surrounding line.
