# Lesson 4: Linux Users, Groups, and sudo

## What I learned

- whoami shows the current user.
- id shows user ID, group ID, and group memberships.
- groups lists my group memberships.
- sudo whoami runs whoami as root. My normal user remains nahmo.
- chgrp changes a file or folder group.
- chmod changes access permissions.

## Group practice

- Created ~/group-practice/team.txt.
- Used chgrp users on the practice folder and file.
- Used chmod 770 on the folder: owner and group can list, enter, and change its contents.
- Used chmod 660 on the file: owner and group can read and write.
- Other users have no access.

## Terminal reminder

Open Ubuntu with wsl -d Ubuntu-24.04 from Windows PowerShell, not from inside Ubuntu.
