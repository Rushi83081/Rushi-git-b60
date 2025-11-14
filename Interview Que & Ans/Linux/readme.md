🌟 Linux Interview Questions & Answers
# -------------------------------------------------------------------------------------------
1️⃣ What is an Operating System?

💡 Answer: OS manages hardware, software, and resources. <br>
It provides a user-friendly interface to interact with the system.
-------------------------------------------------------------------------------------------
2️⃣ Difference Between Linux and Windows

💡 Answer: Linux → open-source, free, secure, customizable. <br>
Windows → proprietary, user-friendly, widely used.
-------------------------------------------------------------------------------------------
3️⃣ What is Open Source?

💡 Answer: Software with freely available source code to view, modify, and share. <br>
Examples: Linux, Apache, MySQL.

4️⃣ Explain Linux Architecture

💡 Answer: Layers: Hardware → Kernel → Shell → Libraries → Applications. <br>
Kernel manages hardware, Shell is interface, Apps run on top.

5️⃣ What is Virtualization?

💡 Answer: Allows creating multiple virtual machines on a single system. <br>
Helps in resource optimization and isolation.

6️⃣ Hypervisor & Its Types

💡 Answer: Manages virtual machines. <br>
Type-1: bare-metal | Type-2: hosted on OS.

7️⃣ What is Shell? Types? How to Check Current Shell?

💡 Answer: Command-line interface to communicate with OS. <br>
Types: Bash, Sh, Zsh, Ksh | Check: echo $SHELL

8️⃣ What is Kernel? How to Check Kernel Info?

💡 Answer: Core of OS, manages hardware, memory, and processes. <br>
Command: uname -r

9️⃣ Command to Check OS Information

💡 Answer: Use the command:

cat /etc/os-release


Displays OS name, version, and ID.

10️⃣ Command to Check Available Memory

💡 Answer: Use the command:

free -h


Shows total, used, and free memory in human-readable format.

11️⃣ Command to Check Storage/Disk Info

💡 Answer: Commands:

df -h   # Filesystem usage  
lsblk   # Disk & partitions


Shows disk size, usage, and mount points.

12️⃣ Command to Check Size of File/Directory

💡 Answer: Use:

du -sh <file/dir>


Displays total size in human-readable format.

13️⃣ Explain Vim Editor Modes

💡 Answer: Normal → commands | Insert → typing | Command → save/quit. <br>
Switch modes using i (insert) and : (command).

14️⃣ Difference Between adduser and useradd

💡 Answer: adduser → interactive, user-friendly, auto home directory. <br>
useradd → low-level, manual, gives more control.

15️⃣ What are Skeleton Files?

💡 Answer: Files in /etc/skel/ copied to new user home directories. <br>
Used to set initial configuration for new users.

16️⃣ Fields of /etc/passwd

💡 Answer: Format: username:x:UID:GID:comment:home:shell <br>
Contains user info, home directory, and default shell.

17️⃣ How to Check Which Groups a User Belongs To?

💡 Answer: Use commands:

groups username  
id username


Shows all groups a user belongs to.

18️⃣ File Types in Linux

💡 Answer: - Regular | d Directory | l Link | b Block | c Character | p Pipe | s Socket <br>
Each type has a specific purpose.

19️⃣ Hard Link vs Soft Link

💡 Answer: Hard → points to inode, file persists if original deleted. <br>
Soft → points to file path, breaks if original deleted.

20️⃣ How to Change Ownership of File/Directory

💡 Answer: Use:

chown user:group file/dir


Changes owner and group of file/directory.

21️⃣ Set Permissions (Symbolic/Numeric)

💡 Answer: Symbolic: chmod u+rwx file | Numeric: chmod 755 file <br>
Controls read, write, execute permissions for user, group, others.

22️⃣ What is umask?

💡 Answer: Sets default permissions for new files and directories. <br>
Check current umask with: umask

23️⃣ Default Permissions

💡 Answer: Root → File 666, Dir 777 | Local User → File 666, Dir 777 <br>
Final permissions = default – umask.

24️⃣ Crontab Fields

💡 Answer: Minute | Hour | Day | Month | Weekday | Command <br>
Used for scheduled tasks in Linux.

25️⃣ top Command

💡 Answer: Shows real-time CPU, memory, and process usage. <br>
Useful for system performance monitoring.

26️⃣ ps Command

💡 Answer: Displays running processes snapshot. <br>
Use ps aux or ps -ef for detailed info.

27️⃣ grep Command

💡 Answer: Searches text patterns in files. <br>
Example: grep "word" file

28️⃣ How to Archive, Compress & Extract Files

💡 Answer: Commands:

tar -cvf file.tar dir/    # archive  
tar -czvf file.tar.gz dir/ # compress  
tar -xvf file.tar.gz       # extract


Used for backup and restore.

29️⃣ OSI Model

💡 Answer: 7 layers: Physical → Data Link → Network → Transport → Session → Presentation → Application <br>
Standard model for network communication.

30️⃣ TCP vs UDP

💡 Answer: TCP → reliable, connection-oriented, slower (HTTP, SSH) <br>
UDP → fast, connectionless, no guarantee (DNS, streaming)

31️⃣ Basic Networking Commands

💡 Answer: ip a, ping, ss, traceroute, nslookup, hostname <br>
Check IP info, connectivity, sockets, DNS, system name.

32️⃣ IP Classes

💡 Answer: Class A: 1–126 | B: 128–191 | C: 192–223 | D: multicast | E: experimental <br>
Defines network and host bits.

33️⃣ Public vs Private IP

💡 Answer: Public → global, internet-accessible <br>
Private → local network, not globally unique
