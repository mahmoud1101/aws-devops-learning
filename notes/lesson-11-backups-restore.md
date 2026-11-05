# Lesson 11: Backups and Restoring Files

## What I learned

- tar packages files into an archive.
- -c creates an archive; -z uses gzip compression; -f specifies the archive file.
- -t lists archive contents without extracting them.
- -x extracts an archive.
- -C selects the working directory.
- mktemp -d creates a new temporary directory.
- diff -r compares folder structures and file contents.

## Commands practised

tar -czf "$HOME/backup-lab/archives/logs-practice.tar.gz" -C "$HOME" logs-lab
tar -tzf "$HOME/backup-lab/archives/logs-practice.tar.gz"
RESTORE_DIR=$(mktemp -d "$HOME/backup-lab/restore.XXXXXX")
tar -xzf "$HOME/backup-lab/archives/logs-practice.tar.gz" -C "$RESTORE_DIR"
diff -r "$HOME/logs-lab" "$RESTORE_DIR/logs-lab"

## Result

The archive contained app.log, clean.log, and worker.log.
I restored it into a separate folder without changing the originals.
Verification succeeded: the restored file contents matched the originals.

## Safety

A backup should be tested by restoring it.
This practice archive is on the same filesystem as the originals.
Real backups also need separate, protected storage.
