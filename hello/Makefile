program = hello_world
object_file = hello_world.o
nasm_arch = -f elf32
ld_arch = -m elf_i386

all: hello_world.o 
	ld $(ld_arch) -o $(program) hello_world.o

hello_world.o: hello_world.asm
	nasm $(nasm_arch) -o $(object_file) hello_world.asm

clean:
	rm hello_world.o
	rm $(program)

