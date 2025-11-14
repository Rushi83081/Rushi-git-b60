🌟 Linux Interview Questions & Answers
1️⃣ What is an Operating System?

OS is software that manages hardware & software resources.
It provides a user interface to interact with the computer.

2️⃣ Difference Between Linux and Windows

Linux → open-source, secure, customizable, free.
Windows → proprietary, user-friendly, widely used for desktops.

3️⃣ What is Open Source?

Open-source software allows you to view, modify, and share code freely.
Example: Linux, Apache, MySQL.

4️⃣ Explain Linux Architecture

Layers: Hardware → Kernel → Shell → Libraries → Applications.
Kernel manages resources, Shell is the interface, Apps run on top.

5️⃣ What is Virtualization?

It allows creating multiple virtual machines on a single physical system.
Helps in resource optimization and isolation.

6️⃣ Hypervisor & Its Types

Hypervisor manages virtual machines.
Types: Type-1 (bare-metal), Type-2 (hosted on OS).

7️⃣ What is Shell? Types? Current Shell?

Shell is a command-line interface between user & kernel.
Types: Bash, Sh, Zsh, Ksh | Check: echo $SHELL

8️⃣ What is Kernel? Check Kernel Info

Kernel is the OS core, managing hardware, memory, and processes.
Check info: uname -r

9️⃣ Command to Check OS Info
cat /etc/os-release


Displays OS name, version, and ID.

🔟 Check Memory Available
free -h


Shows total, used, free memory in human-readable format.

1️⃣1️⃣ Check Disk/Storage Info
df -h   # Filesystem usage  
lsblk   # Disk & partitions  


Displays disk size, usage, and mount points.

1️⃣2️⃣ Check Size of File/Directory
du -sh <file/dir>


Shows total size of file or folder in human-readable format.

1️⃣3️⃣ Vim Editor Modes

Normal Mode → commands, Insert Mode → typing, Command Mode → save/quit.
Switch using i (insert) and : (command).

1️⃣4️⃣ adduser vs useradd

adduser → interactive & user-friendly, creates home dir automatically.
useradd → low-level, manual, more control.

1️⃣5️⃣ Skeleton Files

Default template files in /etc/skel/ copied to new user home directories.
Used to set initial configs for new users.

1️⃣6️⃣ /etc/passwd Fields

Format: username: x : UID : GID : comment : home : shell
Contains user info, home dir, default shell.

1️⃣7️⃣ Check User Groups
groups username  
id username


Shows all groups a user belongs to.

1️⃣8️⃣ File Types in Linux

- Regular, d Directory, l Link, b Block, c Character, p Pipe, s Socket.
Each type has a special purpose in Linux.

1️⃣9️⃣ Hard Link vs Soft Link

Hard link → points to inode, file persists even if original deleted.
Soft link → shortcut to file path, breaks if original deleted.

2️⃣0️⃣ Change Ownership
chown user:group file/dir


Changes owner and group of files or directories.

2️⃣1️⃣ Set Permissions (Symbolic/Numeric)

Symbolic: chmod u+rwx file | Numeric: chmod 755 file
Controls read/write/execute permissions for user, group, others.

2️⃣2️⃣ What is umask?

Defines default permissions for new files and directories.
Check current: umask

2️⃣3️⃣ Default Permissions

Root: File → 666, Dir → 777 | Local User: File → 666, Dir → 777
Actual permissions = default - umask.

2️⃣4️⃣ Crontab Fields

Minute | Hour | Day | Month | Weekday | Command
Used for scheduled tasks in Linux.

2️⃣5️⃣ top Command

Shows real-time CPU, memory, and process usage.
Useful for monitoring system performance.

2️⃣6️⃣ ps Command

Displays running processes snapshot.
Use ps aux or ps -ef for detailed info.

2️⃣7️⃣ grep Command

Searches text patterns in files.
Example: grep "word" file

2️⃣8️⃣ Archive, Compress & Extract
tar -cvf file.tar dir/    # archive  
tar -czvf file.tar.gz dir/  # compress  
tar -xvf file.tar.gz       # extract


Efficient backup and restore of files/directories.

2️⃣9️⃣ OSI Model

7-layer model: Physical → Data Link → Network → Transport → Session → Presentation → Application
Standard for network communication.

3️⃣0️⃣ TCP vs UDP

TCP → reliable, connection-oriented, slower (HTTP, SSH)
UDP → fast, connectionless, no guarantee (DNS, streaming)

3️⃣1️⃣ Basic Networking Commands

ip a → IP info, ping → connectivity, ss → sockets, traceroute → path, nslookup → DNS, hostname → system name

3️⃣2️⃣ IP Classes

Class A: 1–126 | B: 128–191 | C: 192–223 | D: multicast | E: experimental
Defines network & host bits.

3️⃣3️⃣ Public vs Private IP

Public IP → global, internet-accessible
Private IP → local network, not globally unique
