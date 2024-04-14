FLAGS = -f bin -o

os:
	nasm boot.asm $(FLAGS) os.bin

qemu: os
	qemu-system-x86_64 -drive format=raw,file=os.bin