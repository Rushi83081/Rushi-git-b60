🌟 Linux Interview Questions & Answers
1️⃣ What is an Operating System?

OS manages hardware, software, and resources.
It provides a user-friendly interface to interact with the system.

2️⃣ Difference Between Linux and Windows

Linux → open-source, free, secure, customizable.
Windows → proprietary, user-friendly, widely used.

3️⃣ What is Open Source?

Software with freely available source code to view, modify, and share.
Examples: Linux, Apache, MySQL.

4️⃣ Explain Linux Architecture

Layers: Hardware → Kernel → Shell → Libraries → Applications.
Kernel manages hardware, Shell is interface, Apps run on top.

5️⃣ What is Virtualization?

Allows creating multiple virtual machines on a single system.
Helps in resource optimization and isolation.

6️⃣ Hypervisor & Its Types

Manages virtual machines.
Type-1: bare-metal | Type-2: hosted on OS.

7️⃣ What is Shell? Types? How to Check Current Shell?

Command-line interface to communicate with OS.
Types: Bash, Sh, Zsh, Ksh | Check: echo $SHELL

8️⃣ What is Kernel? How to Check Kernel Info?

Core of OS, manages hardware, memory, and processes.
Command: uname -r

9️⃣ Command to Check OS Information
cat /etc/os-release


Displays OS name, version, and ID.

10️⃣ Command to Check Available Memory
free -h


Shows total, used, free memory in human-readable format.

11️⃣ Command to Check Storage/Disk Info
df -h   # filesystem usage  
lsblk   # disk & partitions


Displays disk size, usage, and mount points.

12️⃣ Command to Check Size of File/Directory
du -sh <file/dir>


Shows total size of file or folder.

13️⃣ Explain Vim Editor Modes

Normal → commands | Insert → typing | Command → save/quit.
Switch using i (insert) and : (command).

14️⃣ Difference Between adduser and useradd

adduser → interactive, user-friendly, auto home dir.
useradd → low-level, manual, more control.

15️⃣ What are Skeleton Files?

Files in /etc/skel/ copied to new user home directories.
Used to set initial user configuration.

16️⃣ Fields of /etc/passwd

username:x:UID:GID:comment:home:shell
Contains user info, home dir, default shell.

17️⃣ How to Check Which Groups a User Belongs To?
groups username  
id username


Shows all groups a user belongs to.

18️⃣ File Types in Linux

- Regular | d Directory | l Link | b Block | c Character | p Pipe | s Socket
Each type has a specific purpose.

19️⃣ Hard Link vs Soft Link

Hard → points to inode, file persists if original deleted.
Soft → points to file path, breaks if original deleted.

20️⃣ How to Change Ownership of File/Directory
chown user:group file/dir


Changes owner and group.

21️⃣ Set Permissions (Symbolic/Numeric)

Symbolic: chmod u+rwx file | Numeric: chmod 755 file
Controls read/write/execute for user, group, others.

22️⃣ What is umask?

Defines default permissions for new files/directories.
Check: umask

23️⃣ Default Permissions

Root → File 666, Dir 777 | Local User → File 666, Dir 777
Final permissions = default – umask.

24️⃣ Crontab Fields

Minute | Hour | Day | Month | Weekday | Command
Used for scheduled tasks.

25️⃣ top Command

Shows real-time CPU, memory, process usage.
Useful for monitoring system performance.

26️⃣ ps Command

Displays running processes snapshot.
Use ps aux or ps -ef.

27️⃣ grep Command

Searches text patterns in files.
Example: grep "word" file

28️⃣ How to Archive, Compress & Extract Files
tar -cvf file.tar dir/    # archive  
tar -czvf file.tar.gz dir/ # compress  
tar -xvf file.tar.gz       # extract


For backup and restore of files/directories.

29️⃣ OSI Model

7 layers: Physical → Data Link → Network → Transport → Session → Presentation → Application
Standard for network communication.

30️⃣ TCP vs UDP

TCP → reliable, connection-oriented, slower (HTTP, SSH)
UDP → fast, connectionless, no guarantee (DNS, streaming)

31️⃣ Basic Networking Commands

ip a, ping, ss, traceroute, nslookup, hostname
Check IP info, connectivity, sockets, DNS, system name.

32️⃣ IP Classes

Class A: 1–126 | B: 128–191 | C: 192–223 | D: multicast | E: experimental
Defines network and host bits.

33️⃣ Public vs Private IP

Public → global, internet-accessible
Private → local network, not globally unique
