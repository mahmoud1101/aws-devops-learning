# Lesson 2: Linux Permissions

Linux permissions control who can read, write, or enter files and folders.

## Permission numbers
- 7 = read + write + execute
- 6 = read + write
- 5 = read + execute
- 4 = read only
- 0 = no access

## My practice

### Private folder
```text
chmod 700 ~/permissions-lab/private


chmod 644 ~/permissions-lab/private/secret.txt

chmod 755 ~/permissions-lab/shared

chmod 664 ~/permissions-lab/shared/team.txt

```

Only I can read, write, and enter this folder.

### Private file
```text
chmod 644 ~/permissions-lab/private/secret.txt
```

I can read and write the file. Other users can read it, but they cannot access it because the parent folder is private.

### Shared folder
```text
chmod 755 ~/permissions-lab/shared
```

I can manage the folder. Other users can read and enter it.

### Shared file
```text
chmod 664 ~/permissions-lab/shared/team.txt
```

The owner and group can read and write the file. Other users can read it.

