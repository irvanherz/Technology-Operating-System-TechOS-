+-----------------------------+
| Technology Operating System |
+-----------------------------+

Technology Operating System or TechOS for short is a 16-bit x86 operating system.
Copyright (C) 2016 TechOS Developers
Copyright (C) 2016 The Firefox Foundation

Aims:
 * To provide a small and fast hobby operating system with a variety of external programs.
 * Create a more up-to-date branch of MikeOS. 
	Binary compatibility will be maintained as much as possible while merging new features.
 * Have all my MikeOS application work without kernel mods.
 * Cannot run MikeOS kernel menu and run the application in File Manager. You must run using
	command line
 * Read-Only disk.

See the commandline guide in the 'doc' folder for information on the commands.
TechOS uses the MikeOS and TachyonOS API. Information can be found in 'doc/MikeOS' and 'doc/TachyonOS.

Building
========
Run the build script approprate for your operating system to create disk images, i.e. 'build-linux.sh'.
Linux, OSX and OpenBSD users must be logged into as root. 

Requirements:
 - NASM
 - ImDisk (Windows Only) (You must install the ImDisk first, later run it)
 - PartCopy (Windows Only)
 - genisoimage (Non-Windows Only but should be installed)

A disk image will be created in the 'disk_images'
folder. This script will compile the kernel and all assembly files in the 'programs' folder.
A floppy disk and ISO image will be create with the bootload, kernel, BASIC programs and binaries 
from 'programs' and all files from 'diskfiles'.


Running
=======
You can use the disk images generated to run MikeOS in an emulator (you may need to change the file
extention of the floppy disk image 'techos.flp' to .img or .ima to run in some emulators) or you
can write to a physical medium such as a floppy disk, CDROM or flash drive (via floppy emulation)
and boot from that. Keep in mind CD's are read only. Linux users with QEMU installed can simple run
the shell script 'test-linux.sh'.