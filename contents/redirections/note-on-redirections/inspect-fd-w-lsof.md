# inspect-fd-w-lsof

You can use the  command `lsof` (list open files) to inspect file descriptors associated with a Bash session. The command `lsof` by itself will list all the file opened. You need to apply filters to limit files that are associated  with the current Bash session: 

```
-p $BASHPID
```

And only for files that are associated with file descriptors that you are interested, `0`, `1`, and `2` (ie, `stdin`, `stdout`, and `stderr`):

```
-d 0,1,2
```

To apply both filters, you use the `-a` flag, which combines multiple filters using a logical AND:

```
lsof -ap $BASHPID -d 0,1,2
```
This gives you the following output:

```
COMMAND   PID       USER   FD   TYPE DEVICE  SIZE/OFF NODE NAME
bash    23293 apollotang    0u   CHR   16,2 0t7891436 1403 /dev/ttys002
bash    23293 apollotang    1u   CHR   16,2 0t7891436 1403 /dev/ttys002
bash    23293 apollotang    2u   CHR   16,2 0t7891436 1403 /dev/ttys002
```

Here is the descriptions for each column:

**COMMAND**

The name of the command or executable that opened the file.

**PID**

The Process ID of the process that has the file open.

**USER**

The owner's username that owns the process.

**FD**

The file descriptor number and type.  Common values include:
- 0, 1, 2: (Stdin, Stdout, and stderr)
- u: The file is open for both reading and writing.
- r: The file is open for reading only.
- w: The file is open for writing only.

**TYPE**

The type of the file or resource:
- CHR: Character device (e.g., terminals, serial ports).
- BLK: Block device (e.g., disk partitions like /dev/sda).
- REG: Regular file.
- DIR: Directory.
- FIFO: Named pipe.
- SOCK: Socket.


**DEVICE**

Identifies the device containing the file. It is written in the format:

```
<major device number>,<minor device number>
```

- Major device number specifies the type of device.
- Minor device number specifies the specific device within the type.

For the meaning of these numbers in Linux see [kernel.org/doc/Documentation/admin-guide/devices.txt](https://www.kernel.org/doc/Documentation/admin-guide/devices.txt). For osx please refer to Apple's developer documentation.

Note that when looking up the meaning of a major device number, you need to look up the type in the TYPE column because some major device numbers of different types share the same major device number.  

Also see:  [What do device type numbers mean? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/498932/what-do-device-type-numbers-mean) 

**SIZE/OFF**

It shows either the File size (for regular files) or the Offset within the file (for files being written to or read from).
Example: 0t0 (size is 0 bytes and offset is 0).

**NODE**

The inode number of the file on the device. This uniquely identifies the file within its filesystem.

**NAME**

The name of the file or resource being accessed.

`+f a` turn on additional information. 

