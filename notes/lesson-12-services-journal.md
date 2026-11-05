# Lesson 12: Linux Services and Service Logs

## What I learned

- systemd manages Linux services.
- systemctl inspects service status.
- journalctl reads journal logs.
- logger writes a message to the system logging service.
- A service can be running while its logs contain warnings.
- No failed units does not mean every warning is resolved.

## Commands practised

ps -p 1 -o comm=
systemctl is-system-running
systemctl list-units --type=service --state=running --no-pager
systemctl status systemd-journald --no-pager --lines=5
journalctl -b -u systemd-journald.service -n 20 --no-pager --full
systemctl --failed --no-pager
logger -t aws-devops-learning "Lesson 12: this is a practice journal message."
journalctl -b -t aws-devops-learning -n 5 --no-pager --full

## Results

- systemd reported running.
- systemd-journald was active and running.
- No failed units were listed.
- The journal contained clock and journal-file rotation warnings.
- My tagged practice message was recorded and retrieved successfully.

## Safety

I did not stop services, delete logs, or change system time settings.
