boot:
	i686-elf-as boot/boot.s -o boot/boot.o

kernel:
	i686-elf-gcc -c kernel/kernel.c -o kernel/kernel.o -ffreestanding -O2 -Wall -Wextra

linker:
	i686-elf-gcc -T linker.ld -o leskix.bin -ffreestanding -O2 -nostdlib boot/boot.o kernel/kernel.o -lgcc

clean:
	rm boot/boot.o kernel/kernel.o
