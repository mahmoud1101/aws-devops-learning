# Lesson 5: Linux Processes and System Monitoring

## Commands practised

- ps -u "$USER" -o pid,comm lists processes owned by my user.
- free -h shows memory usage in readable units.
- df -h / shows disk usage for the root filesystem.

## Background process practice

1. sleep 300 & starts a waiting program in the background.
2. LAB_PID=$! stores the process ID of the last background program.
3. ps -p "$LAB_PID" -o pid,comm checks that process.
4. kill "$LAB_PID" requests that the practice process stop.
5. Run the same ps command again to check that the process is gone.

## Important points

- PID means process ID.
- Linux can reclaim cached memory when programs need it.
- Available memory is more useful than free memory alone.
- WSL filesystem capacity is not the same as Windows drive free space.
- Only stop processes I understand and am authorized to manage.
